font-ionicons-rails [![Gem Version](https://img.shields.io/badge/gem-v2.0.1.3-blue.svg)](https://github.com/ricardoemerson/font-ionicons-rails) [![Build Status](https://img.shields.io/badge/build-passing-green.svg)](https://github.com/ricardoemerson/font-ionicons-rails)
==============================================================================================================================================================================================================================================================================

The font-ionicons-rails is the best gem made for ionicons and provides the [ionicons](http://ionicons.com/) web fonts and stylesheets as a Rails engine for use with the asset pipeline.

Installation
------------

Add this to your Gemfile:

```ruby
gem "font-ionicons-rails"
```

or

```ruby
gem "font-ionicons-rails", git: 'https://github.com/ricardoemerson/font-ionicons-rails.git'
```

and run `bundle install`.

Usage
-----

In your `application.css`, include the css file:

```css
/*
 *= require ionicons
 */
```

Then restart your webserver if it was previously running.

### Sass Support

If you prefer [SCSS](http://sass-lang.com/documentation/file.SASS_REFERENCE.html), add this to your`application.css.scss` file:

```scss
@import "ionicons";
```

If you use the [Sass indented syntax](http://sass-lang.com/docs/yardoc/file.INDENTED_SYNTAX.html), add this to your `application.css.sass` file:

```sass
@import ionicons
```

### Helpers

There are also some helpers (`ion_icon`) for improve use.

```ruby
ion_icon "camera"
# => <i class="ion-camera"></i>

ion_icon "camera", text: "Take a photo"
# => <i class="ion-camera"></i> Take a photo

ion_icon "chevron-right", text: "Get started", right: true
# => Get started <i class="ion-chevron-right"></i>

content_tag(:li, ion_icon("checkmark-round", text: "Bulleted list item"))
# => <li><i class="ion-checkmark-round"></i> Bulleted list item</li>
```

License
-------

-	The [ionicons](http://ionicons.com/) font is licensed under the [MIT license](http://opensource.org/licenses/MIT).

Special Thanks
--------------

The font-ionicons-rails was inspired by [font-awesome-rails](https://github.com/bokmann/font-awesome-rails) made by David Bock.
