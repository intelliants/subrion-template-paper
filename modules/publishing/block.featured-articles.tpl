{if !empty($featured_articles)}
    <div class="ia-items featured-articles">
        {foreach $featured_articles as $article}
            <div class="b-post-alt">
                {if $article.image}
                    <a class="b-post-alt__image" href="{ia_url type='url' item='articles' data=$article}">
                        {ia_image file=$article.image type='large' title=$article.title class='img-responsive'}
                    </a>
                {/if}

                <div class="b-post-alt__body">
                    <h4>{ia_url item='articles' type='link' data=$article text=$article.title}</h4>
                    <p>{$article.summary|strip_tags|truncate:200:'...':false}</p>
                </div>
                <div class="b-post-alt__info">
                    <span><a href="{ia_url type='url' item='articlecats' data=$article}">{$article.category_title}</a></span>
                    <span>{lang key='on'} {$article.date_added|date_format:$core.config.date_format}</span>
                </div>
            </div>
        {/foreach}
    </div>
{/if}