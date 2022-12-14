
import 'location.dart';
import 'networking.dart';

const apikey = 'cd0e65419e51f1c937e503152b77e7bc';
GLocation currentlocation = GLocation();

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async{
    await currentlocation.getCurrentLocation();
    final uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
      'q': cityName,
      'appid': apikey,
      'units': 'metric'
    });
    NetworkHelper networkHelper = NetworkHelper(uri);
    var weatherData = await networkHelper.getNetworkData();
    return weatherData;
  }
  Future<dynamic> getLocationWeather() async{
    await currentlocation.getCurrentLocation();
    final uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
      'lat': '${currentlocation.latitude}',
      'lon': '${currentlocation.longitude}',
      'appid': apikey,
      'units': 'metric'
    });
    NetworkHelper networkHelper = NetworkHelper(uri);
    var weatherData = await networkHelper.getNetworkData();
    return weatherData;
  }
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time in';
    } else if (temp > 20) {
      return 'Time for shorts and ๐ in';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค in';
    } else {
      return 'Bring a ๐งฅ just in case in';
    }
  }
}
