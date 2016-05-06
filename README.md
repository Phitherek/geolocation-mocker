Geolocation Mocker
==================

This is a simple Sintara app to facilitate testing web applications that use geolocation engine. Its responses are compliant with Google Maps Geolocation API.

Setup
-----
````
bundle install
````
Running
-------

````
rackup
````

Usage
-----

````
GET /
````

Returns HTML with description page

````
POST /geolocate/[latitude]/[longitude]
````

Returns JSON response:
````
{
  "location": {
    "lat": [latitude]
    "lng": [longitude]
  },
  "accuracy": 10.0
}
````
It can also return a Parse Error described in Google' s API documentation.

Enjoy!