<?php

add_action( 'init', 'register_post_types' );

	function register_post_types(){
	
		register_post_type( 'decor', [
			'label'  => null,
			'labels' => [
				'name'               => 'Декор', // основное название для типа записи
				'singular_name'      => 'Декор', // название для одной записи этого типа
				'add_new'            => 'Добавить Декор', // для добавления новой записи
				'add_new_item'       => 'Добавление Декора', // заголовка у вновь создаваемой записи в админ-панели.
				'edit_item'          => 'Редактирование Декора', // для редактирования типа записи
				'new_item'           => 'Новый Декор', // текст новой записи
				'view_item'          => 'Смотреть Декор', // для просмотра записи этого типа.
				'search_items'       => 'Искать Декор', // для поиска по этим типам записи
				'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
				'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
				'parent_item_colon'  => '', // для родителей (у древовидных типов)
				'menu_name'          => 'Декор', // название меню
			],
			'description'            => '',
			'public'                 => true,
			// 'publicly_queryable'  => null, // зависит от public
			// 'exclude_from_search' => null, // зависит от public
			// 'show_ui'             => null, // зависит от public
			// 'show_in_nav_menus'   => null, // зависит от public
			'show_in_menu'           => true, // показывать ли в меню админки
			// 'show_in_admin_bar'   => null, // зависит от show_in_menu
			'show_in_rest'        => true, // добавить в REST API. C WP 4.7
			'rest_base'           => null, // $post_type. C WP 4.7
			'menu_position'       => 4,
			'menu_icon'           => 'dashicons-buddicons-groups',
			//'capability_type'   => 'post',
			//'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
			//'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
			'hierarchical'        => false,
			'supports'            => [ 'title','thumbnail', 'editor'], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
			'taxonomies'          => [],
			'has_archive'         => true,
			'rewrite'             => true,
			'query_var'           => true,
		] );
    }