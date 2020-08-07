import 'package:flutter/material.dart';
import '../config/palette.dart';
import 'package:flutter_showcase/flutter_showcase.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ShowcaseHistoryTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _HistoryTimeline();
  }
}

class _HistoryTimelineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Timeline',
      builder: Frame.builder,
      home: _HistoryTimeline(),
    );
  }
}

class _HistoryTimeline extends StatelessWidget {
  List listItems = ['a', 'b', 'c'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
            Palette.primaryColor,
            //Color(0xFF3A3E88),
            Palette.primaryColor,
          ],
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          accentColor: const Color(0xFFDB84B1).withOpacity(0.2),
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(),
            body: ListView(
              children: <Widget>[
                // TimelineTile(
                //   // alignment: TimelineAlign.manual,
                //   // lineX: 0.3,
                //   // isFirst: true,
                //   // indicatorStyle: IndicatorStyle(
                //   //   width: 40,
                //   //   height: 40,
                //   //   indicator: const _IconIndicator(
                //   //     iconData: Icons.edit_location,
                //   //     size: 20,
                //   //   ),
                //   // ),
                //   // topLineStyle: LineStyle(color: Colors.white.withOpacity(0.7)),
                //   rightChild: _ContainerHeader(),
                // ),
                _ContainerHeader(date: "06-08-2020"),

                _buildTimelineTile(
                  isFirst: true,
                  hour: '22:30',
                  weather: 'Hồ Chí Minh, Quận Tân Phú, Oriental Plaza',
                  temperature: 'Tiếp xúc ai?',
                  phrase: "Làm gì ở đây",
                  //isLast: true,
                ),
                _buildTimelineTile(
                  isFirst: false,
                  hour: '23:30',
                  weather: 'Hồ Chí Minh, Quận Tân Phú, Oriental Plaza',
                  temperature: 'Tiếp xúc ai?',
                  phrase: "Làm gì ở đây",
                ),

                _buildTimelineTile(
                  isFirst: false,
                  hour: '23:30',
                  weather: 'Hồ Chí Minh, Quận Tân Phú, Oriental Plaza',
                  temperature: 'Tiếp xúc ai?',
                  phrase: "Làm gì ở đây",
                ),

                _buildTimelineTile(
                  isFirst: false,
                  hour: '23:30',
                  weather: 'Hồ Chí Minh, Quận Tân Phú, Oriental Plaza',
                  temperature: 'Tiếp xúc ai?',
                  phrase: "Làm gì ở đây",
                ),

                _buildTimelineTile(
                  isFirst: false,
                  hour: '23:30',
                  weather: 'Hồ Chí Minh, Quận Tân Phú, Oriental Plaza',
                  temperature: 'Tiếp xúc ai?',
                  phrase: "Làm gì ở đây",
                  isLast: true,
                ),

                _ContainerHeader(date: "06-08-2020"),

                _buildTimelineTile(
                  isFirst: true,
                  hour: '22:30',
                  weather: 'Hồ Chí Minh, Quận Tân Phú, Oriental Plaza',
                  temperature: 'Tiếp xúc ai?',
                  phrase: "Làm gì ở đây",
                  //isLast: true,
                ),
                _buildTimelineTile(
                  isFirst: false,
                  hour: '23:30',
                  weather: 'Hồ Chí Minh, Quận Tân Phú, Oriental Plaza',
                  temperature: 'Tiếp xúc ai?',
                  phrase: "Làm gì ở đây",
                  isLast: true,
                ),

                _ContainerHeader(date: "06-08-2020"),

                _buildTimelineTile(
                  isFirst: true,
                  hour: '22:30',
                  weather: 'Hồ Chí Minh, Quận Tân Phú, Oriental Plaza',
                  temperature: 'Tiếp xúc ai?',
                  phrase: "Làm gì ở đây",
                  //isLast: true,
                ),
                _buildTimelineTile(
                  isFirst: false,
                  hour: '23:30',
                  weather: 'Hồ Chí Minh, Quận Tân Phú, Oriental Plaza',
                  temperature: 'Tiếp xúc ai?',
                  phrase: "Làm gì ở đây",
                  isLast: true,
                ),

                _ContainerHeader(date: "06-08-2020"),

                _buildTimelineTile(
                  isFirst: true,
                  hour: '22:30',
                  weather: 'Hồ Chí Minh, Quận Tân Phú, Oriental Plaza',
                  temperature: 'Tiếp xúc ai?',
                  phrase: "Làm gì ở đây",
                  //isLast: true,
                ),
                _buildTimelineTile(
                  isFirst: false,
                  hour: '23:30',
                  weather: 'Hồ Chí Minh, Quận Tân Phú, Oriental Plaza',
                  temperature: 'Tiếp xúc ai?',
                  phrase: "Làm gì ở đây",
                  isLast: true,
                ),

                _ContainerHeader(date: "06-08-2020"),

                _buildTimelineTile(
                  isFirst: true,
                  hour: '22:30',
                  weather: 'Hồ Chí Minh, Quận Tân Phú, Oriental Plaza',
                  temperature: 'Tiếp xúc ai?',
                  phrase: "Làm gì ở đây",
                  //isLast: true,
                ),
                _buildTimelineTile(
                  isFirst: false,
                  hour: '23:30',
                  weather: 'Hồ Chí Minh, Quận Tân Phú, Oriental Plaza',
                  temperature: 'Tiếp xúc ai?',
                  phrase: "Làm gì ở đây",
                  isLast: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: Text(
        'Lịch sử khai báo',
        style: GoogleFonts.lato(
          color: const Color(0xFFffffff),
          fontWeight: FontWeight.bold,
        ),
      ),
      // actions: <Widget>[
      //   // IconButton(
      //   //   icon: const Icon(
      //   //     Icons.menu,
      //   //     color: Color(0xFFffffff),
      //   //   ),
      //   //   onPressed: () {},
      //   // )
      // ],
    );
  }

  TimelineTile _buildTimelineTile({
    _IconIndicator indicator,
    String hour,
    String weather,
    String temperature,
    String phrase,
    bool isFirst = false,
    bool isLast = false,
  }) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineX: 0.2,
      isFirst: isFirst,
      topLineStyle: LineStyle(color: Colors.white.withOpacity(0.7)),
      indicatorStyle: IndicatorStyle(
        indicatorY: 0.3,
        drawGap: true,
        width: 30,
        height: 30,
        indicator: const _IconIndicator(
          iconData: Icons.location_on,
          size: 20,
        ),
      ),
      isLast: isLast,
      leftChild: Center(
        child: Container(
          alignment: const Alignment(0.0, -0.50),
          child: Text(
            hour,
            style: GoogleFonts.lato(
              fontSize: 18,
              color: Colors.white.withOpacity(0.9),
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
      rightChild: Padding(
        padding: const EdgeInsets.only(left: 15, right: 5, top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              weather,
              style: GoogleFonts.lato(
                fontSize: 18,
                color: Colors.white.withOpacity(0.9),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              temperature,
              style: GoogleFonts.lato(
                fontSize: 16,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              phrase,
              style: GoogleFonts.lato(
                fontSize: 14,
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _IconIndicator extends StatelessWidget {
  const _IconIndicator({
    Key key,
    this.iconData,
    this.size,
  }) : super(key: key);

  final IconData iconData;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 30,
              width: 30,
              child: Icon(
                iconData,
                size: size,
                color: const Color(0xFF9E3773).withOpacity(0.7),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ContainerHeader extends StatelessWidget {
  _ContainerHeader({Key key, this.date}) : super(key: key);

  String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 40),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            // Text(
            //   '06-08-2020',
            //   style: GoogleFonts.lato(
            //     fontSize: 18,
            //     color: const Color(0xFFF4A5CD),
            //   ),
            // ),
            const SizedBox(width: 5),

            Text(
              date,
              style: GoogleFonts.lato(
                fontSize: 25,
                color: Colors.yellow[50],
                fontWeight: FontWeight.bold,
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: <Widget>[
            //     Expanded(
            //       child: Text(
            //         'Quận Tân Phú',
            //         overflow: TextOverflow.ellipsis,
            //         textAlign: TextAlign.right,
            //         style: GoogleFonts.lato(
            //           fontSize: 14,
            //           color: const Color(0xFF4A448F).withOpacity(0.8),
            //           fontWeight: FontWeight.w800,
            //         ),
            //       ),
            //     ),
            //     const SizedBox(width: 10),
            //     Text(
            //       'Đường Âu Cơ',
            //       style: GoogleFonts.lato(
            //         fontSize: 14,
            //         color: const Color(0xFF4A448F).withOpacity(0.8),
            //         fontWeight: FontWeight.w800,
            //       ),
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}

class _Sun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 25,
            spreadRadius: 20,
          ),
        ],
        shape: BoxShape.circle,
        color: Colors.white,
      ),
    );
  }
}
