<?php

use Carbon_Fields\Container;
use Carbon_Fields\Field;



add_action('carbon_fields_register_fields', 'site_carbon');
function site_carbon()
{

    Container::make('theme_options', 'Контакты')

        ->set_page_menu_position(2)
        ->set_icon('dashicons-megaphone')
        ->add_tab(__('Контакты'), array(
            Field::make('text', 'crb_header_link', 'Ссылка в шапке')
                ->set_width(50),
            Field::make('text', 'crb_header_link_text', 'Текст ссылки в шапке')
                ->set_width(50),

            Field::make('text', 'crb_address', 'Адрес')
                ->set_width(50),
            Field::make('image', 'crb_address_icon', 'Иконка адреса')
                ->set_width(50),

            Field::make('text', 'crb_phone', 'Телефон')
                ->set_width(33),
            Field::make('text', 'crb_phone_link', 'Ссылка телефона')
                ->set_width(33),
            Field::make('image', 'crb_phone_link_img', 'Изображение телефона')
                ->set_width(33),

            Field::make('complex', 'crb_messengers_contacts', 'Ссылки на мессенджеры')
                ->add_fields(array(
                    Field::make('text', 'crb_contact_name', 'Название')
                        ->set_width(25),
                    Field::make('image', 'crb_contact_image', 'Иконка мессенджера')
                        ->set_width(25),
                    Field::make('text', 'crb_contact_link', 'Ссылка мессенджера')
                        ->set_width(25),
                    Field::make('color', 'crb_contact_background', 'Цвет фона иконки')
                    ->set_width(25),
                )),

            Field::make('complex', 'crb_block_contacts_links', 'Ссылки в блоке Контакты')
                ->add_fields(array(
                    Field::make('text', 'crb_link_name', 'Название')
                        ->set_width(33),
                    Field::make('image', 'crb_block_contacts_link_img', 'Иконка ссылки')
                        ->set_width(33),
                    Field::make('text', 'crb_block_contacts_link_link', 'Ссылка')
                        ->set_width(33),
                    Field::make('color', 'crb_block_contact_background', 'Цвет фона иконки')
                    ->set_width(25),
                )),

            Field::make('text', 'crb_map_code', 'Вставить яндекс карту')
                ->set_width(100),


            // Field::make('text', 'crb_header_map', 'Заголовок')
            //     ->set_width(33),
            // Field::make('image', 'crb_header_map_icon', 'Иконка')
            //     ->set_width(33),
            // Field::make('text', 'crb_link_map', 'Ссылка')
            //     ->help_text('слаг страницы, например /contacts')
            //     ->set_width(33),



            // Field::make('text', 'crb_header_shed', 'Часы работы')
            //     ->set_width(50),
            // Field::make('image', 'crb_header_shed_icon', 'Иконка')
            //     ->set_width(50),

        ))

        // ->add_tab(__('Мессенджеры'), array(
        //     Field::make('complex', 'messengers', 'Ссылки на мессенджеры')
        //         ->add_fields(array(

        //             Field::make('text', 'crb_mes_name', 'Название')

        //                 ->set_width(33),

        //             Field::make('text', 'crb_mes_link', 'Ссылка на контакт')

        //                 ->set_width(33),

        //             Field::make('image', 'crb_mes_image', 'Иконка контакта')

        //                 ->set_width(33),
        //         ))
        // ))

        ->add_tab(__('Форма заказа'), array(
            Field::make('text', 'crb_order_button_text', 'Текст кнопки заказа')
                ->set_width(50),
            Field::make('text', 'crb_order_shortcode', 'Шорткод для формы заказа')
                ->set_width(50),

            // Field::make('text', 'crb_cf_adv', 'Контактная форма для страницы Реклама')
            //     ->help_text('вставьте шорткод для формы обратной связи в это поле')
            //     ->set_width(33),

        ))

        ->add_tab(__('Файлы'), array(

            Field::make("file", "crb_politics_file", "Файл политики (PDF)")
                ->set_value_type('url'), // сохранить в метаполе ссылку на файл

            Field::make("file", "crb_advertising_file", "Файл презентации для страницы Реклама (PDF)")
                ->set_value_type('url'), // сохранить в метаполе ссылку на файл

            Field::make("file", "crb_rent_file1", "Файл общей презентации для страницы Аренда (PDF)")
                ->set_value_type('url'), // сохранить в метаполе ссылку на файл
            Field::make("file", "crb_rent_file2", "Файл презентации по участку для страницы Аренда (PDF)")
                ->set_value_type('url'), // сохранить в метаполе ссылку на файл

        ))

        ->add_tab(__('Другое'), array(

            Field::make("image", "crb_footer_decor", "Декоративная картинка для футера")

        ));



    /*POST META*/

    Container::make('post_meta', 'Первый экран')
        ->show_on_page('main')

        ->add_tab(__('Слайдер первого экрана'), array(
            Field::make('complex', 'crb_hero_slides', 'Слайды первого экрана')
                ->add_fields(array(
                    Field::make('image', 'crb_hero_img', 'Изображение для слайда')
                        ->set_width(50),
                    Field::make('image', 'crb_hero_img_mob', 'Изображение для слайда(мобильная версия)')
                        ->set_width(50),
                    Field::make('text', 'crb_hero_heading', 'Заголовок слайда')
                        ->set_width(33),
                    Field::make('text', 'crb_hero_desc', 'Описание слайда')
                        ->set_width(33),
                    Field::make('text', 'crb_hero_link', 'Ссылка слайда')
                        ->set_width(50),
                    Field::make('text', 'crb_hero_link_text', 'Текст ссылки слайда')
                        ->set_width(50),
                )),
        ))

        ->add_tab(__('Блок Контакты'), array(
            Field::make('image', 'crb_contacts_background', 'Фон секции'),
            Field::make('rich_text', 'crb_contacts_text', 'Текст для секции контактов'),
            Field::make('rich_text', 'crb_contacts_text_border', 'Текст для секции контактов (в рамочке)')
        ));

    Container::make('post_meta', 'Добавить контент на эту страницу')
        ->show_on_post_type('decor')
        ->add_tab(__('Контент страницы декора'), array(
            Field::make('rich_text', 'crb_decor_desc', 'Краткое описание страницы')
                ->help_text('Фрагмент общего описания, выводится под заголовком страницы')
                ->set_width(100),

            Field::make('complex', 'crb_decor_items', 'Продукция в этой категории')
                ->add_fields(array(
                    Field::make('image', 'crb_decor_item_img', 'Изображение декора'),
                    Field::make('text', 'crb_decor_item_head', 'Название декора'),
                    Field::make('rich_text', 'crb_decor_item_desc', 'Описание декора'),
                ))

        ));


    //->add_tab(__('Блок Контакты'), array(

    //))


}
