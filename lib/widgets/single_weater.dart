import 'package:flutter/material.dart';
import 'package:flutter_weather_app/models/weather_locations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';

class SingleWeater extends StatelessWidget {
  final int index;
  SingleWeater(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 150,
                    ),
                    Text(
                      locationList[index].city,
                      style: GoogleFonts.lato(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      locationList[index].dateTime,
                      style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 200)),
                    Text(
                      locationList[index].temperature,
                      style: GoogleFonts.lato(
                          fontSize: 85,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          locationList[index].iconUrl,
                          width: 34,
                          height: 34,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          locationList[index].weatherType,
                          style: GoogleFonts.lato(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white30)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'Vento',
                              style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              locationList[index].wind.toString(),
                              style: GoogleFonts.lato(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'Hm/h',
                              style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  height: 5,
                                  width: 50,
                                  color: Colors.white38,
                                ),
                                Container(
                                  height: 5,
                                  width: 45,
                                  color: Colors.greenAccent,
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              'Chuva',
                              style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              locationList[index].rain.toString(),
                              style: GoogleFonts.lato(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              '%',
                              style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  height: 5,
                                  width: 50,
                                  color: Colors.white38,
                                ),
                                Container(
                                  height: 5,
                                  width: 23,
                                  color: Colors.yellow,
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              'Umidade',
                              style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              locationList[index].humidty.toString(),
                              style: GoogleFonts.lato(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              '%',
                              style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  height: 5,
                                  width: 50,
                                  color: Colors.white38,
                                ),
                                Container(
                                  height: 5,
                                  width: 34,
                                  color: Colors.redAccent,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
