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
            'cookie_consent_message' => 'A sua experiência neste site será melhorada ao permitir cookies',
            'cookie_consent_learn_more_url' => '/cookie-policy',
            'cookie_consent_learn_more_text' => 'Política de Cookies',
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
            'site_title' => 'Agita News - Jornalismo Político e Social',
            'seo_description' => 'Agita News é uma plataforma de jornalismo cidadão para reportagem política e social. Submeta notícias anonimamente ou com o seu nome. A responsabilizar o poder, uma história de cada vez.',
            'copyright' => '©%Y Agita News | Jornalismo Cidadão Independente',
            'designed_by' => 'Agita News | Todos os direitos reservados.',
            'favicon' => 'general/favicon.png',
            'site_description' => 'Jornalismo cidadão para uma sociedade mais justa. Reporte o que importa — anonimamente ou com o seu nome.',
            'address' => 'Contacto editorial disponível através da linha de denúncia segura',
            'facebook' => 'https://facebook.com',
            'twitter' => 'https://twitter.com',
            'youtube' => 'https://youtube.com',
            'homepage_id' => '1',
            'blog_page_id' => '4',
            'logo' => 'general/logo.png',
            'action_button_text' => 'Submeter Notícia',
            'action_button_url' => '/contact',
            'vi-primary_font' => 'Roboto',
        ];

        $this->createThemeOptions($options);
    }
}
