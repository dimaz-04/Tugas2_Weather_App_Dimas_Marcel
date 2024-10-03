import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class ForecastToday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Forecast for Today',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildForecastColumn(
                'Now',
                Icon(FontAwesomeIcons.sun, size: 24),
                '2°C',
              ),
              _buildForecastColumn(
                '15:00',
                Icon(FontAwesomeIcons.cloud, size: 24),
                '1°C',
              ),
              _buildForecastColumn(
                '16:00',
                Icon(FontAwesomeIcons.cloudRain, size: 24),
                '0°C',
              ),
              _buildForecastColumn(
                '17:00',
                Icon(FontAwesomeIcons.snowflake, size: 24),
                '-2°C',
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildForecastDetail(
                Icon(FontAwesomeIcons.wind, size: 20, color: Colors.grey),
                '20 km/h',
              ),
              _buildForecastDetail(
                Icon(FontAwesomeIcons.wind, size: 20, color: Colors.grey),
                '10 km/h',
              ),
              _buildForecastDetail(
                Icon(FontAwesomeIcons.wind, size: 20, color: Colors.grey),
                '25 km/h',
              ),
              _buildForecastDetail(
                Icon(FontAwesomeIcons.wind, size: 20, color: Colors.grey),
                '28 km/h',
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildForecastHumidity(
                Icon(FontAwesomeIcons.umbrella, size: 20, color: Colors.blueAccent),
                '20 km/h',
              ),
              _buildForecastHumidity(
                Icon(FontAwesomeIcons.umbrella, size: 20, color: Colors.blueAccent),
                '10 km/h',
              ),
              _buildForecastHumidity(
                Icon(FontAwesomeIcons.umbrella, size: 20, color: Colors.blueAccent),
                '25 km/h',
              ),
              _buildForecastHumidity(
                Icon(FontAwesomeIcons.umbrella, size: 20, color: Colors.blueAccent),
                '28 km/h',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildForecastColumn(String time, Widget icon, String temperature) {
    return Expanded(
      child: Column(
        children: [
          Text(
            time,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 8),
          icon,
          SizedBox(height: 8),
          Text(
            temperature,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget _buildForecastDetail(Icon icon, String text) {
    return Expanded(
      child: Column(
        children: [
          icon,
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildForecastHumidity(Icon icon, String text) {
    return Expanded(
      child: Column(
        children: [
          icon,
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(fontSize: 16, color: Colors.blueAccent),
          ),
        ],
      ),
    );
  }
}


class sevenForecastDay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '7-day forecast',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600), // Mengubah ukuran font judul menjadi 24
          ),
          SizedBox(height: 6),
          Divider( // Menambahkan garis horizontal di atas row
            color: Colors.grey,
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400), // Mengubah ukuran font hari menjadi 18
              ),
              Icon(FontAwesomeIcons.cloud, size: 24),
              Text(
                '-5°C',
                style: TextStyle(fontSize: 22, color: Colors.grey[500]), // Mengubah ukuran font suhu menjadi 18
              ),
              Text(
                '2°C',
                style: TextStyle(fontSize: 22), // Mengubah ukuran font suhu menjadi 18
              ),
            ],
          ),
          Divider( // Menambahkan garis horizontal di bawah row
            color: Colors.grey,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}

  Widget _buildForecastColumn(String time, Widget icon, String temperature) {
    return Expanded(
      child: Column(
        children: [
          Text(
            time,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 8),
          icon,
          SizedBox(height: 8),
          Text(
            temperature,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget _buildForecastDetail(Icon icon, String text) {
    return Expanded(
      child: Column(
        children: [
          icon,
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String cityName = "Sumedang";
    String weatherNow = "Badai petir";
    int currTemp = 23;
    int maxTemp = 31;
    int minTemp = 19;
    Size size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      body: Center(
        child: Container(
          height: size.height,
          width: size.height,
          decoration: BoxDecoration (
            color: isDarkMode ? Colors.black : Colors.white,
          ),
          child: SafeArea(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.01,
                        horizontal: size.height * 0.05,
                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.bars,
                              color: isDarkMode ? Colors.white : Colors.black,
                            ),
                            Align(
                              child: Text(
                                "Weather App",
                                style: GoogleFonts.questrial(
                                  color: isDarkMode ? Colors.white : Colors.brown,
                                  fontSize: size.height * 0.02,
                                ),
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.circlePlus,
                              color: isDarkMode ? Colors.white : Colors.black,
                            )
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: size.height * 0.03,),
                        child: Align(
                          child: Text(
                              cityName,
                              style: GoogleFonts.questrial(
                                color: isDarkMode ? Colors.white : Colors.black,
                                fontSize: size.height * 0.06,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: size.height * 0.0001,),
                        child: Align(
                          child: Text(
                            "Hari ini",
                            style: GoogleFonts.questrial(
                              color: isDarkMode ? Colors.white : Colors.grey[500],
                              fontSize: size.height * 0.028,
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: size.height * 0.003,),
                        child: Align(
                          child: Text(
                            "$currTemp°C",
                            style: GoogleFonts.questrial(
                              color: currTemp <= 0 ? Colors.blue :
                              currTemp > 0 && currTemp <= 20 ? Colors.indigo :
                              currTemp > 21 && currTemp <= 32 ? Colors.deepPurple :
                              Colors.pink,
                              fontSize: size.height * 0.11,
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey[400],
                        height: 5,
                        thickness: 2,
                        indent: 70,
                        endIndent: 70,
                      ),
                      Padding(padding: EdgeInsets.only(top: size.height * 0.015,),
                        child: Align(
                          child: Text(
                              weatherNow,
                              style: GoogleFonts.questrial(
                                color: isDarkMode ? Colors.white : Colors.grey[400],
                                fontSize: size.height * 0.026,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: size.height * 0.015,),
                        child: Align(
                          child: Text(
                            "$minTemp°C/$maxTemp°C",
                            style: GoogleFonts.questrial(
                              color: minTemp <= 0 ? Colors.blue :
                              minTemp > 0 && minTemp <= 20 ? Colors.indigo :
                              minTemp > 21 && minTemp <= 32 ? Colors.deepPurple :
                              Colors.pink,
                              fontSize: size.height * 0.025,
                            ),
                          ),
                        ),
                      ),
                    ForecastToday(),
                    sevenForecastDay(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}