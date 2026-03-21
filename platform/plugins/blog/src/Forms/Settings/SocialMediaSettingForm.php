<?php

namespace Botble\Blog\Forms\Settings;

use Botble\Base\Forms\FieldOptions\OnOffFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\OnOffCheckboxField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Blog\Http\Requests\Settings\SocialMediaSettingRequest;
use Botble\Setting\Forms\SettingForm;

class SocialMediaSettingForm extends SettingForm
{
    public function setup(): void
    {
        parent::setup();

        $this
            ->setSectionTitle(trans('plugins/blog::social-media.settings.title'))
            ->setSectionDescription(trans('plugins/blog::social-media.settings.description'))
            ->setValidatorClass(SocialMediaSettingRequest::class)

            // Facebook
            ->add(
                'social_facebook_enabled',
                OnOffCheckboxField::class,
                OnOffFieldOption::make()
                    ->label(trans('plugins/blog::social-media.settings.facebook_enabled'))
                    ->defaultValue(setting('social_facebook_enabled', false))
            )
            ->addOpenCollapsible('social_facebook_enabled', '1', (bool) setting('social_facebook_enabled', false))
            ->add(
                'social_facebook_page_id',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('plugins/blog::social-media.settings.facebook_page_id'))
                    ->value(setting('social_facebook_page_id'))
            )
            ->add(
                'social_facebook_access_token',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('plugins/blog::social-media.settings.facebook_access_token'))
                    ->value(setting('social_facebook_access_token'))
            )
            ->addCloseCollapsible('social_facebook_enabled', '1')

            // Twitter (X)
            ->add(
                'social_twitter_enabled',
                OnOffCheckboxField::class,
                OnOffFieldOption::make()
                    ->label(trans('plugins/blog::social-media.settings.twitter_enabled'))
                    ->defaultValue(setting('social_twitter_enabled', false))
            )
            ->addOpenCollapsible('social_twitter_enabled', '1', (bool) setting('social_twitter_enabled', false))
            ->add(
                'social_twitter_api_key',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('plugins/blog::social-media.settings.twitter_api_key'))
                    ->value(setting('social_twitter_api_key'))
            )
            ->add(
                'social_twitter_api_secret',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('plugins/blog::social-media.settings.twitter_api_secret'))
                    ->value(setting('social_twitter_api_secret'))
            )
            ->add(
                'social_twitter_access_token',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('plugins/blog::social-media.settings.twitter_access_token'))
                    ->value(setting('social_twitter_access_token'))
            )
            ->add(
                'social_twitter_access_token_secret',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('plugins/blog::social-media.settings.twitter_access_token_secret'))
                    ->value(setting('social_twitter_access_token_secret'))
            )
            ->addCloseCollapsible('social_twitter_enabled', '1')

            // LinkedIn
            ->add(
                'social_linkedin_enabled',
                OnOffCheckboxField::class,
                OnOffFieldOption::make()
                    ->label(trans('plugins/blog::social-media.settings.linkedin_enabled'))
                    ->defaultValue(setting('social_linkedin_enabled', false))
            )
            ->addOpenCollapsible('social_linkedin_enabled', '1', (bool) setting('social_linkedin_enabled', false))
            ->add(
                'social_linkedin_access_token',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('plugins/blog::social-media.settings.linkedin_access_token'))
                    ->value(setting('social_linkedin_access_token'))
            )
            ->add(
                'social_linkedin_organization_id',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('plugins/blog::social-media.settings.linkedin_organization_id'))
                    ->value(setting('social_linkedin_organization_id'))
            )
            ->addCloseCollapsible('social_linkedin_enabled', '1')

            // Instagram
            ->add(
                'social_instagram_enabled',
                OnOffCheckboxField::class,
                OnOffFieldOption::make()
                    ->label(trans('plugins/blog::social-media.settings.instagram_enabled'))
                    ->defaultValue(setting('social_instagram_enabled', false))
            )
            ->addOpenCollapsible('social_instagram_enabled', '1', (bool) setting('social_instagram_enabled', false))
            ->add(
                'social_instagram_user_id',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('plugins/blog::social-media.settings.instagram_user_id'))
                    ->value(setting('social_instagram_user_id'))
            )
            ->add(
                'social_instagram_access_token',
                TextField::class,
                TextFieldOption::make()
                    ->label(trans('plugins/blog::social-media.settings.instagram_access_token'))
                    ->value(setting('social_instagram_access_token'))
            )
            ->addCloseCollapsible('social_instagram_enabled', '1');
    }
}
