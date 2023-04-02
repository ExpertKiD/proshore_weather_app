abstract class WeatherArtworkAssets {
  static const String clear = 'assets/images/artworks/art_clear.png';
  static const String clouds = 'assets/images/artworks/art_clouds.png';
  static const String fog = 'assets/images/artworks/art_fog.png';
  static const String lightClouds =
      'assets/images/artworks/art_light_clouds.png';
  static const String lightRain = 'assets/images/artworks/art_light_rain.png';
  static const String rain = 'assets/images/artworks/art_rain.png';
  static const String snow = 'assets/images/artworks/art_snow.png';
  static const String storm = 'assets/images/artworks/art_storm.png';

  static String weatherArtWorkFrom({required int weatherIconId}) {
    if (weatherIconId >= 200 && weatherIconId <= 232) {
      return storm;
    } else if (weatherIconId >= 300 && weatherIconId <= 321) {
      return lightRain;
    } else if (weatherIconId >= 500 && weatherIconId <= 504) {
      return rain;
    } else if (weatherIconId == 511) {
      return snow;
    } else if (weatherIconId >= 520 && weatherIconId <= 531) {
      return rain;
    } else if (weatherIconId >= 600 && weatherIconId <= 622) {
      return snow;
    } else if (weatherIconId >= 701 && weatherIconId <= 761) {
      return fog;
    } else if (weatherIconId == 761 || weatherIconId == 781) {
      return storm;
    } else if (weatherIconId == 800) {
      return clear;
    } else if (weatherIconId == 801) {
      return lightClouds;
    } else if (weatherIconId >= 802 && weatherIconId <= 804) {
      return clouds;
    }

    return clear;
  }
}

abstract class IconAssets {
  static const String clear = 'assets/images/icons/ic_clear.png';
  static const String cloudy = 'assets/images/icons/ic_cloudy.png';
  static const String fog = 'assets/images/icons/ic_fog.png';
  static const String lightClouds = 'assets/images/icons/ic_light_clouds.png';
  static const String lightRain = 'assets/images/icons/ic_light_rain.png';
  static const String rain = 'assets/images/icons/ic_rain.png';
  static const String snow = 'assets/images/icons/ic_snow.png';
  static const String storm = 'assets/images/icons/ic_storm.png';
  static const String logo = 'assets/images/icons/ic_logo.png';

  static String weatherIconFrom({required int weatherIconId}) {
    if (weatherIconId >= 200 && weatherIconId <= 232) {
      return storm;
    } else if (weatherIconId >= 300 && weatherIconId <= 321) {
      return lightRain;
    } else if (weatherIconId >= 500 && weatherIconId <= 504) {
      return rain;
    } else if (weatherIconId == 511) {
      return snow;
    } else if (weatherIconId >= 520 && weatherIconId <= 531) {
      return rain;
    } else if (weatherIconId >= 600 && weatherIconId <= 622) {
      return snow;
    } else if (weatherIconId >= 701 && weatherIconId <= 761) {
      return fog;
    } else if (weatherIconId == 761 || weatherIconId == 781) {
      return storm;
    } else if (weatherIconId == 800) {
      return clear;
    } else if (weatherIconId == 801) {
      return lightClouds;
    } else if (weatherIconId >= 802 && weatherIconId <= 804) {
      return cloudy;
    }
    return clear;
  }
}
