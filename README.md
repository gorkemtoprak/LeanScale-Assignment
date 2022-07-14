# Lean Scale Assignment

Food delivery application assignment. I tried to do as much as I could in 2 days. The application has different foods, categories and restaurants. Features are as follows; 
 - Stacked as a state management
 - Provider for theme management
 - Hive for caching/local db
 - Autoroute for routing
 - ConnectivityPlus for managing the network 
 - HTTP for request and response process
 - Lottie for empty screens
 - Foods and Restaurants can be marked as favourite/unfavourite
 - Have a checkout screen
 - Foods details fetching from API and images from URL

| Pros | Cons  |
| :-----: | :-: | 
| Beautiful User Interfaces | Unfortunately restaurants were given statically because I couldn't find any public APIs| 
| Unit Test Done | Profile screen could have been improved| 

## Folder Structure

.
├── core
│   ├── enums
│   │   └── theme_enums.dart
│   ├── init
│   │   ├── provider
│   │   │   ├── provider_list.dart
│   │   │   └── theme_notifier.dart
│   │   └── theme
│   │       ├── light
│   │       │   ├── light_color_schema.dart
│   │       │   ├── light_text_theme.dart
│   │       │   └── light_theme_interface.dart
│   │       ├── app_theme_light.dart
│   │       └── app_theme.dart
│   ├── manager
│   │   ├── hive_manager.dart
│   │   └── network_manager.dart
│   ├── navigation
│   │   ├── router.dart
│   │   └── router.gr.dart
│   └── utils
│       ├── constants.dart
│       ├── datas.dart
│       └── gradients.dart
├── features
│   ├── categories
│   │   ├── subviews
│   │   │   └── categories_detailed_view.dart
│   │   └── categories_view.dart
│   ├── checkout
│   │   ├── widgets
│   │   │   ├── checkout_items_widget.dart
│   │   │   └── restaurant_information_widget.dart
│   │   └── checkout_view.dart
│   ├── home
│   │   ├── widgets
│   │   │   ├── additional_detail_widget.dart
│   │   │   ├── card_widget.dart
│   │   │   └── home_titles_widget.dart
│   │   ├── home_view_model.dart
│   │   └── home_view.dart
│   ├── master
│   │   ├── master_view_model.dart
│   │   └── master_view.dart
│   ├── profile
│   │   ├── profile_view_model.dart
│   │   └── profile_view.dart
│   └── restaurants
│       ├── subviews
│       │   └── restaurant_detailed_view.dart
│       ├── widgets
│       │   ├── additional_information_widget.dart
│       │   ├── extra_information_widget.dart
│       │   ├── products_widget.dart
│       │   └── restaurants_widget.dart
│       ├── restaurants_view_model.dart
│       └── restaurants_view.dart
├── models
│   ├── category_model.dart
│   ├── category_model.g.dart
│   ├── food_model.dart
│   ├── food_model.g.dart
│   ├── restaurant_food_model.dart
│   ├── restaurant_food_model.g.dart
│   ├── user_model.dart
│   └── user_model.g.dart
├── shared
│   ├── custom_app_bar.dart
│   ├── custom_category_container.dart
│   ├── custom_elevated_button.dart
│   ├── custom_empty_view.dart
│   ├── custom_headline.dart
│   ├── custom_icon.dart
│   ├── custom_quantity_widget.dart
│   └── custom_text_form_field.dart
├── generated_plugin_registrant.dart
└── main.dart

## What would I add/change if I had time?

First of all, I would try to find an API where I could get what I wanted more easily instead of the APIs I used. I would definitely set up a service-backend connection and spend more time on the checkout screen. I might add google maps so users could find restaurants more easily on the map and also create a network manager that can be used more effectively. Lastly, I would make it fully functional and deliver it that way.

## Need to Improve

 - **Home Screen** should be created in a way that appeals to the more vivid eye. When the order is confirmed, order tracking can be viewed on the home page.

 - **Checkout Screen** has to be improved, for example some features such as adding or removing products and definitely total price should be on this screen also. Notes that the user wants to add should be saved in Hive and the edit feature should be added. After clicking the complete order button, it should send it to the my orders page and according to this my orders page should be added. More than one product should have been collected in a single line. 

 - **Restaurants/Restaurants Details Screen** definitely shouldn't be static but I couldn't find an API that shows restaurants the way I want. There should be a view checkout button and navigate it to the checkout screen. Telephone and address links could be added. In this way, users can call and get information by clicking a single button or copying the address and opening it from the maps app.

 - **Profile Screen** there should be a detailed profile screen. If I had more time, I would keep users in hive and create the edit profile screen. Since I kept user information in Hive, I could easily update their information. I would also put an icon in the AppBar and integrate a drawer inside it. Besides, I would add a few items in the drawer, for example, my orders, registered cards, licence & agreement, settings etc.

## Why am I using Flutter?

## API that I used
 - https://themealdb.com/api.php
 - https://food-g-app.web.app/shop/best-foods
 - https://jsonplaceholder.typicode.com/

