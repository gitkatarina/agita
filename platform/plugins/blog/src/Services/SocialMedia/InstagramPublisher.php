<?php

namespace Botble\Blog\Services\SocialMedia;

use Botble\Blog\Models\Post;
use Illuminate\Support\Facades\Http;

class InstagramPublisher implements SocialMediaPublisher
{
    public function publish(Post $post): array
    {
        $userId = setting('social_instagram_user_id');
        $accessToken = setting('social_instagram_access_token');

        $imageUrl = $post->image ? url($post->image) : null;

        if (! $imageUrl) {
            throw new \RuntimeException('Instagram requires an image to publish. Post has no image set.');
        }

        $containerResponse = Http::post("https://graph.facebook.com/v18.0/{$userId}/media", [
            'image_url' => $imageUrl,
            'caption' => $post->name . "\n\n" . $post->description . "\n\n" . $post->url,
            'access_token' => $accessToken,
        ]);

        $containerResponse->throw();

        $containerId = $containerResponse->json('id');

        $publishResponse = Http::post("https://graph.facebook.com/v18.0/{$userId}/media_publish", [
            'creation_id' => $containerId,
            'access_token' => $accessToken,
        ]);

        $publishResponse->throw();

        return ['external_id' => $publishResponse->json('id', '')];
    }

    public function isConfigured(): bool
    {
        return setting('social_instagram_enabled')
            && setting('social_instagram_user_id')
            && setting('social_instagram_access_token');
    }

    public function getPlatformName(): string
    {
        return 'instagram';
    }
}
