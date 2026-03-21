<?php

namespace Botble\Blog\Services\SocialMedia;

use Botble\Blog\Models\Post;
use Illuminate\Support\Facades\Http;

class TwitterPublisher implements SocialMediaPublisher
{
    public function publish(Post $post): array
    {
        $response = Http::withHeaders([
            'Content-Type' => 'application/json',
        ])
            ->withToken($this->getBearerToken())
            ->post('https://api.twitter.com/2/tweets', [
                'text' => $post->name . ' ' . $post->url,
            ]);

        $response->throw();

        return ['external_id' => $response->json('data.id', '')];
    }

    public function isConfigured(): bool
    {
        return setting('social_twitter_enabled')
            && setting('social_twitter_api_key')
            && setting('social_twitter_api_secret')
            && setting('social_twitter_access_token')
            && setting('social_twitter_access_token_secret');
    }

    public function getPlatformName(): string
    {
        return 'twitter';
    }

    protected function getBearerToken(): string
    {
        $apiKey = setting('social_twitter_api_key');
        $apiSecret = setting('social_twitter_api_secret');

        $response = Http::asForm()
            ->withBasicAuth($apiKey, $apiSecret)
            ->post('https://api.twitter.com/oauth2/token', [
                'grant_type' => 'client_credentials',
            ]);

        $response->throw();

        return $response->json('access_token', '');
    }
}
