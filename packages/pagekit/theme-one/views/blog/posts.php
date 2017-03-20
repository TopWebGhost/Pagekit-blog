<?php $view->script('posts', 'blog:app/bundle/posts.js', 'vue') ?>

<div class="tm-container-large flex-container blog-list">
    <div class="blog-container">
    <?php foreach ($posts as $post) : ?>
        <article class="uk-article">

            <?php if ($image = $post->get('image.src')): ?>
                <div class="blog-header">
                    <div class="blog-image-container">
                        <div class="blog-image"><img src="<?= $image ?>" alt="<?= $post->get('image.alt') ?>"></div>
                    </div>
                    <div class="action">
                       <a href="<?= $view->url('@blog/id', ['id' => $post->id]) ?>"><p class="btn">Read more</p></a>
                       <?= __('<p class="date">%date%</p><p class="month-year">%my%</p>', ['%date%' => '<time datetime="'.$post->date->format('d').'" v-cloak>{{ "'.$post->date->format('d').'" }}</time>', '%my%' => '<time datetime="'.$post->date->format('M,Y').'" v-cloak>{{ "'.$post->date->format('M,Y').'" }}</time>' ]) ?>
                    </div>
                </div>
                <div class="blog-content">
                    <h1 class="article-title"><?= $post->title ?></h1>

                    <div class="article-content"><?= $post->excerpt ?: $post->content ?></div>
                </div>
            <?php else: ?>

                <h1 class="uk-article-title"><a href="<?= $view->url('@blog/id', ['id' => $post->id]) ?>"><?= $post->title ?></a></h1>

                <p class="uk-article-meta">
                    <?= __('Written by %name% on %date%', ['%name%' => $post->user->name, '%date%' => '<time datetime="'.$post->date->format(\DateTime::W3C).'" v-cloak>{{ "'.$post->date->format(\DateTime::W3C).'" | date "longDate" }}</time>' ]) ?>
                </p>

                <div class="uk-margin"><?= $post->excerpt ?: $post->content ?></div>

                <div class="uk-margin-large-top">
                    <ul class="uk-subnav uk-margin-bottom-remove">

                        <?php if (isset($post->readmore) && $post->readmore || $post->excerpt) : ?>
                        <li><a href="<?= $view->url('@blog/id', ['id' => $post->id]) ?>"><?= __('Read more') ?></a></li>
                        <?php endif ?>

                        <?php if ($post->isCommentable() || $post->comment_count) : ?>
                        <li><a href="<?= $view->url('@blog/id#comments', ['id' => $post->id]) ?>"><?= _c('{0} No comments|{1} %num% Comment|]1,Inf[ %num% Comments', $post->comment_count, ['%num%' => $post->comment_count]) ?></a></li>
                        <?php endif ?>

                    </ul>
                </div>
            <?php endif ?>
        </article>
        <?php endforeach ?>

    </div>
    <div class="contact-form">
        <h5>We always respond within 24hours</h5>
        <p class="description">If you have a question, comment or an idea, we'd love to hear from you. Fill out this form and you'll hear from us promptly!</p>

        <form>
            <input type="text" name="name" placeholder="Name *">

            <input type="text" name="org"  placeholder="Organization">

            <input type="email" name="email" placeholder="Email *">

            <input type="text" name="phone" placeholder="Phone *">

            <input type="number" name="numEmp" placeholder="Number of Employees">

            <input type="text" name="message" placeholder="Message">

            <a class="btn btn-round btn-send">Send</a>
        </form>

        <div class="ads">
            <h1 class="article-title">Lorem ipsum dolor sit amet cons ectetur adipisicing elit</h1>

            <div class="article-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do siusmod tempor incididunt ut labore et dolore magna aliqua.
                Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip exea commodo consequat.
            </div>

            <div class="article-image"><img src="storage/blogs/ads.png"></div>
        </div>
    </div>

</div>

<?php

    $range     = 3;
    $total     = intval($total);
    $page      = intval($page);
    $pageIndex = $page - 1;

?>

<?php if ($total > 1) : ?>
<div class="pagination-container">
    <ul class="uk-pagination">

        <?php for($i=1;$i<=$total;$i++): ?>
            <?php if ($i <= ($pageIndex+$range) && $i >= ($pageIndex-$range)): ?>

                <?php if ($i == $page): ?>
                <li class="uk-active"><span><?=$i?></span></li>
                <?php else: ?>
                <li>
                    <a href="<?= $view->url('@blog/page', ['page' => $i]) ?>"><?=$i?></a>
                <li>
                <?php endif; ?>

            <?php elseif($i==1): ?>

                <li>
                    <a href="<?= $view->url('@blog/page', ['page' => 1]) ?>">1</a>
                </li>

                <?php if ($page > 6): ?>
                    <li><span>...</span></li>
                <?php endif; ?>

            <?php elseif($i==$total-1): ?>
                <?php if ($i > 4 && $i > $page+$range): ?>
                    <li><span>...</span></li>
                <?php endif; ?>
                <li>
                    <a href="<?= $view->url('@blog/page', ['page' => $total-1]) ?>"><?=$total-1?></a>
                </li>
            <?php elseif($i==$total): ?>

                <li>
                    <a href="<?= $view->url('@blog/page', ['page' => $total]) ?>"><?=$total?></a>
                </li>

            <?php endif; ?>
        <?php endfor; ?>

    </ul>

    <div class="sticker">

    </div>
</div>
<?php endif ?>