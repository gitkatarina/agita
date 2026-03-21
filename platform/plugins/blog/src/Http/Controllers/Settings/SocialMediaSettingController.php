<?php

namespace Botble\Blog\Http\Controllers\Settings;

use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Blog\Forms\Settings\SocialMediaSettingForm;
use Botble\Blog\Http\Requests\Settings\SocialMediaSettingRequest;
use Botble\Setting\Http\Controllers\SettingController;

class SocialMediaSettingController extends SettingController
{
    public function edit()
    {
        $this->pageTitle(trans('plugins/blog::social-media.settings.title'));

        return SocialMediaSettingForm::create()->renderForm();
    }

    public function update(SocialMediaSettingRequest $request): BaseHttpResponse
    {
        return $this->performUpdate($request->validated());
    }
}
