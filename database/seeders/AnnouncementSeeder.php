<?php

namespace Database\Seeders;

use ArchiElite\Announcement\Models\Announcement;
use Botble\Base\Supports\BaseSeeder;
use Botble\Setting\Facades\Setting;
use Carbon\Carbon;

class AnnouncementSeeder extends BaseSeeder
{
    public function run(): void
    {
        Announcement::query()->truncate();

        $announcements = [
            'Submit your news report securely — your identity can remain anonymous. Every story matters.',
            'Have you witnessed injustice or misconduct? Report it here. We verify and publish with your consent.',
            'Join thousands of citizens holding power to account — subscribe to our weekly digest.',
        ];

        $now = Carbon::now();

        foreach ($announcements as $key => $value) {
            Announcement::query()->create([
                'name' => sprintf('Announcement %s', $key + 1),
                'content' => $value,
                'start_date' => $now,
                'dismissible' => true,
            ]);
        }

        $settings = [
            'announcement_max_width' => '1110',
            'announcement_text_color' => '#687385',
            'announcement_background_color' => '#f8f8f8',
            'announcement_text_alignment' => 'start',
            'announcement_dismissible' => '1',
            'announcement_font_size' => 12,
            'announcement_font_size_unit' => 'px',
        ];

        Setting::delete(array_keys($settings));

        Setting::set($settings)->save();
    }
}
