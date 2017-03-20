<?php $view->script('post', 'blog:app/bundle/post.js', 'vue') ?>

<div class="blog-detail-container">
    <article class="uk-article tm-container-small">
        <div class="blog-header">
            <div class="link-container">
                <div class="left-link link">
                    <p class="date">Aug 5th</p>
                    <p class="content">It is a long established fact that a reader will be distracted by the readable</p>
                    <a href="<?= $view->url('@blog/id', ['id' => $post->id - 1]) ?>"><p class="icon icon-left"></p></a>
                </div>
                <div class="right-link link">
                    <p class="date">Aug 5th</p>
                    <p class="content">It is a long established fact that a reader will be distracted by the readable</p>
                    <a href="<?= $view->url('@blog/id', ['id' => $post->id + 1]) ?>"><p class="icon icon-right"></p></a>
                </div>
            </div>

        </div>
        <div class="blog-detail">
            <?php if ($image = $post->get('image.src')): ?>
                <div class="blog-image-container">
                    <div class="blog-image">
                        <img src="<?= $image ?>" alt="<?= $post->get('image.alt') ?>">
                    </div>
                </div>
            <?php endif ?>

            <h1 class="uk-article-title"><?= $post->title ?></h1>

            <div class="blog-detail-stick"></div>
            <div class="blog-detail-content">
                <div class="blog-meta">
                    <p class="date">
                        <?= __('%date%', ['%date%' => '<time datetime="'.$post->date->format(\DateTime::W3C).'" v-cloak>{{ "'.$post->date->format(\DateTime::W3C).'" | date "longDate" }}</time>' ]) ?>
                    </p>
                    <p class="author">
                       by <span><?= __('%name%', ['%name%' => $post->user->name]) ?></span>
                    </p>
                    <div class="n-comments">
                       <p class="icon icon-comment"></p><p><?= __('%count%', ['%count%' => $post->comment_count]) ?></p>
                    </div>
                </div>

                <div><?= $post->content ?></div>
            </div>

            <div class="contact-form-space">
                <div class="contact-form-container">
                    <div class="wrap-container">
                        <div class="label">
                            <h2>Dont' Wait Unti You Need it To Have It</h2>
                            <p>Your Communications are just waiting to be intercepted. But after they have your information, it's too late.</p>
                            <div class="phone-image">
                                <img src="packages/pagekit/theme-one/img/phone.png">
                            </div>

                        </div>

                        <div class="contact-form absolute-dialog">
                            <h2>Free Trial</h2>
                            <p class="description">Fill in your contact information and we'll be in touch</p>
                            <form>
                                <input type="text" name="name" placeholder="Name *">

                                <input type="text" name="org"  placeholder="Organization *">

                                <input type="email" name="email" placeholder="Email *">

                                <input type="text" name="phone" placeholder="Phone *">

                                <input type="number" name="numEmp" placeholder="Number of Employees">

                                <input type="text" name="message" placeholder="Message">

                                <a class="btn btn-round btn-send">Get started</a>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="contact-form-effect absolute-dialog">

                </div>
            </div>
            <?= $view->render('blog/comments.php') ?>
        </div>


    </article>

</div>
