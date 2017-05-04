{if isset($articles_archive)}
    {if $articles_archive}
        <ul class="b-menu">
            {foreach $articles_archive as $item}
                <li>
                    {assign var='month' value="month{$item.month}"}
                    <a href="{$item.url}">{lang key=$month} {$item.year}</a>
                </li>
            {/foreach}
        </ul>
    {else}
        <div class="alert alert-info">{lang key='no_articles_in_archive'}</div>
    {/if}
{/if}