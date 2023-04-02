part of 'home.dart';

class HomeMobileWidget extends StatefulWidget {
  const HomeMobileWidget({Key? key}) : super(key: key);

  @override
  State<HomeMobileWidget> createState() => _HomeMobileWidgetState();
}

class _HomeMobileWidgetState extends State<HomeMobileWidget> {
  @override
  void initState() {
    super.initState();

    final forecastNotifier =
        Provider.of<DailyForecastNotifier>(context, listen: false);

    forecastNotifier.addListener(_forecastListener);
  }

  @override
  dispose() {
    super.dispose();

    final forecastNotifier =
        Provider.of<DailyForecastNotifier>(context, listen: false);

    forecastNotifier.removeListener(_forecastListener);
  }

  @override
  Widget build(BuildContext context) {
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
                context.watch<DailyForecastNotifier>().city,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => <PopupMenuEntry<int>>[
              const PopupMenuItem<int>(
                value: 1,
                child: Text('Change City'),
              ),
            ],
            onSelected: (selectedIndex) {
              if (selectedIndex == 1) {
                showChangeCityForm(context: context);
              }
            },
          ),
        ],
      ),
      body: Consumer<DailyForecastNotifier>(
        builder: (consumerContext, dailyForecastNotifier, child) {
          return dailyForecastNotifier.state.maybeMap(
              loading: (data) {
                final oldForecasts = data.oldForecasts;

                debugPrint("Loading called");

                if (oldForecasts == null) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return ForecastList(forecasts: oldForecasts.forecasts);
                }
              },
              loaded: (data) {
                final forecasts = data.forecastResponse.forecasts;

                return ForecastList(forecasts: forecasts);
              },
              loadFailed: (failed) {
                final oldForecasts = failed.oldForecasts;

                if (oldForecasts == null) {
                  return Center(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Failed to load. Please tap to reload.'),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: AppPalette.sunshineBlue,
                          ),
                          onPressed: () {
                            context
                                .read<DailyForecastNotifier>()
                                .fetchWeatherDetailsFor(
                                    city: context
                                        .read<DailyForecastNotifier>()
                                        .city);
                          },
                          child: const Icon(Icons.refresh_rounded)),
                    ],
                  ));
                } else {
                  return ForecastList(forecasts: oldForecasts.forecasts);
                }
              },
              orElse: () => const Center(child: CircularProgressIndicator()));
        },
      ),
    );
  }

  void _forecastListener() {
    final forecastResponse = context.read<DailyForecastNotifier>().state;
    final city = context.read<DailyForecastNotifier>().city;

    forecastResponse.maybeMap(
        loading: (data) {
          if (data.oldForecasts != null) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Fetching weather data..'),
            ));
          }
        },
        loaded: (data) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();

          if (data.oldForecasts != null) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('$city\'s weather has been updated.'),
            ));
          }
        },
        loadFailed: (failed) {
          if (failed.oldForecasts != null) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();

            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: const Text(
                  'No such city exists. Please change the city and try again.'),
              action: SnackBarAction(
                  label: 'Change City',
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();

                    showChangeCityForm(context: context);
                  }),
            ));
          }
        },
        orElse: () {});
  }
}

void showChangeCityForm({required BuildContext context}) {
  final TextEditingController cityController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    backgroundColor: Colors.transparent,
    clipBehavior: Clip.hardEdge,
    builder: (modalContext) {
      return Container(
          padding: MediaQuery.of(context).viewInsets,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Form(
                  key: formKey,
                  child: TextFormField(
                    controller: cityController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null) {
                        return 'City name cannot be empty';
                      } else if (value.trim().length < 4) {
                        return 'City name must be minimum 4 characters.';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter city name',
                      errorMaxLines: 3,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.red,
                        ),
                        child: const Text('Cancel')),
                    TextButton(
                        onPressed: () {
                          bool isFormValid =
                              formKey.currentState?.validate() ?? false;

                          if (!isFormValid) {
                            return;
                          }

                          final city = cityController.text;

                          context
                              .read<DailyForecastNotifier>()
                              .updateCity(city);

                          Navigator.of(context).pop();
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: AppPalette.sunshineBlue,
                        ),
                        child: const Text('Set')),
                  ],
                ),
              ],
            ),
          ));
    },
  );
}
