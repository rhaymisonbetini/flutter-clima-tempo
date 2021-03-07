import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'package:flutter_weather_app/models/weather_locations.dart';
import 'package:flutter_weather_app/widgets/counter_dots.dart';
import 'package:flutter_weather_app/widgets/single_weater.dart';
import 'package:flutter_weather_app/widgets/buildin_transform.dart';

class WeatherApp extends StatefulWidget {
  @override
  _WeatherApp createState() => _WeatherApp();
}

class _WeatherApp extends State<WeatherApp> {
  int _currentPage = 0;
  String bgImg;

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (locationList[_currentPage].weatherType == 'Sunny') {
      bgImg = 'assets/sunny.jpg';
    } else if (locationList[_currentPage].weatherType == 'Night') {
      bgImg = 'assets/night.jpg';
    } else if (locationList[_currentPage].weatherType == 'Rainy') {
      bgImg = 'assets/rainy.jpg';
    } else if (locationList[_currentPage].weatherType == 'Cloudy') {
      bgImg = 'assets/cloudy.jpeg';
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Clima hoje',
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.menu,
                size: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            bgImg,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black38),
          ),
          Container(
            child: Row(
              children: [
                for (int i = 0; i < locationList.length; i++)
                  if (i == _currentPage)
                    CounterDots(true)
                  else
                    CounterDots(false)
              ],
            ),
          ),
          TransformerPageView(
            scrollDirection: Axis.vertical,
            itemCount: locationList.length,
            transformer: ScaleAndFadeTransformer(),
            viewportFraction: 0.8,
            onPageChanged: _onPageChanged,
            itemBuilder: (ctx, index) => SingleWeater(index),
          ),
        ],
      ),
    );
  }
}
