<?php

namespace Botble\Blog\Services\SocialMedia;

use Botble\Blog\Models\Post;

interface SocialMediaPublisher
{
    /**
     * @return array{external_id: string}
     */
    public function publish(Post $post): array;

    public function isConfigured(): bool;

    public function getPlatformName(): string;
}
