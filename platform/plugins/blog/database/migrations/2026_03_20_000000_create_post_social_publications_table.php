<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        Schema::create('post_social_publications', function (Blueprint $table): void {
            $table->id();
            $table->foreignId('post_id')->constrained('posts')->cascadeOnDelete();
            $table->string('platform', 30);
            $table->string('status', 20)->default('pending');
            $table->string('external_id')->nullable();
            $table->text('error_message')->nullable();
            $table->timestamp('published_at')->nullable();
            $table->timestamps();
            $table->index(['post_id', 'platform']);
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('post_social_publications');
    }
};
