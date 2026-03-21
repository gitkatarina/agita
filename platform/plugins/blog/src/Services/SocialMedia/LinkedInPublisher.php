<?php

namespace Botble\Blog\Services\SocialMedia;

use Botble\Blog\Models\Post;
use Illuminate\Support\Facades\Http;

class LinkedInPublisher implements SocialMediaPublisher
{
    public function publish(Post $post): array
    {
        $accessToken = setting('social_linkedin_access_token');
        $organizationId = setting('social_linkedin_organization_id');

        $response = Http::withToken($accessToken)
            ->withHeaders([
                'X-Restli-Protocol-Version' => '2.0.0',
            ])
            ->post('https://api.linkedin.com/v2/ugcPosts', [
                'author' => "urn:li:organization:{$organizationId}",
                'lifecycleState' => 'PUBLISHED',
                'specificContent' => [
                    'com.linkedin.ugc.ShareContent' => [
                        'shareCommentary' => [
                            'text' => $post->name . "\n\n" . $post->description,
                        ],
                        'shareMediaCategory' => 'ARTICLE',
                        'media' => [
                            [
                                'status' => 'READY',
                                'originalUrl' => $post->url,
                            ],
                        ],
                    ],
                ],
                'visibility' => [
                    'com.linkedin.ugc.MemberNetworkVisibility' => 'PUBLIC',
                ],
            ]);

        $response->throw();

        return ['external_id' => $response->json('id', '')];
    }

    public function isConfigured(): bool
    {
        return setting('social_linkedin_enabled')
            && setting('social_linkedin_access_token')
            && setting('social_linkedin_organization_id');
    }

    public function getPlatformName(): string
    {
        return 'linkedin';
    }
}
