<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Theme\Facades\Theme;
use Botble\Widget\Models\Widget;

class WidgetSeeder extends BaseSeeder
{
    public function run(): void
    {
        Widget::query()->truncate();

        $data = [
            [
                'widget_id' => 'CustomMenuWidget',
                'sidebar_id' => 'footer_sidebar',
                'position' => 0,
                'data' => [
                    'id' => 'CustomMenuWidget',
                    'name' => 'Ligações Rápidas',
                    'menu_id' => 'quick-links',
                ],
            ],
            [
                'widget_id' => 'TagsWidget',
                'sidebar_id' => 'footer_sidebar',
                'position' => 1,
                'data' => [
                    'id' => 'TagsWidget',
                    'name' => 'Etiquetas',
                    'number_display' => 5,
                ],
            ],
            [
                'widget_id' => 'NewsletterWidget',
                'sidebar_id' => 'footer_sidebar',
                'position' => 2,
                'data' => [
                    'id' => 'NewsletterWidget',
                    'name' => 'Boletim Informativo',
                ],
            ],
            [
                'widget_id' => 'AboutWidget',
                'sidebar_id' => 'primary_sidebar',
                'position' => 0,
                'data' => [
                    'id' => 'AboutWidget',
                    'name' => 'Olá, sou o Steven',
                    'description' => 'Olá, sou o Steven, natural de Lisboa, que abandonei a minha carreira na gestão de patrimónios há seis anos para embarcar numa jornada de descoberta pessoal que mudaria o rumo da minha vida para sempre.',
                    'image' => 'general/author.jpg',
                ],
            ],
            [
                'widget_id' => 'PopularPostsWidget',
                'sidebar_id' => 'primary_sidebar',
                'position' => 1,
                'data' => [
                    'id' => 'PopularPostsWidget',
                    'name' => 'Mais populares',
                    'number_display' => 5,
                ],
            ],
            [
                'widget_id' => 'GalleriesWidget',
                'sidebar_id' => 'primary_sidebar',
                'position' => 2,
                'data' => [
                    'id' => 'GalleriesWidget',
                    'name' => 'Galerias',
                    'number_display' => 6,
                ],
            ],
        ];

        $theme = Theme::getThemeName();

        foreach ($data as $item) {
            $item['theme'] = $theme;
            Widget::query()->create($item);
        }
    }
}
