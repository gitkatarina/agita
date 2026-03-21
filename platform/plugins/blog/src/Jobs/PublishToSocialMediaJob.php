<?php

namespace Botble\Blog\Jobs;

use Botble\Blog\Models\Post;
use Botble\Blog\Models\PostSocialPublication;
use Botble\Blog\Services\SocialMedia\FacebookPublisher;
use Botble\Blog\Services\SocialMedia\InstagramPublisher;
use Botble\Blog\Services\SocialMedia\LinkedInPublisher;
use Botble\Blog\Services\SocialMedia\SocialMediaPublisher;
use Botble\Blog\Services\SocialMedia\TwitterPublisher;
use Exception;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Log;
use Throwable;

class PublishToSocialMediaJob implements ShouldQueue
{
    use Dispatchable;
    use InteractsWithQueue;
    use Queueable;
    use SerializesModels;

    public int $tries = 3;

    public int $backoff = 60;

    public function __construct(
        public Post $post,
        public string $platform,
    ) {
    }

    public function handle(): void
    {
        $publisher = $this->resolvePublisher();

        if (! $publisher->isConfigured()) {
            Log::warning("Social media publisher for {$this->platform} is not configured, skipping.");

            return;
        }

        $publication = PostSocialPublication::query()->create([
            'post_id' => $this->post->getKey(),
            'platform' => $this->platform,
            'status' => 'pending',
        ]);

        try {
            $result = $publisher->publish($this->post);

            $publication->update([
                'status' => 'success',
                'external_id' => $result['external_id'] ?? null,
                'published_at' => now(),
            ]);
        } catch (Exception $e) {
            $publication->update([
                'status' => 'failed',
                'error_message' => $e->getMessage(),
            ]);

            throw $e;
        }
    }

    public function failed(Throwable $exception): void
    {
        Log::error("Social media publication to {$this->platform} failed permanently for post {$this->post->getKey()}", [
            'error' => $exception->getMessage(),
        ]);
    }

    protected function resolvePublisher(): SocialMediaPublisher
    {
        return match ($this->platform) {
            'facebook' => new FacebookPublisher(),
            'twitter' => new TwitterPublisher(),
            'linkedin' => new LinkedInPublisher(),
            'instagram' => new InstagramPublisher(),
            default => throw new \InvalidArgumentException("Unknown platform: {$this->platform}"),
        };
    }
}
