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
                'name' => 'In\u{ED}cio',
                'content' =>
                    Html::tag(
                        'div',
                        '[about-banner title="Ol\u{E1}, sou o &lt;span&gt;Steven&lt;/span&gt;" subtitle="Bem-vindo ao meu blogue" text_muted="Blogger de Viagens., Escritor de Conte\u{FA}dos., Guias Gastron\u{F3}micos" image="general/featured.png" newsletter_title="N\u{E3}o perca as \u{FA}ltimas not\u{ED}cias sobre dicas de viagem, avalia\u{E7}\u{F5}es de hot\u{E9}is, guias gastron\u{F3}micos..." image="general/featured.png" show_newsletter_form="yes"][/about-banner]'
                    ) .
                    Html::tag('div', '[featured-posts title="Publica\u{E7}\u{F5}es em Destaque"][/featured-posts]') .
                    Html::tag('div', '[blog-categories-posts category_id="2"][/blog-categories-posts]') .
                    Html::tag(
                        'div',
                        '[categories-with-posts category_id_1="3" category_id_2="4" category_id_3="5"][/categories-with-posts]'
                    ) .
                    Html::tag('div', '[featured-categories title="Categorias"][/featured-categories]')
                ,
                'template' => 'homepage',
            ],
            [
                'name' => 'In\u{ED}cio 2',
                'content' =>
                    Html::tag('div', '[featured-posts-slider-full][/featured-posts-slider-full]') .
                    Html::tag('div', '[blog-categories-posts category_id="2"][/blog-categories-posts]') .
                    Html::tag(
                        'div',
                        '[categories-with-posts category_id_1="3" category_id_2="4" category_id_3="5"][/categories-with-posts]'
                    ) .
                    Html::tag('div', '[featured-categories title="Categorias"][/featured-categories]')
                ,
                'template' => 'homepage',
            ],
            [
                'name' => 'In\u{ED}cio 3',
                'content' =>
                    Html::tag('div', '[featured-posts-slider][/featured-posts-slider]') .
                    Html::tag('div', '[blog-categories-posts category_id="2"][/blog-categories-posts]') .
                    Html::tag(
                        'div',
                        '[categories-with-posts category_id_1="3" category_id_2="4" category_id_3="5"][/categories-with-posts]'
                    ) .
                    Html::tag('div', '[featured-categories title="Categorias"][/featured-categories]')
                ,
                'template' => 'homepage',
            ],
            [
                'name' => 'Blogue',
                'content' => '---',
                'template' => 'default',
            ],
            [
                'name' => 'Contacto',
                'content' => Html::tag(
                    'p',
                    'Morada: Pra\u{E7}a do Com\u{E9}rcio, 1100-148 Lisboa, Portugal'
                ) .
                    Html::tag('p', 'Linha de Apoio: 800 202 112') .
                    Html::tag('p', 'Email: contact@botble.com') .
                    Html::tag(
                        'p',
                        '[google-map]Pra\u{E7}a do Com\u{E9}rcio, 1100-148 Lisboa[/google-map]'
                    ) .
                    Html::tag('p', 'Para uma resposta mais r\u{E1}pida, utilize o formul\u{E1}rio de contacto abaixo.') .
                    Html::tag('p', '[contact-form][/contact-form]'),
                'template' => 'default',
            ],
            [
                'name' => 'Pol\u{ED}tica de Cookies',
                'content' => Html::tag('h3', 'Consentimento de Cookies da UE') .
                    Html::tag(
                        'p',
                        'Para utilizar este website usamos cookies e recolhemos alguns dados. Para cumprir o RGPD da UE, damos-lhe a possibilidade de escolher se nos permite utilizar determinados cookies e recolher alguns dados.'
                    ) .
                    Html::tag('h4', 'Dados Essenciais') .
                    Html::tag(
                        'p',
                        'Os Dados Essenciais s\u{E3}o necess\u{E1}rios para o funcionamento t\u{E9}cnico do site que est\u{E1} a visitar. N\u{E3}o pode desativ\u{E1}-los.'
                    ) .
                    Html::tag(
                        'p',
                        '- Cookie de Sess\u{E3}o: O PHP utiliza um cookie para identificar sess\u{F5}es de utilizador. Sem este cookie o website n\u{E3}o funciona.'
                    ) .
                    Html::tag(
                        'p',
                        '- Cookie XSRF-Token: O Laravel gera automaticamente um "token" CSRF para cada sess\u{E3}o de utilizador ativa gerida pela aplica\u{E7}\u{E3}o. Este token \u{E9} utilizado para verificar que o utilizador autenticado \u{E9} quem efetivamente realiza os pedidos \u{E0} aplica\u{E7}\u{E3}o.'
                    ),
                'template' => 'default',
            ],
            [
                'name' => 'Layout Lista do Blogue',
                'content' => Html::tag('div', '[blog-list limit="12"][/blog-list]'),
                'template' => 'right-sidebar',
            ],
            [
                'name' => 'Layout Grande do Blogue',
                'content' => Html::tag('div', '[blog-big limit="12"][/blog-big]'),
                'template' => 'default',
            ],
            [
                'name' => 'Layout Grelha do Blogue',
                'content' => Html::tag('div', '[blog-big limit="12"][/blog-big]'),
                'template' => 'right-sidebar',
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
