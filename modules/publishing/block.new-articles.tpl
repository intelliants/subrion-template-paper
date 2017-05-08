{if !('publishing_home' == $core.page.name && '1' != $category.id)}
    <h4 class="box__caption"><span>{lang key='new_articles'}</span></h4>
    <div class="box__content">
        {if $new_articles}
            <div class="new-articles">
                {foreach $new_articles as $listing}
                    {include 'extra:publishing/list-articles'}
                {/foreach}
            </div>
        {else}
            <div class="alert alert-info">{lang key='no_articles'}</div>
        {/if}
    </div>
{/if}