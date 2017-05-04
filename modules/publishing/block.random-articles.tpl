{if !empty($random_articles)}
    <div class="random-articles">
        {foreach $random_articles as $article}
            <div class="b-post-alt2 -sm">
                {if $article.image}
                    <a class="b-post-alt2__image" href="{ia_url type='url' item='articles' data=$article}">
                        {ia_image file=$article.image type='thumbnail' title=$article.title class='img-responsive'}
                    </a>
                {/if}

                <div class="b-post-alt2__body">
                    <h5>{ia_url item='articles' type='link' data=$article text=$article.title}</h5>
                    <span>{lang key='on'} {$article.date_added|date_format:$core.config.date_format}</span>
                </div>
            </div>
        {/foreach}
    </div>
{/if}