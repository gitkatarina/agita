<?php

namespace Database\Seeders;

use Botble\Base\Facades\Html;
use Botble\Base\Supports\BaseSeeder;
use Botble\Page\Models\Page;
use Botble\Slug\Facades\SlugHelper;
use Botble\Slug\Models\Slug;
use Illuminate\Support\Str;

class PageSeeder extends BaseSeeder
{
    public function run(): void
    {
        $pages = [
            [
                ‘name’ => ‘Início’,
                ‘content’ =>
                    Html::tag(
                        ‘div’,
                        ‘[about-banner title="Olá, sou o &lt;span&gt;Steven&lt;/span&gt;" subtitle="Bem-vindo ao meu blogue" text_muted="Blogger de Viagens., Escritor de Conteúdos., Guias Gastronómicos" image="general/featured.png" newsletter_title="Não perca as últimas notícias sobre dicas de viagem, avaliações de hotéis, guias gastronómicos..." image="general/featured.png" show_newsletter_form="yes"][/about-banner]’
                    ) .
                    Html::tag(‘div’, ‘[featured-posts title="Publicações em Destaque"][/featured-posts]’) .
                    Html::tag(‘div’, ‘[blog-categories-posts category_id="2"][/blog-categories-posts]’) .
                    Html::tag(
                        ‘div’,
                        ‘[categories-with-posts category_id_1="3" category_id_2="4" category_id_3="5"][/categories-with-posts]’
                    ) .
                    Html::tag(‘div’, ‘[featured-categories title="Categorias"][/featured-categories]’)
                ,
                ‘template’ => ‘homepage’,
            ],
            [
                ‘name’ => ‘Início 2’,
                ‘content’ =>
                    Html::tag(‘div’, ‘[featured-posts-slider-full][/featured-posts-slider-full]’) .
                    Html::tag(‘div’, ‘[blog-categories-posts category_id="2"][/blog-categories-posts]’) .
                    Html::tag(
                        ‘div’,
                        ‘[categories-with-posts category_id_1="3" category_id_2="4" category_id_3="5"][/categories-with-posts]’
                    ) .
                    Html::tag(‘div’, ‘[featured-categories title="Categorias"][/featured-categories]’)
                ,
                ‘template’ => ‘homepage’,
            ],
            [
                ‘name’ => ‘Início 3’,
                ‘content’ =>
                    Html::tag(‘div’, ‘[featured-posts-slider][/featured-posts-slider]’) .
                    Html::tag(‘div’, ‘[blog-categories-posts category_id="2"][/blog-categories-posts]’) .
                    Html::tag(
                        ‘div’,
                        ‘[categories-with-posts category_id_1="3" category_id_2="4" category_id_3="5"][/categories-with-posts]’
                    ) .
                    Html::tag(‘div’, ‘[featured-categories title="Categorias"][/featured-categories]’)
                ,
                ‘template’ => ‘homepage’,
            ],
            [
                ‘name’ => ‘Blogue’,
                ‘content’ => ‘---’,
                ‘template’ => ‘default’,
            ],
            [
                ‘name’ => ‘Contacto’,
                ‘content’ => Html::tag(
                    ‘p’,
                    ‘Morada: Praça do Comércio, 1100-148 Lisboa, Portugal’
                ) .
                    Html::tag(‘p’, ‘Linha de Apoio: 800 202 112’) .
                    Html::tag(‘p’, ‘Email: contact@botble.com’) .
                    Html::tag(
                        ‘p’,
                        ‘[google-map]Praça do Comércio, 1100-148 Lisboa[/google-map]’
                    ) .
                    Html::tag(‘p’, ‘Para uma resposta mais rápida, utilize o formulário de contacto abaixo.’) .
                    Html::tag(‘p’, ‘[contact-form][/contact-form]’),
                ‘template’ => ‘default’,
            ],
            [
                ‘name’ => ‘Política de Cookies’,
                ‘content’ => Html::tag(‘h3’, ‘Consentimento de Cookies da UE’) .
                    Html::tag(
                        ‘p’,
                        ‘Para utilizar este website usamos cookies e recolhemos alguns dados. Para cumprir o RGPD da UE, damos-lhe a possibilidade de escolher se nos permite utilizar determinados cookies e recolher alguns dados.’
                    ) .
                    Html::tag(‘h4’, ‘Dados Essenciais’) .
                    Html::tag(
                        ‘p’,
                        ‘Os Dados Essenciais são necessários para o funcionamento técnico do site que está a visitar. Não pode desativá-los.’
                    ) .
                    Html::tag(
                        ‘p’,
                        ‘- Cookie de Sessão: O PHP utiliza um cookie para identificar sessões de utilizador. Sem este cookie o website não funciona.’
                    ) .
                    Html::tag(
                        ‘p’,
                        ‘- Cookie XSRF-Token: O Laravel gera automaticamente um "token" CSRF para cada sessão de utilizador ativa gerida pela aplicação. Este token é utilizado para verificar que o utilizador autenticado é quem efetivamente realiza os pedidos à aplicação.’
                    ),
                ‘template’ => ‘default’,
            ],
            [
                ‘name’ => ‘Layout Lista do Blogue’,
                ‘content’ => Html::tag(‘div’, ‘[blog-list limit="12"][/blog-list]’),
                ‘template’ => ‘right-sidebar’,
            ],
            [
                ‘name’ => ‘Layout Grande do Blogue’,
                ‘content’ => Html::tag(‘div’, ‘[blog-big limit="12"][/blog-big]’),
                ‘template’ => ‘default’,
            ],
            [
                ‘name’ => ‘Layout Grelha do Blogue’,
                ‘content’ => Html::tag(‘div’, ‘[blog-big limit="12"][/blog-big]’),
                ‘template’ => ‘right-sidebar’,
            ],
        ];

        Page::query()->truncate();

        foreach ($pages as $item) {
            $item['user_id'] = 1;
            $page = Page::query()->create($item);

            Slug::query()->create([
                'reference_type' => Page::class,
                'reference_id' => $page->id,
                'key' => Str::slug($page->name),
                'prefix' => SlugHelper::getPrefix(Page::class),
            ]);
        }
    }
}
