<?php

class CustomSite
{
    function __construct() {
        add_action( 'after_setup_theme', array($this, 'custom_theme_setup') );
        add_action( 'add_meta_boxes', array($this, 'custom_meta_boxes'), 20 );
	    add_action( 'acf/init', array($this, 'acf_init') );
	    add_action( 'get_header', array($this, 'remove_tags_header') );
	    add_action( 'init', array($this, 'custom_init') );
        add_action( 'wp_enqueue_scripts', array($this, 'custom_styles_scripts_priority'), 20 );
        add_action( 'wp_enqueue_scripts', array($this, 'custom_styles_scripts') );
        add_action( 'get_footer', array($this, 'add_footer_styles') );
       	add_filter( 'wp_nav_menu_items', array($this, 'apply_relative_menu_item'), 10, 2 );
        add_filter( 'wp_pagenavi', array($this, 'bootstrap_pagination'), 10, 2 );
	    add_action( 'pre_get_posts', array($this, 'custom_pre_get_posts') );
    }

    // Remover/adicionar suportes do tema
    function custom_theme_setup() {
        remove_theme_support( 'custom-header' );
        add_theme_support( 'custom-logo' );
    }

    // Modificar metaboxes
    function custom_meta_boxes() {
        remove_meta_box( 'postcustom', 'post', 'normal' );
    }

	// Chave de API do Google para o ACF
    function acf_init() {
        acf_update_setting('google_api_key', '');
    }

    // Remover tags do cabeçalho da página
    function remove_tags_header() {
        remove_action( 'wp_head', 'wp_generator' );
        remove_action( 'wp_head', 'wlwmanifest_link' );
        remove_action( 'wp_head', 'rsd_link' );
        remove_action( 'wp_head', 'custom_header_text_color' );
    }

    // Remover emojis da página e adicionar shortcodes
    function custom_init() {
        remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
        remove_action( 'admin_print_scripts', 'print_emoji_detection_script' );
        remove_action( 'wp_print_styles', 'print_emoji_styles' );
        remove_action( 'admin_print_styles', 'print_emoji_styles' );
        remove_filter( 'the_content_feed', 'wp_staticize_emoji' );
        remove_filter( 'comment_text_rss', 'wp_staticize_emoji' );
        remove_filter( 'wp_mail', 'wp_staticize_emoji_for_email' );

        // require_once( get_stylesheet_directory() . '/includes/shortcodes.php' );

        // Usar jQuery do CDN
	    if (!is_admin()) {
		    wp_deregister_script('jquery');
		    wp_register_script('jquery', 'https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js', false, '1.12.4');
		    wp_enqueue_script('jquery');
	    }
    }

    // Remover/adicionar CSS e Javascript prioritarios
    function custom_styles_scripts_priority() {
        // Remover Bootstrap do tema para usar CDN
        wp_dequeue_style ( 'bootstrap.css' );
        wp_dequeue_script( 'theme-js' );

        // Wrap the scripts in a conditional comment
        wp_script_add_data( 'html5shiv-js', 'conditional', 'lt IE 9' );
        wp_script_add_data( 'respond-js', 'conditional', 'lt IE 9' );
    }

    // CSS e Javascript personalizados
    function custom_styles_scripts() {
        $_STYLESHEET_DIR = get_stylesheet_directory_uri();

	    wp_enqueue_style( 'google-fonts', 'https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,700' );
	    wp_enqueue_style( 'bootstrap', 	  'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css', array(), '3.3.7' );
	    wp_enqueue_style( 'owl-carousel', $_STYLESHEET_DIR . '/css/owl.carousel.min.css', array(), '2.2.1' );
	    wp_enqueue_style( 'owl-theme',    $_STYLESHEET_DIR . '/css/owl.theme.default.min.css', array(), '2.2.1' );
	    wp_enqueue_style( 'main-style',   $_STYLESHEET_DIR . '/css/main.css', array(), '1.0.0' );

	    wp_enqueue_script( 'bootstrap', 	'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js', array( 'jquery' ), '3.3.7', true );
	    wp_enqueue_script( 'parallax', 	    $_STYLESHEET_DIR . '/js/jquery.parallax.min.js', array( 'jquery' ), '1.0.0', true );
	    wp_enqueue_script( 'owl-carousel', 	$_STYLESHEET_DIR . '/js/owl.carousel.min.js', array( 'jquery' ), '2.2.1', true );
	    wp_enqueue_script( 'mask', 			$_STYLESHEET_DIR . '/js/jquery.mask.min.js', array( 'jquery' ), '1.14.0', true );
        wp_enqueue_script( 'custom-script', $_STYLESHEET_DIR . '/js/custom.js', array( 'jquery' ), '1.0.0', true );
    }

    // Adicionar styles no final da pagina
    function add_footer_styles() {

    }

    // Permitir itens do menu com link interno
   	function apply_relative_menu_item($items, $args) {
        if(!is_front_page()) {
        	$items = preg_replace('/href="#/', 'href="'.get_bloginfo("url").'/#', $items);
       	}
       	return $items;
   	}

    // Paginação com plugin PageNavi usando a estrututra do Bootstrap
    function bootstrap_pagination($html) {
        $out = str_replace('<div','',$html);
        $out = preg_replace('/class=[\'\"]wp-pagenavi[\'\"]>/','',$out);
        $out = str_replace('<a','<li><a',$out);
        $out = str_replace('</a>','</a></li>',$out);
        $out = str_replace('<span','<li><span',$out);
        $out = str_replace('</span>','</span></li>',$out);
        $out = str_replace('</div>','',$out);
        $out = preg_replace('/<li><span class\=[\'\"]current[\'\"]/','<li class="active"><span',$out);

        return '<nav class="pagination-wrapper" aria-label="..."><ul class="pagination">'.$out.'</ul></nav>';
    }

	function custom_pre_get_posts( $query ) {
		
	}
}

new CustomSite();
