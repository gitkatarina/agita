<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Theme\Database\Traits\HasThemeOptionSeeder;

class ThemeOptionSeeder extends BaseSeeder
{
    use HasThemeOptionSeeder;

    public function run(): void
    {
        $this->uploadFiles('general');

        $options = [
            'cookie_consent_message' => 'Your experience on this site will be improved by allowing cookies ',
            'cookie_consent_learn_more_url' => '/cookie-policy',
            'cookie_consent_learn_more_text' => 'Cookie Policy',
            'social_links' => [
                [
                    ['key' => 'name', 'value' => 'Facebook'],
                    ['key' => 'icon', 'value' => 'ti ti-brand-facebook'],
                    ['key' => 'url', 'value' => 'https://www.facebook.com'],
                    ['key' => 'icon_image', 'value' => null],
                    ['key' => 'color', 'value' => '#fff'],
                    ['key' => 'background-color', 'value' => '#3b5999'],
                ],
                [
                    ['key' => 'name', 'value' => 'X (Twitter)'],
                    ['key' => 'icon', 'value' => 'ti ti-brand-x'],
                    ['key' => 'url', 'value' => 'https://x.com'],
                    ['key' => 'icon_image', 'value' => null],
                    ['key' => 'color', 'value' => '#fff'],
                    ['key' => 'background-color', 'value' => '#000'],
                ],
                [
                    ['key' => 'name', 'value' => 'linkedin'],
                    ['key' => 'icon', 'value' => 'ti ti-brand-linkedin'],
                    ['key' => 'url', 'value' => 'https://www.linkedin.com'],
                    ['key' => 'icon_image', 'value' => null],
                    ['key' => 'color', 'value' => '#fff'],
                    ['key' => 'background-color', 'value' => '#0a66c2'],
                ],
            ],
            'social_sharing' => [
                [
                    ['key' => 'social', 'value' => 'facebook'],
                    ['key' => 'icon', 'value' => 'ti ti-brand-facebook'],
                    ['key' => 'icon_image', 'value' => null],
                    ['key' => 'color', 'value' => '#fff'],
                    ['key' => 'background_color', 'value' => '#3b5999'],
                ],
                [
                    ['key' => 'social', 'value' => 'x'],
                    ['key' => 'icon', 'value' => 'ti ti-brand-x'],
                    ['key' => 'icon_image', 'value' => null],
                    ['key' => 'color', 'value' => '#fff'],
                    ['key' => 'background_color', 'value' => '#000'],
                ],
                [
                    ['key' => 'social', 'value' => 'linkedin'],
                    ['key' => 'icon', 'value' => 'ti ti-brand-linkedin'],
                    ['key' => 'icon_image', 'value' => null],
                    ['key' => 'color', 'value' => '#fff'],
                    ['key' => 'background_color', 'value' => '#0a66c2'],
                ],
            ],
            'site_title' => 'Agita News - Political & Social Issues Reporting',
            'seo_description' => 'Agita News is a citizen journalism platform for political and social reporting. Submit news anonymously or with your name. Holding power to account, one story at a time.',
            'copyright' => '©%Y Agita News | Independent Citizen Journalism',
            'designed_by' => 'Agita News | All rights reserved.',
            'favicon' => 'general/favicon.png',
            'site_description' => 'Citizen journalism for a more just society. Report what matters — anonymously or signed.',
            'address' => 'Editorial contact available via secure tip line',
            'facebook' => 'https://facebook.com',
            'twitter' => 'https://twitter.com',
            'youtube' => 'https://youtube.com',
            'homepage_id' => '1',
            'blog_page_id' => '4',
            'logo' => 'general/logo.png',
            'action_button_text' => 'Submit News',
            'action_button_url' => '/contact',
            'vi-primary_font' => 'Roboto',
        ];

        $this->createThemeOptions($options);
    }
}
