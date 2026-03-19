<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Blog\Models\Category;
use Botble\Menu\Database\Traits\HasMenuSeeder;
use Botble\Page\Models\Page;

class MenuSeeder extends BaseSeeder
{
    use HasMenuSeeder;

    public function run(): void
    {
        $data = [
            [
                'name' => 'Menu Principal',
                'slug' => 'main-menu',
                'location' => 'main-menu',
                'items' => [
                    [
                        'title' => 'Início',
                        'url' => '/',
                        'icon_font' => 'elegant-icon icon_house_alt mr-5',
                        'children' => [
                            [
                                'title' => 'Início padrão',
                                'url' => '/',
                            ],
                            [
                                'title' => 'Início 2',
                                'reference_id' => 2,
                                'reference_type' => Page::class,
                            ],
                            [
                                'title' => 'Início 3',
                                'reference_id' => 3,
                                'reference_type' => Page::class,
                            ],
                        ],
                    ],
                    [
                        'title' => 'Política',
                        'reference_id' => 2,
                        'reference_type' => Category::class,
                    ],
                    [
                        'title' => 'Sociedade',
                        'reference_id' => 4,
                        'reference_type' => Category::class,
                    ],
                    [
                        'title' => 'Economia',
                        'reference_id' => 6,
                        'reference_type' => Category::class,
                    ],
                    [
                        'title' => 'Cultura',
                        'reference_id' => 9,
                        'reference_type' => Category::class,
                    ],
                    [
                        'title' => 'Notícias',
                        'reference_id' => 4,
                        'reference_type' => Page::class,
                        'children' => [
                            [
                                'title' => 'Layout Grelha',
                                'reference_id' => 9,
                                'reference_type' => Page::class,
                            ],
                            [
                                'title' => 'Layout Lista',
                                'reference_id' => 7,
                                'reference_type' => Page::class,
                            ],
                            [
                                'title' => 'Layout Grande',
                                'reference_id' => 8,
                                'reference_type' => Page::class,
                            ],
                        ],
                    ],
                    [
                        'title' => 'Galerias',
                        'url' => '/galleries',
                    ],
                    [
                        'title' => 'Contacto',
                        'reference_id' => 5,
                        'reference_type' => Page::class,
                    ],
                ],
            ],
            [
                'name' => 'Ligações Rápidas',
                'slug' => 'quick-links',
                'items' => [
                    [
                        'title' => 'Página Inicial',
                        'url' => '/',
                    ],
                    [
                        'title' => 'Contacto',
                        'reference_id' => 5,
                        'reference_type' => Page::class,
                    ],
                    [
                        'title' => 'Notícias',
                        'reference_id' => 4,
                        'reference_type' => Page::class,
                    ],
                    [
                        'title' => 'Política',
                        'reference_id' => 2,
                        'reference_type' => Category::class,
                    ],
                    [
                        'title' => 'Galerias',
                        'url' => '/galleries',
                    ],
                ],
            ],
        ];

        $this->createMenus($data);
    }
}
