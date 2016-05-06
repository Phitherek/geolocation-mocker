require 'sinatra/base'
require 'sinatra/json'

class GeolocationMocker < Sinatra::Base
  get '/' do
    '<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Geolocation Mocker</title>
</head>
<body>
<h1>Geolocation Mocker</h1>
<p>Geolocation Mocker is up and running! To simulate geolocation, redirect geolocation engine to /geolocate/[latitude]/[longitude] - Enjoy!</p>
<hr />
<small>&copy; 2016 by Phitherek_</small>
</body>
</html>'
  end

  post '/geolocate/:lat/:lon' do
    lat = params[:lat].to_f if params[:lat]
    lon = params[:lon].to_f if params[:lon]
    if lat.nil? || lon.nil?
      json({ error: { errors: [{ domain: 'global', reason: 'parseError', message: 'Parse Error' }], code: 400, message: 'Parse Error' } })
    else
      json({ location: { lat: lat, lng: lon }, accuracy: 10.0 })
    end
  end
end