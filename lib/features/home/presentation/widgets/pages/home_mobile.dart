part of 'home.dart';

class HomeMobileWidget extends StatelessWidget {
  const HomeMobileWidget({Key? key}) : super(key: key);

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
                'Kathmandu ',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: AppPalette.sunshineBlue,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Today, March 30',
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '25\u00b0',
                          style: GoogleFonts.roboto(
                            fontSize: 72,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '15\u00b0',
                          style: GoogleFonts.roboto(
                            fontSize: 36,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        WeatherArtworkAssets.rain,
                        width: 150,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Rain',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              // TODO: Show detail page if needed
            },
            highlightColor: AppPalette.sunshineLightBlue,
            child: Container(
              // color: AppPalette.sunshineLightBlue,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              child: Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    padding: const EdgeInsets.only(
                      right: 16,
                      top: 0,
                      bottom: 0,
                    ),
                    child: Image.asset(
                      IconAssets.cloudy,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tomorrow',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                            color: AppPalette.grey700,
                          ),
                        ),
                        Text(
                          'Rain',
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            color: AppPalette.grey700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '24\u00b0',
                        style: GoogleFonts.roboto(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        '15\u00b0',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: AppPalette.grey700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
