<?php

namespace Database\Seeders;

use Botble\Base\Facades\Html;
use Botble\Base\Supports\BaseSeeder;
use Botble\Blog\Database\Traits\HasBlogSeeder;

class BlogSeeder extends BaseSeeder
{
    use HasBlogSeeder;

    public function run(): void
    {
        $this->uploadFiles('news');
        $this->uploadFiles('categories');

        $faker = $this->fake();

        $categories = [
            [
                'name' => 'Sem Categoria',
                'is_default' => true,
            ],
            [
                'name' => 'Política',
                'children' => [
                    [
                        'name' => 'Análise',
                    ],
                ],
            ],
            [
                'name' => 'Sociedade',
                'children' => [
                    [
                        'name' => 'Direitos Humanos',
                    ],
                ],
            ],
            [
                'name' => 'Economia',
                'children' => [
                    [
                        'name' => 'Trabalho',
                    ],
                ],
            ],
            [
                'name' => 'Ambiente',
            ],
            [
                'name' => 'Cultura',
            ],
        ];

        $this->createBlogCategories($categories);

        $tags = [
            [
                'name' => 'Política',
            ],
            [
                'name' => 'Justiça',
            ],
            [
                'name' => 'Democracia',
            ],
            [
                'name' => 'Sociedade',
            ],
            [
                'name' => 'Direitos',
            ],
        ];

        $this->createBlogTags($tags);

        $posts = [
            [
                'name' => 'Governo Anuncia Pacote Abrangente de Reforma da Segurança Social',
            ],
            [
                'name' => 'Protestos Eclodem na Capital contra Cortes no Orçamento da Educação',
            ],
            [
                'name' => 'Parlamento Vota Histórica Proposta de Lei de Proteção Ambiental',
            ],
            [
                'name' => 'Líderes Comunitários Exigem Medidas face à Crise da Habitação',
            ],
            [
                'name' => 'Investigação Revela Corrupção na Contratação Pública',
            ],
            [
                'name' => 'Cidadãos Marcham pela Igualdade de Género nas Grandes Cidades',
            ],
            [
                'name' => 'Supremo Tribunal Decide em Caso Histórico de Direitos Civis',
            ],
            [
                'name' => 'Eleições Autárquicas: O que os Resultados Significam para a Política Pública',
            ],
            [
                'name' => 'Desemprego Crescente Despoleta Debate Nacional sobre Legislação Laboral',
            ],
            [
                'name' => 'Relatório Expõe Abusos Sistemáticos em Centros de Detenção',
            ],
            [
                'name' => 'Informador Anónimo Expõe Programa de Vigilância do Estado',
            ],
            [
                'name' => 'Movimento Social Ganha Força após Vídeos de Protesto Virais',
            ],
            [
                'name' => 'Nova Legislação Ameaça Liberdade de Imprensa, Alertam Jornalistas',
            ],
            [
                'name' => 'Trabalhadores de Saúde em Greve após Décadas de Subfinanciamento',
            ],
            [
                'name' => 'Comunidades Indígenas Lutam pelo Reconhecimento dos Direitos sobre as Terras',
            ],
            [
                'name' => 'Ativistas Climáticos Jovens Pressionam por Ação Legislativa Urgente',
            ],
        ];

        foreach ($posts as $index => &$item) {
            $item['content'] =
                '<p>Cidadãos e ativistas reuniram-se esta semana após as autoridades confirmarem o relatório, levantando preocupações sobre transparência e responsabilização nas instituições governamentais. Múltiplas fontes, algumas das quais solicitaram anonimato por receio de represálias, corroboraram as conclusões apresentadas nesta investigação.</p>' .
                ($index % 3 == 0 ? Html::tag(
                    'p',
                    '[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]'
                ) : '') .
                '   <hr class="wp-block-separator is-style-dots">
                    <p>A situação atraiu atenção generalizada de organizações da sociedade civil e líderes da oposição, que apelam à realização de um inquérito independente. <a href="/">Representantes das comunidades</a> reuniram-se em sessão de emergência para coordenar uma resposta formal às autoridades.</p>
                    <figure class="wp-block-gallery columns-3 wp-block-image">
                        <ul>
                            <li><a href="/"><img src="/storage/news/' . rand(1, 5) . '.jpg" alt="imagem 1"></a></li>
                            <li><a href="/"><img src="/storage/news/' . rand(6, 12) . '.jpg" alt="imagem 2"></a></li>
                            <li><a href="/"><img src="/storage/news/' . rand(13, 19) . '.jpg" alt="imagem 3"></a></li>
                        </ul>
                        <figcaption> <i class="ti-credit-card mr-5"></i>Fotografias submetidas por leitores </figcaption>
                    </figure>
                    <hr class="section-divider">
                    <p>Especialistas jurídicos <a href="/">consultados pela nossa equipa editorial</a><sup><a href="/">[2]</a></sup> alertaram que os desenvolvimentos poderão constituir um precedente com implicações de largo alcance para as liberdades civis e o Estado de Direito. Grupos de defesa já iniciaram a preparação de recursos jurídicos.</p>
                    <h2>Contexto e Antecedentes</h2>
                    <p>O problema não é novo. Queixas têm sido apresentadas ao longo dos últimos anos, mas as respostas institucionais têm sido lentas e insuficientes. <a href="/">Documentos internos analisados</a><sup><a href="/">[3]</a></sup> por esta publicação sugerem que os decisores tinham conhecimento do problema muito antes de este se tornar público.</p>
                    <blockquote>
                        <p>"Os cidadãos têm o direito de saber o que é feito em seu nome e com os seus impostos. O silêncio é cumplicidade." — fonte anónima dentro da instituição.</p>
                    </blockquote>
                    <p>As comunidades afetadas exigem ação concreta e não apenas promessas. Organizações de base lançaram uma petição que já reuniu dezenas de milhares de assinaturas, e uma marcha está prevista para as próximas semanas.</p>
                    <h3>O que Acontece a Seguir</h3>
                    <hr class="wp-block-separator is-style-wide">
                    <div class="wp-block-image">
                        <figure class="alignleft is-resized">
                            <img class="border-radius-5" src="/storage/news/' . rand(10, 19) . '.jpg" alt="imagem 4">
                            <figcaption> Manifestantes em frente ao edifício municipal </figcaption>
                        </figure>
                    </div>
                    <p>As comissões parlamentares deverão realizar audições nas próximas semanas. Os partidos da oposição sinalizaram que irão pressionar por uma moção de censura caso o governo não apresente um plano de ação credível no prazo de 30 dias.</p>
                    <p>Este relatório foi submetido anonimamente e verificado pela nossa equipa editorial. Encorajamos quem disponha de informações adicionais a contactar-nos de forma segura através da nossa linha de denúncia.</p>
                    <br>
                    <hr class="section-divider">
                    <p>Mantemo-nos comprometidos com o jornalismo independente e orientado pelos cidadãos. Se testemunhou irregularidades ou injustiças, pode submeter o seu relato anonimamente ou com o seu nome. Cada voz é importante para responsabilizar o poder.</p>
                    <p>A nossa equipa editorial revê todas as submissões e protege a confidencialidade das fontes como princípio fundamental. As histórias poderão ser publicadas na íntegra ou em excerto, sempre com o consentimento de quem as submeteu.</p>
                ';
            $item['is_featured'] = $index < 10;
            $item['image'] = 'news/' . ($index + 1) . '.jpg';
            $item['description'] = $faker->text();
            $item['format_type'] = $index % 3 == 0 ? 'video' : 'default';
            $item['content'] = str_replace(url(''), '', $item['content']);
        }

        $this->createBlogPosts($posts);
    }
}
