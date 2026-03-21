<?php

namespace Botble\Blog\Models;

use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class PostSocialPublication extends BaseModel
{
    protected $table = 'post_social_publications';

    protected $fillable = [
        'post_id',
        'platform',
        'status',
        'external_id',
        'error_message',
        'published_at',
    ];

    protected $casts = [
        'published_at' => 'datetime',
    ];

    public function post(): BelongsTo
    {
        return $this->belongsTo(Post::class);
    }
}
