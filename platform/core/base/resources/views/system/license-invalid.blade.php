@php
    $manageLicense = auth()
        ->user()
        ->hasPermission('core.manage.license');
@endphp

<x-core::alert
    type="success"
    :important="true"
    @class(['alert-license alert-sticky small bg-success text-white', 'vertical-wrapper' => AdminAppearance::isVerticalLayout()])
    icon=""
    @style(['display: none' => $hidden ?? true])
    data-bb-toggle="authorized-reminder"
>
    <div class="{{ AdminAppearance::getContainerWidth() }}">
        <div class="d-flex justify-content-between align-items-center">
            <div>
                Your license is activated successfully!
            </div>
        </div>
    </div>
</x-core::alert>
