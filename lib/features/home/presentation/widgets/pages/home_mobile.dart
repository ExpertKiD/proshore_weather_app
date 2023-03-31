part of 'home.dart';

class HomeMobileWidget extends StatelessWidget {
  const HomeMobileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<Widget> mWeatherForecasts = <Widget>[
      WeatherForecastBanner(),
      WeatherForecastTile(),
      WeatherForecastTile(),
      WeatherForecastTile(),
      WeatherForecastTile(),
      WeatherForecastTile(),
      WeatherForecastTile(),
      WeatherForecastTile(),
    ];

    return Consumer<DailyForecastNotifier>(
      builder: (context, dailyForecastNotifier, child) {
        return Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Image.asset(
                  IconAssets.logo,
                  width: 150,
                ),
                const SizedBox(width: 4),
                Flexible(
                  child: Text(
                    dailyForecastNotifier.city,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            actions: [
              IconButton(
                onPressed: () async {},
                icon: const Icon(Icons.more_vert_rounded),
              )
            ],
          ),
          body: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => mWeatherForecasts[index],
            separatorBuilder: (context, index) => const SizedBox.shrink(),
            itemCount: mWeatherForecasts.length,
          ),
        );
      },
    );
  }
}
