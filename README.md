# foodstream API

## Overview

foodstream API serves as the back-end for the foodstream app which can be used on both mobile and desktop environments.

The app was developed primarily for institutional user who have excess, edible but unmarketable food. Users can post food  

## Usage
#### Visit [foodstre.am](http://foodstre.am) to sign up and see it in action.

## Features

Users have the ability to...

* Post available food with a specified pick-up time and an uploaded image.
* Search for and claim food that has been posted by other users.
* Chat within application about posts.
* Narrow searches within a certain radius of their current location.
* Access directions via Google maps integration.
* Create calendar events via iCal integration for posts claimed.
* Rate claimants based on their reliability.

## Let's get technical

* API interaction with a native IOS Angular front-end
* Photos upload to Amazon Web Services' [S3](https://aws.amazon.com/s3/) via [Paperclip](https://github.com/thoughtbot/paperclip)
* E-mail delivery via Rails' mailer
* Generate iCal files using [iCalendar](https://github.com/icalendar/icalendar)
* Calculate distances using [GeoKit](https://github.com/geokit/geokit)
* Hosted on [Heroku](http://heroku.com)
