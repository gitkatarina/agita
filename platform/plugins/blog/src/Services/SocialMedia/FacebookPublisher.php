<?php

namespace Botble\Blog\Services\SocialMedia;

use Botble\Blog\Models\Post;
use Illuminate\Support\Facades\Http;

class FacebookPublisher implements SocialMediaPublisher
{
    public function publish(Post $post): array
    {
        $pageId = setting('social_facebook_page_id');
        $accessToken = setting('social_facebook_access_token');

        $response = Http::post("https://graph.facebook.com/v18.0/{$pageId}/feed", [
            'message' => $post->name . "\n\n" . $post->description,
            'link' => $post->url,
            'access_token' => $accessToken,
        ]);

        $response->throw();

        return ['external_id' => $response->json('id', '')];
    }

    public function isConfigured(): bool
    {
        return setting('social_facebook_enabled')
            && setting('social_facebook_page_id')
            && setting('social_facebook_access_token');
    }

    public function getPlatformName(): string
    {
        return 'facebook';
    }
}
