
<nav class="navbar navbar-static-top" role="navigation" id="main-nav">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse-top">
                <span class="sr-only"><?php _e('Toggle navigation', 'marlimseguros'); ?></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<?php echo esc_url( home_url( '/' ) ); ?>">
				<?php
				if( has_custom_logo() ):
					$custom_logo_id = get_theme_mod( 'custom_logo' );
					$blogname = get_bloginfo('name');
					echo wp_get_attachment_image($custom_logo_id, 'full', false, array('alt' => $blogname, 'class' => 'img-responsive'));
				else:
					bloginfo( 'name' );
				endif;
				?>
            </a>
        </div>

        <div class="collapse navbar-collapse navbar-collapse-top">
<!--            <a href="#" id="sign-status" ><span>Fechado</span></a>-->
            <a href="#" id="sign-status" class="open"><span>Aberto</span></a>
			<?php
                wp_nav_menu(array(
                    'theme_location'    => 'main_menu',
                    'depth'             => 2,
                    'container'         => '',
                    'menu_class'        => 'nav navbar-nav navbar-menu',
                    'fallback_cb'       => 'wp_bootstrap_navwalker::fallback',
                    'walker'            => new wp_bootstrap_navwalker()
                ));
			?>
        </div>
    </div>
</nav>