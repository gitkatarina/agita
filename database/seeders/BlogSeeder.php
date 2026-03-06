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
                'name' => 'Travel',
                'children' => [
                    [
                        'name' => 'Guides',
                    ],
                ],
            ],
            [
                'name' => 'Destination',
                'children' => [
                    [
                        'name' => 'Food',
                    ],
                ],
            ],
            [
                'name' => 'Hotels',
                'children' => [
                    [
                        'name' => 'Review',
                    ],
                ],
            ],
            [
                'name' => 'Healthy',
            ],
            [
                'name' => 'Lifestyle',
            ],
        ];

        $this->createBlogCategories($categories);

        $tags = [
            [
                'name' => 'General',
            ],
            [
                'name' => 'Design',
            ],
            [
                'name' => 'Fashion',
            ],
            [
                'name' => 'Branding',
            ],
            [
                'name' => 'Modern',
            ],
        ];

        $this->createBlogTags($tags);

        $posts = [
            [
                'name' => 'The Top 2020 Handbag Trends to Know',
            ],
            [
                'name' => 'Top Search Engine Optimization Strategies!',
            ],
            [
                'name' => 'Which Company Would You Choose?',
            ],
            [
                'name' => 'Used Car Dealer Sales Tricks Exposed',
            ],
            [
                'name' => '20 Ways To Sell Your Product Faster',
            ],
            [
                'name' => 'The Secrets Of Rich And Famous Writers',
            ],
            [
                'name' => 'Imagine Losing 20 Pounds In 14 Days!',
            ],
            [
                'name' => 'Are You Still Using That Slow, Old Typewriter?',
            ],
            [
                'name' => 'A Skin Cream That’s Proven To Work',
            ],
            [
                'name' => '10 Reasons To Start Your Own, Profitable Website!',
            ],
            [
                'name' => 'Simple Ways To Reduce Your Unwanted Wrinkles!',
            ],
            [
                'name' => 'Apple iMac with Retina 5K display review',
            ],
            [
                'name' => '10,000 Web Site Visitors In One Month:Guaranteed',
            ],
            [
                'name' => 'Unlock The Secrets Of Selling High Ticket Items',
            ],
            [
                'name' => '4 Expert Tips On How To Choose The Right Men’s Wallet',
            ],
            [
                'name' => 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag',
            ],
        ];

        foreach ($posts as $index => &$item) {
            $item['content'] =
                '<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>' .
                ($index % 3 == 0 ? Html::tag(
                    'p',
                    '[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]'
                ) : '') .
                '   <hr class="wp-block-separator is-style-dots">
                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href="/">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>
                    <figure class="wp-block-gallery columns-3 wp-block-image">
                        <ul>
                            <li><a href="/"><img src="/storage/news/' . rand(1, 5) . '.jpg" alt="image 1"></a></li>
                            <li><a href="/"><img src="/storage/news/' . rand(6, 12) . '.jpg" alt="image 2"></a></li>
                            <li><a href="/"><img src="/storage/news/' . rand(13, 19) . '.jpg" alt="image 3"></a></li>
                        </ul>
                        <figcaption> <i class="ti-credit-card mr-5"></i>Image credit: Behance </figcaption>
                    </figure>
                    <hr class="section-divider">
                    <p>Yet more some certainly yet alas abandonedly whispered <a href="/">intriguingly</a><sup><a href="/">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href="/">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>
                    <h2>The Guitar Legends</h2>
                    <p>Furrowed this in the upset <a href="/">some across</a><sup><a href="/">[3]</a></sup> tiger oh loaded house gosh whispered <a href="/">faltering alas</a><sup><a href="/">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>
                    <blockquote>
                        <p>Integer eu faucibus <a href="/">dolor</a><sup><a href="/">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>
                    </blockquote>
                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>
                    <h3>Getting Crypto Rich</h3>
                    <hr class="wp-block-separator is-style-wide">
                    <div class="wp-block-image">
                        <figure class="alignleft is-resized">
                            <img class="border-radius-5" src="/storage/news/' . rand(10, 19) . '.jpg" alt="image 4">
                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>
                        </figure>
                    </div>
                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>
                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>
                    <br>
                    <hr class="section-divider">
                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>
                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>
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
