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
            'Submeta o seu relatório de notícias de forma segura — a sua identidade pode permanecer anónima. Cada história importa.',
            'Testemunhou injustiça ou irregularidade? Reporte aqui. Verificamos e publicamos com o seu consentimento.',
            'Junte-se a milhares de cidadãos a responsabilizar o poder — subscreva o nosso resumo semanal.',
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
