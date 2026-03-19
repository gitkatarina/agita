<?php

namespace Database\Seeders;

use Botble\ACL\Database\Seeders\UserSeeder as BaseUserSeeder;
use Botble\ACL\Models\User;
use Botble\Base\Facades\MetaBox;

class UserSeeder extends BaseUserSeeder
{
    public function run(): void
    {
        parent::run();

        $files = $this->uploadFiles('users');

        foreach (User::query()->get() as $user) {
            MetaBox::saveMetaBoxData(
                $user,
                'bio',
                'Olá, sou o ' . $user->name . ', o seu Guia para a Jornada do Blogue 🖋️. A escrever, uma publicação de cada vez, para inspirar, informar e acender a sua curiosidade. Junte-se a mim enquanto exploramos o mundo através das palavras e nos aventuramos numa jornada ilimitada de conhecimento e criatividade. Vamos dar vida aos seus pensamentos nestas páginas digitais. 🌟 #AventurasDoBlog'
            );

            $user->avatar_id = $files[0]['error'] ? 0 : $files[0]['data']->id;
            $user->save();
        }
    }
}
