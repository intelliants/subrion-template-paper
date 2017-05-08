{if !empty($priority_categories)}
    {foreach $priority_categories as $priority_category}
        <div class="b-fcats">
            <h4 class="box__caption">
                <span>{$priority_category.title|escape}</span>
            </h4>

            {if $priority_category.articles}
                <div class="row">
                    <div class="col-md-6">
                        {foreach $priority_category.articles as $article}
                            {if $article@first}
                                <div class="b-post-alt">
                                    {if $article.image}
                                        <a class="b-post-alt__image" href="{ia_url type='url' item='articles' data=$article}">
                                            {ia_image file=$article.image type='large' title=$article.title class='img-responsive'}
                                        </a>
                                    {/if}

                                    <div class="b-post-alt__body">
                                        <h4>{ia_url item='articles' type='link' data=$article text=$article.title}</h4>
                                        <p>{$article.summary|strip_tags|truncate:100:'...':false}</p>
                                    </div>
                                    <div class="b-post-alt__info">
                                        <span><a href="{ia_url type='url' item='articlecats' data=$article}">{$article.category_title}</a></span>
                                        <span>{lang key='on'} {$article.date_added|date_format:$core.config.date_format}</span>
                                    </div>
                                </div>
                            {/if}
                        {/foreach}
                    </div>
                    <div class="col-md-6">
                        {foreach $priority_category.articles as $article}
                            {if !$article@first}
                                <div class="b-post-alt2">
                                    {if $article.image}
                                        <a class="b-post-alt2__image" href="{ia_url type='url' item='articles' data=$article}">
                                            {ia_image file=$article.image type='thumbnail' title=$article.title class='img-responsive'}
                                        </a>
                                    {/if}

                                    <div class="b-post-alt2__body">
                                        <h4>{ia_url item='articles' type='link' data=$article text=$article.title}</h4>
                                        <span>{lang key='on'} {$article.date_added|date_format:$core.config.date_format}</span>
                                    </div>
                                </div>
                            {/if}
                        {/foreach}
                    </div>
                </div>
            {/if}
        </div>
    {/foreach}
{/if}