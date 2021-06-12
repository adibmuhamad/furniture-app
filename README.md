# DREAM HOME APP

A simple application to display augmented reality using Flutter and ARCore!

Ilustration [Dribbble](https://dribbble.com/shots/15823769-DREAM-HOME-APP)

<a href='https://play.google.com/store/apps/details?id=com.story.chicken.my.furniture_app'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width="200" height="80"/></a>

## Features

1. Get list of furniture
2. Display 3d object on augmented reality

## Supported Device

- Android device with minimum API 24 **(Android 7.0)**

## Build App requirements

- Recommended using Flutter 2.2.1 in this [Stable channel](https://github.com/flutter/flutter.git)
- Using Dart v2.13.1

## Instructions

1. Clone from this repository
   - Copy repository url
   - Open your fav code editor _(Recommended using Android Studio)_
   - New -> Project from Version Control..
   - Paste the url, click OK
2. Run "flutter pub get" in the project directory or click the highlighted instruction in Android Studio
3. Prepare the Android Virtual Device or real device
4. Run main.dart

## Code Design & Structure

This project directory consist of 5 directories:
1. **Pages**: consists page that shown to the user
   - `ar_page`: provide the screen to display augmented reality using back camera
   - `detail_page`: provide the detail furniture screen for the components and declare the basic functional
   - `home_page`:  provide the main screen for the components and declare the basic functional
2. **Widgets**: consists widgets that build the screen and do it's function
   - `category_card`: widget that provide categories tab view
   - `custom_dialog`: widget that provide custom dialog
   - `info_dialog`: widget that provide custom dialog that contain of list view/slider
   - `page_indicator`:  widget that provide indicator view
   - `product_card`:  widget that provide widget to product display
