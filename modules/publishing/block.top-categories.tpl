{if !empty($top_categories)}
    <div class="container">
        <div class="b-top-cats__list">
            {foreach $top_categories as $top_category}
                <a href="{ia_url type='url' item='articlecats' data=$top_category}"{if $top_category.nofollow} rel="nofollow"{/if}>
                    {$top_category.title|escape}
                </a>
            {/foreach}
        </div>
    </div>
{/if}