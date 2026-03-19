<?php

namespace FriendsOfBotble\Comment\Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Blog\Models\Post;
use FriendsOfBotble\Comment\Enums\CommentStatus;
use FriendsOfBotble\Comment\Models\Comment;
use Illuminate\Support\Str;

class CommentSeeder extends BaseSeeder
{
    public function run(): void
    {
        Comment::query()->truncate();

        $fake = $this->fake();

        if (! is_plugin_active('blog')) {
            return;
        }

        $posts = Post::query()->select('id')->get();

        if ($posts->isEmpty()) {
            return;
        }

        foreach ($this->getData() as $comment) {
            $post = $posts->random();

            Comment::query()->create([
                ...$comment,
                'reference_type' => Post::class,
                'reference_id' => $post->id,
                'reference_url' => route('public.single', Str::slug($post->name)),
                'name' => $fake->name,
                'email' => $fake->email,
                'website' => 'https://friendsofbotble.com',
                'ip_address' => $fake->ipv4,
                'user_agent' => $fake->userAgent,
                'status' => CommentStatus::APPROVED,
                'created_at' => $fake->dateTimeBetween('-1 month'),
            ]);
        }
    }

    protected function getData(): array
    {
        return array_map(function ($item) {
            return ['content' => $item];
        }, [
            'Muito útil, obrigado!',
            'Achei este artigo bastante informativo.',
            'Wow, nunca tinha sabido disto antes!',
            'Excelente trabalho ao explicar um tema tão complexo.',
            'Tenho uma dúvida sobre o terceiro parágrafo.',
            'Este artigo mudou completamente a minha perspetiva.',
            'Agradeço o esforço que colocou nisto.',
            'Era exatamente o que estava à procura, obrigado!',
            'Discordo de alguns pontos aqui mencionados, no entanto.',
            'Podia fornecer mais exemplos para ilustrar o seu ponto de vista?',
            'Gostava que houvesse mais artigos assim.',
            'Vou guardar este nos favoritos para consulta futura.',
            'Partilhei com os meus amigos, adoraram!',
            'Este artigo é de leitura obrigatória para quem se interessa pelo tema.',
            'Obrigado por lançar luz sobre esta questão importante.',
            'Andava à procura de informação sobre este tema, ainda bem que encontrei este artigo.',
            'Fico impressionado com as perspetivas partilhadas neste artigo.',
            'Este artigo aborda um tema complexo com clareza.',
            'Vou refletir sobre as ideias apresentadas neste artigo.',
            'A paixão do autor pelo tema transparece ao longo de todo o artigo.',
            'Este artigo desafiou as minhas ideias preconcebidas de forma estimulante.',
            'Adicionei este artigo à minha lista de leituras, vale a pena rever.',
            'Este artigo oferece conselhos práticos que posso aplicar na vida real.',
            'Vou recomendar este artigo ao meu grupo de estudo.',
            'Os exemplos fornecidos ajudaram-me muito a compreender o conceito.',
            'Identifico-me com as ideias aqui apresentadas.',
            'Este artigo fez-me pensar criticamente sobre o tema.',
            'Certamente voltarei a este artigo para referência futura.',
            'Partilhei nas redes sociais, é demasiado bom para não partilhar.',
            'Este artigo apresenta uma visão equilibrada sobre um tema controverso.',
            'Ainda bem que encontrei este artigo, é uma verdadeira joia.',
            'Estava com dificuldades com este assunto, o seu artigo ajudou muito.',
            'Aprendi algo novo hoje, graças a este artigo.',
            'Parabéns ao autor por um trabalho tão bem investigado.',
            'Fico impressionado com a profundidade de conhecimento demonstrada aqui.',
            'Este artigo desafiou os meus pressupostos de forma positiva.',
            'Partilhei com os meus colegas, vale a pena discutir.',
            'A informação aqui apresentada é muito valiosa.',
            'Tem um talento especial para explicar temas complexos com clareza.',
            'Este artigo inspirou-me a aprender mais sobre o assunto.',
            'Este artigo merece maior reconhecimento.',
            'Estou grato pelas perspetivas partilhadas neste texto.',
            'O autor apresenta uma visão equilibrada sobre um tema controverso.',
            'Ainda bem que encontrei este artigo.',
            'Andava à procura de informação sobre este tema e ainda bem que encontrei este artigo. É incrivelmente perspicaz e fornece uma visão abrangente do assunto. Agradeço o esforço dedicado à investigação e à escrita deste texto. É verdadeiramente esclarecedor e deu-me uma nova perspetiva. Obrigado por partilhar o seu conhecimento connosco!',
            'Este artigo é uma obra-prima! Aprofunda o tema e oferece perspetivas valiosas que são simultaneamente estimulantes e iluminadoras. A competência do autor é evidente ao longo de todo o texto, tornando-o uma leitura cativante do início ao fim. Certamente voltarei a consultá-lo como referência no futuro.',
            'Fico impressionado com a profundidade de análise neste artigo. Aborda uma vasta gama de aspetos relacionados com o tema, proporcionando uma compreensão abrangente. A clareza da explicação é louvável, tornando conceitos complexos fáceis de compreender. Este artigo enriqueceu o meu entendimento e despertou mais curiosidade. Parabéns ao autor!',
        ]);
    }
}
