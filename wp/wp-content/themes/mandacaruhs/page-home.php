<?php get_header(); ?>

<?php get_template_part('template-part', 'head'); ?>

<?php get_template_part('template-part', 'topnav'); ?>

<?php // theloop
if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

    <div class="section section-home-first" >
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h2 class="section-title">Destaques</h2>

                    <div class="panel panel-widget no-padding size-2">
                        <div class="panel-body">
                            <div id="carousel-highlights" class="owl-carousel owl-theme">
                                <div class="item" style="background-image: url('http://pipsum.com/1024x768.jpg?v=1')">
                                    <div class="carousel-caption">
                                        Teste
                                    </div>
                                </div>
                                <div class="item" style="background-image: url('http://pipsum.com/1024x768.jpg?v=2')">
                                    <div class="carousel-caption">
                                        Teste
                                    </div>
                                </div>
                                <div class="item" style="background-image: url('http://pipsum.com/1024x768.jpg?v=3')">
                                    <div class="carousel-caption">
                                        Teste
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <h2 class="section-title">Eventos</h2>

                    <div class="panel panel-widget size-3">
                        <div class="panel-body">
                            <ul class="media-list list-events">
                                <li class="media">
                                    <div class="media-left">
                                        <a href="#">
                                            <div class="media-object">
                                                <span class="day">Domingo</span>
                                                <span class="date">20</span>
                                                <span class="month">Abr</span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="media-body media-middle">
                                        <h4 class="media-heading"><a href="#">Noite de Eletrônica</a></h4>
                                        <p>20/04 às 18:00</p>
                                    </div>
                                </li>
                                <li class="media">
                                    <div class="media-left">
                                        <a href="#">
                                            <div class="media-object">
                                                <span class="day">Domingo</span>
                                                <span class="date">20</span>
                                                <span class="month">Abr</span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="media-body media-middle">
                                        <h4 class="media-heading"><a href="#">Noite de Eletrônica</a></h4>
                                        <p>20/04 às 18:00</p>
                                    </div>
                                </li>
                                <li class="media">
                                    <div class="media-left">
                                        <a href="#">
                                            <div class="media-object">
                                                <span class="day">Domingo</span>
                                                <span class="date">20</span>
                                                <span class="month">Abr</span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="media-body media-middle">
                                        <h4 class="media-heading"><a href="#">Noite de Eletrônica</a></h4>
                                        <p>20/04 às 18:00</p>
                                    </div>
                                </li>
                                <li class="media">
                                    <div class="media-left">
                                        <a href="#">
                                            <div class="media-object">
                                                <span class="day">Domingo</span>
                                                <span class="date">20</span>
                                                <span class="month">Abr</span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="media-body media-middle">
                                        <h4 class="media-heading"><a href="#">Noite de Eletrônica</a></h4>
                                        <p>20/04 às 18:00</p>
                                    </div>
                                </li>
                                <li class="media">
                                    <div class="media-left">
                                        <a href="#">
                                            <div class="media-object">
                                                <span class="day">Domingo</span>
                                                <span class="date">20</span>
                                                <span class="month">Abr</span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="media-body media-middle">
                                        <h4 class="media-heading"><a href="#">Noite de Eletrônica</a></h4>
                                        <p>20/04 às 18:00</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php endwhile; endif; ?>

<?php get_footer(); ?>
