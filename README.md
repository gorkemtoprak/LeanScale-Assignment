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


## What would I add/change if I had time?

First of all, I would try to find an API where I could get what I wanted more easily instead of the APIs I used. I would definitely set up a service-backend connection and spend more time on the checkout screen. I might add google maps so users could find restaurants more easily on the map and also create a network manager that can be used more effectively. Lastly, I would make it fully functional and deliver it that way.

## Need to Improve

 - **Home Screen** should be created in a way that appeals to the more vivid eye. When the order is confirmed, order tracking can be viewed on the home page.

 - **Checkout Screen** has to be improved, for example some features such as adding or removing products and definitely total price should be on this screen also. Notes that the user wants to add should be saved in Hive and the edit feature should be added. After clicking the complete order button, it should send it to the my orders page and according to this my orders page should be added. More than one product should have been collected in a single line. 

 - **Restaurants/Restaurants Details Screen** definitely shouldn't be static but I couldn't find an API that shows restaurants the way I want. There should be a view checkout button and navigate it to the checkout screen. Telephone and address links could be added. In this way, users can call and get information by clicking a single button or copying the address and opening it from the maps app.

 - **Profile Screen** there should be a detailed profile screen. If I had more time, I would keep users in hive and create the edit profile screen. Since I kept user information in Hive, I could easily update their information. I would also put an icon in the AppBar and integrate a drawer inside it. Besides, I would add a few items in the drawer, for example, my orders, registered cards, licence & agreement, settings etc.

## Why am I using Flutter?

I used Flutter in this assignment because I could do the homework you gave in a short time and make it available on two (iOS and Android) platforms.

- Advantages are as follows;
    - You can publish on 2 platforms with a single code system, that is, it provides development experience on a single platform for iOS and Android.
    - Good documentation is essential for getting started with new technology. You can learn a lot from Flutter's tutorial library and it's all very insightful and meaningful with easy examples for basic use cases.
    - By using Flutter's own system, you can get useful and nice-looking structures.
    - Thanks to the Hot-Reload feature, you can see the changes you have made on the code on your application in a short time.

 - Disadvantages are as follows;
    - Dart. Because it is not a popular language. 
    - Some processes are very heavy especially compared to the native side, so its slowness is a disadvantage.
    - Larger app size, again compared to the native

So because of all these, I chose Flutter instead of others.

## API that I used
 - https://themealdb.com/api.php
 - https://food-g-app.web.app/shop/best-foods
 - https://jsonplaceholder.typicode.com/

## Screenshots

<p float="left">
  <img src="screenshot/home.png" width="20% height="50">              
  <img src="screenshot/cat_detail.png" width="20%" />
  <img src="screenshot/category_list.png" width="20%" />      
  <img src="screenshot/restaurants.png" width="20%" />      
  <img src="screenshot/rest_details.png" width="20%" />                                                   <img src="screenshot/checkout.png" width="20%" />        
  <img src="screenshot/checkout_confirm.png" width="20%" />                                              
  <img src="screenshot/profile.png" width="20%" />                  
</p>
