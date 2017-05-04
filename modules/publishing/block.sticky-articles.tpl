{if !empty($sticky_articles)}
    <div class="row">
        {foreach $sticky_articles as $article}
            <div class="col-md-4">
                <div class="b-post">
                    {if $article.image}
                        <a class="b-post__image" href="{ia_url type='url' item='articles' data=$article}">
                            {ia_image file=$article.image type='large' title=$article.title class='img-responsive'}
                        </a>
                    {/if}

                    <a class="b-post__cat" href="{ia_url type='url' item='articlecats' data=$article}">{$article.category_title}</a>

                    <div class="b-post__body">
                        <span>{lang key='on'} {$article.date_added|date_format:$core.config.date_format}</span>
                        <h4>{ia_url item='articles' type='link' data=$article text=$article.title}</h4>
                        {*<p>{$article.summary|strip_tags|truncate:80:'...':false}</p>*}
                    </div>
                </div>
            </div>

            {if $article@iteration % 3 == 0 && !$article@last}
                </div>
                <div class="row">
            {/if}
        {/foreach}
    </div>
{/if}