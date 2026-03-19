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
                'name' => 'Uncategorized',
                'is_default' => true,
            ],
            [
                'name' => 'Politics',
                'children' => [
                    [
                        'name' => 'Analysis',
                    ],
                ],
            ],
            [
                'name' => 'Society',
                'children' => [
                    [
                        'name' => 'Human Rights',
                    ],
                ],
            ],
            [
                'name' => 'Economy',
                'children' => [
                    [
                        'name' => 'Labor',
                    ],
                ],
            ],
            [
                'name' => 'Environment',
            ],
            [
                'name' => 'Culture',
            ],
        ];

        $this->createBlogCategories($categories);

        $tags = [
            [
                'name' => 'Politics',
            ],
            [
                'name' => 'Justice',
            ],
            [
                'name' => 'Democracy',
            ],
            [
                'name' => 'Society',
            ],
            [
                'name' => 'Rights',
            ],
        ];

        $this->createBlogTags($tags);

        $posts = [
            [
                'name' => 'Government Announces Sweeping Social Welfare Reform Package',
            ],
            [
                'name' => 'Protests Erupt in Capital Over Education Budget Cuts',
            ],
            [
                'name' => 'Parliament Votes on Historic Environmental Protection Bill',
            ],
            [
                'name' => 'Community Leaders Demand Action on Housing Crisis',
            ],
            [
                'name' => 'Investigation Reveals Corruption in Public Procurement',
            ],
            [
                'name' => 'Citizens March for Gender Equality in Major Cities',
            ],
            [
                'name' => 'Supreme Court Rules on Landmark Civil Rights Case',
            ],
            [
                'name' => 'Local Elections: What the Results Mean for Public Policy',
            ],
            [
                'name' => 'Rising Unemployment Sparks National Debate Over Labor Laws',
            ],
            [
                'name' => 'Report Exposes Systemic Abuses in Detention Centers',
            ],
            [
                'name' => 'Anonymous Whistleblower Exposes State Surveillance Program',
            ],
            [
                'name' => 'Social Movement Gains Momentum After Viral Protest Videos',
            ],
            [
                'name' => 'New Legislation Threatens Press Freedom, Journalists Warn',
            ],
            [
                'name' => 'Healthcare Workers Strike Amid Decades of Underfunding',
            ],
            [
                'name' => 'Indigenous Communities Fight for Land Rights Recognition',
            ],
            [
                'name' => 'Youth Climate Activists Push for Urgent Legislative Action',
            ],
        ];

        foreach ($posts as $index => &$item) {
            $item['content'] =
                '<p>Citizens and activists gathered this week as officials confirmed the report, raising concerns about transparency and accountability in government institutions. Multiple sources, some of whom requested anonymity for fear of retaliation, corroborated the findings presented in this investigation.</p>' .
                ($index % 3 == 0 ? Html::tag(
                    'p',
                    '[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]'
                ) : '') .
                '   <hr class="wp-block-separator is-style-dots">
                    <p>The situation has drawn widespread attention from civil society organizations and opposition leaders, who are calling for an independent inquiry. <a href="/">Community representatives</a> held an emergency meeting to coordinate a formal response to authorities.</p>
                    <figure class="wp-block-gallery columns-3 wp-block-image">
                        <ul>
                            <li><a href="/"><img src="/storage/news/' . rand(1, 5) . '.jpg" alt="image 1"></a></li>
                            <li><a href="/"><img src="/storage/news/' . rand(6, 12) . '.jpg" alt="image 2"></a></li>
                            <li><a href="/"><img src="/storage/news/' . rand(13, 19) . '.jpg" alt="image 3"></a></li>
                        </ul>
                        <figcaption> <i class="ti-credit-card mr-5"></i>Photos submitted by readers </figcaption>
                    </figure>
                    <hr class="section-divider">
                    <p>Legal experts <a href="/">consulted by our editorial team</a><sup><a href="/">[2]</a></sup> warned that the developments could set a precedent with far-reaching implications for civil liberties and the rule of law. Advocacy groups have already begun preparing legal challenges.</p>
                    <h2>Background and Context</h2>
                    <p>The issue is not new. Complaints have been filed over the past several years, but institutional responses have been slow and insufficient. <a href="/">Internal documents reviewed</a><sup><a href="/">[3]</a></sup> by this publication suggest that decision-makers were aware of the problem long before it became public.</p>
                    <blockquote>
                        <p>"The people have a right to know what is being done in their name and with their taxes. Silence is complicity." — anonymous source within the institution.</p>
                    </blockquote>
                    <p>Affected communities are demanding concrete action and not just promises. Grassroots organizations have launched a petition that has already gathered tens of thousands of signatures, and a march is planned for the coming weeks.</p>
                    <h3>What Happens Next</h3>
                    <hr class="wp-block-separator is-style-wide">
                    <div class="wp-block-image">
                        <figure class="alignleft is-resized">
                            <img class="border-radius-5" src="/storage/news/' . rand(10, 19) . '.jpg" alt="image 4">
                            <figcaption> Demonstrators outside the municipal building </figcaption>
                        </figure>
                    </div>
                    <p>Parliamentary committees are expected to convene hearings in the coming weeks. Opposition parties have signaled they will push for a vote of no confidence if the government fails to present a credible plan of action within 30 days.</p>
                    <p>This report was submitted anonymously and verified by our editorial team. We encourage anyone with additional information to contact us securely through our tip line.</p>
                    <br>
                    <hr class="section-divider">
                    <p>We remain committed to independent, citizen-driven journalism. If you have witnessed misconduct or injustice, you can submit your account anonymously or with your name. Every voice matters in holding power to account.</p>
                    <p>Our editorial team reviews all submissions and protects source confidentiality as a core principle. Stories may be published in full or excerpted, always with the submitter\'s consent.</p>
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
