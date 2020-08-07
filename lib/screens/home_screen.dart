import 'package:flutter/material.dart';
import '../config/palette.dart';
import '../config/styles.dart';
import '../data/data.dart';
import '../widgets/drawer.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _country = 'USA';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: CustomeDrawer(),
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildPreventionTips(screenHeight),
          _buildYourOwnTest(
              screenHeight,
              "Vaccine Covid-19 không phải ‘phép màu'",
              "Khi dịch kéo dài hơn 8 tháng, diễn biến khó lường, công chúng bắt đầu nhìn vaccine như một yếu tố lật ngược thế cờ, dẹp Covid-19 ngay tức khắc.",
              "https://i1-suckhoe.vnecdn.net/2020/08/04/0001VQ21B-1596529957-4578-1596530014.jpg?w=500&h=300&q=100&dpr=1&fit=crop&s=r6r-nAZTRCAYTSYvZR33Kg"),
          _buildYourOwnTest(
              screenHeight,
              "Tê tê, hổ cốt và Covid",
              "Chàng trai trẻ nói với tôi rằng anh phải mua cao hổ cốt cho cha mình. Tôi hỏi, bạn có hiểu hành động này rất nguy hại không.",
              "https://i1-vnexpress.vnecdn.net/2020/08/03/covidcurry-1596466511-7473-1596466672.jpg?w=500&h=300&q=100&dpr=1&fit=crop&s=6_pi8SpyiVqTmrdoHDKU-Q"),
          _buildYourOwnTest(
              screenHeight,
              "Italy 'lội ngược dòng' chống Covid-19",
              "Khi Covid-19 bùng phát ở phương Tây, Italy là tâm điểm \"ác mộng\", là nơi cần tránh bằng mọi giá nhưng giờ tình thế đã xoay chuyển.",
              "https://i1-vnexpress.vnecdn.net/2020/08/01/65689301-1596259749-5632-1596260632.jpg?w=500&h=300&q=100&dpr=1&fit=crop&s=qV_ef21qOeObZTkJSHAGrw"),
          _buildYourOwnTest(
              screenHeight,
              "Xếp hàng chờ xét nghiệm Covid-19",
              "Hàng trăm người đổ đến các Trung tâm Y tế dự phòng quận, huyện để khai báo y tế, lấy mẫu xét nghiệm nCoV, khiến nhiều nơi bị quá tải.",
              "https://i1-vnexpress.vnecdn.net/2020/08/01/116130892234591231903713043284-7876-5695-1596264457.jpg?w=500&h=300&q=100&dpr=1&fit=crop&s=FLKNG5Zhac5nM1rhXeJoIg"),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /*Text(
                  'Nếu bạn cảm thấy không được khỏe',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),*/
                //SizedBox(height: screenHeight * 0.01),
                Text(
                  'Nếu bạn cảm thấy bị bệnh với bất kỳ triệu chứng COVID-19 nào, vui lòng gọi hoặc nhắn tin cho chúng tôi ngay lập tức để được giúp đỡ',
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 15.0,
                  ),
                ),
                //SizedBox(height: screenHeight * 0.03),
                /*Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton.icon(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      onPressed: () {},
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      icon: const Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Gọi ngay',
                        style: Styles.buttonTextStyle,
                      ),
                      textColor: Colors.white,
                    ),
                    FlatButton.icon(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      onPressed: () {},
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      icon: const Icon(
                        Icons.chat_bubble,
                        color: Colors.white,
                      ),
                      label: Text(
                        'SMS',
                        style: Styles.buttonTextStyle,
                      ),
                      textColor: Colors.white,
                    ),
                  ],
                ),*/
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildPreventionTips(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Cách phòng ngừa',
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: prevention
                  .map((e) => Column(
                        children: <Widget>[
                          Image.asset(
                            e.keys.first,
                            height: screenHeight * 0.12,
                          ),
                          SizedBox(height: screenHeight * 0.015),
                          Text(
                            e.values.first,
                            style: const TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildYourOwnTest(
      double screenHeight, String title, String description, String imageUrl) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 5.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            //colors: [Color(0xFFAD9FE4), Palette.primaryColor],
            colors: [Colors.white, Colors.grey[200]],
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.network(
              imageUrl,
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      description,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                      maxLines: 5,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
