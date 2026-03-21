<?php

namespace Botble\Blog\Http\Requests\Settings;

use Botble\Base\Rules\OnOffRule;
use Botble\Support\Http\Requests\Request;

class SocialMediaSettingRequest extends Request
{
    public function rules(): array
    {
        return [
            'social_facebook_enabled' => new OnOffRule(),
            'social_facebook_page_id' => ['nullable', 'string', 'max:255'],
            'social_facebook_access_token' => ['nullable', 'string', 'max:500'],

            'social_twitter_enabled' => new OnOffRule(),
            'social_twitter_api_key' => ['nullable', 'string', 'max:255'],
            'social_twitter_api_secret' => ['nullable', 'string', 'max:255'],
            'social_twitter_access_token' => ['nullable', 'string', 'max:255'],
            'social_twitter_access_token_secret' => ['nullable', 'string', 'max:255'],

            'social_linkedin_enabled' => new OnOffRule(),
            'social_linkedin_access_token' => ['nullable', 'string', 'max:500'],
            'social_linkedin_organization_id' => ['nullable', 'string', 'max:255'],

            'social_instagram_enabled' => new OnOffRule(),
            'social_instagram_user_id' => ['nullable', 'string', 'max:255'],
            'social_instagram_access_token' => ['nullable', 'string', 'max:500'],
        ];
    }
}
