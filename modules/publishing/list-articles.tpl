<div class="b-post-alt -lg -{$listing.status}{if $listing.sponsored} -sponsored{/if}{if $listing.featured} -featured{/if}">
    {if $listing.image}
        <a class="b-post-alt__image" href="{ia_url type='url' item='articles' data=$listing}">
            {ia_image file=$listing.image type='thumbnail' title=$listing.title class='img-responsive'}
        </a>
    {/if}

    <div class="b-post-alt__body">
        <small>
                {if $member && $member.id == $listing.member_id && iaCore::STATUS_ACTIVE != $listing.status}
                    <span class="sup-label sup-label-{$listing.status}" title="{lang key=$listing.status default=$listing.status}"><span class="fa fa-warning"></span> {lang key=$listing.status default=$listing.status}</span>
                {/if}
                {if $listing.sponsored}<span class="sup-label sup-label-warning" title="{lang key='sponsored'}"><span class="fa fa-star"></span> {lang key='sponsored'}</span>{/if}
                {if $listing.featured}<span class="sup-label sup-label-info" title="{lang key='featured'}"><span class="fa fa-star-o"></span> {lang key='featured'}</span>{/if}
        </small>
        <h4>
            {ia_url item='articles' type='link' data=$listing text=$listing.title}
        </h4>
        <p class="b-post-alt__body__author">
            {lang key='by'}
            {if $listing.account_username}
                <a href="{$smarty.const.IA_URL}member/{$listing.account_username}.html">{$listing.account_fullname}</a>
            {else}
                {lang key='guest'}
            {/if}
            {lang key='on'} {$listing.date_added|date_format:$core.config.date_format}
        </p>
        <p>{$listing.summary} <a href="{ia_url type='url' item='articles' data=$listing}">{lang key='continue_reading'}</a></p>
        <div class="b-post-alt__body__info">
            <span class="pull-left"><span class="fa fa-eye"></span> {$listing.views_num} {if 1 == $listing.views_num}{lang key='view'}{else}{lang key='views'}{/if}</span>
            <div class="b-post-alt__actions">
                {printFavorites item=$listing itemtype='articles' guests=true}
                {accountActions item=$listing itemtype='articles'}
                {if !empty($listing.transaction_id)}
                    <a rel="nofollow" href="{$smarty.const.IA_URL}pay/{$listing.transaction_id}/"><span class="fa fa-usd"></span> {lang key='pay'}</a>
                {/if}
                <a href="{ia_url item='articles' data=$listing type='url'}">{lang key='details'} <span class="fa fa-angle-double-right"></span></a>
            </div>
        </div>
    </div>
</div>