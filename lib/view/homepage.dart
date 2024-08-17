import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trogonmachintest/utili/responsive.dart';
import 'package:trogonmachintest/widgets/custom_appbar.dart';
import 'package:trogonmachintest/widgets/testcard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final iconList = <IconData>[
    Icons.home,
    Icons.book,
    Icons.analytics,
    Icons.person,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final responsive = context.responsive;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(220.0),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30.0),
          ),
          child: CustomAppBar(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            vertical: responsive.hp(2), horizontal: responsive.wp(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildFeatureContainer(
                  context,
                  "Exam",
                  "https://s3-alpha-sig.figma.com/img/98f1/cc14/1c6e0d5beef73c37b4d507963b93d9cd?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=CUhtW6BJhIUY7gWWccKFbPs66Kd6UPYZt~v8wbUU-oOVtfAALj7TLhJPrZ-vTAurfhKYXcXut5u3RsBfua57UiVSzRItCQQaiQ8ISxjeL19rGc9tQA2wVTxHYvtiKzr4CGeQAHQvSFBZtghoMgNFnwx7nBrP4dVlXC7vQ4DeZbuf8qHiRrynv2IA520iS3OyWaGe93E8mD5603g3hAiLNwLMdaM1TzdrpPROi5-4DpD9m5ugwpZHxnvYdbpR2RmlPz6oCvPE0Uec3eHvS2xXuS1parUN0lxiNRopb23ldZpuvNfspPnGWBPiNka3BEVXFNtkZOZeOQL-zrixlc3ACw__",
                  [const Color(0xFFED617B), const Color(0xFFF2859B)],
                  const Color(0xFFDC355F),
                ),
                _buildFeatureContainer(
                  context,
                  "Practice",
                  "https://s3-alpha-sig.figma.com/img/7e99/3290/4baf3e9ec91cd04ab67a02eb349da3fd?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=O5apvBIe8gpyJMUrcsyNwJ2-sbDgdut71-5uns3y26RJDdxCM7iL5T1qrtTElQIq09u0~fs6iRC~Juhv7w8f510A7SIYiD19pISlai4u1~mJDumvtyibDGeHp5MbUO~fYkWMPwX4Caswa3QuQM24Vm-5KL9LbL~2T~5d7LlYH9kE993XxFb7N0BtcUhowUMZg3cp11fihaarSJQ1xvi7AsaPbwNGdMXxccOPd04BgolBAPX8KIT313UBjS35Su5ek7bZ~1KsoQVtwRbOtExln~oxtD-12wcIa7qkU~1f32uRzeafRB-IiXoopLW-XrsYtP42yyqJj60UrD~IBH5wEQ__",
                  [const Color(0xFFFFAF01), const Color(0xFFECC07F)],
                  const Color(0xFFFE9900),
                ),
                _buildFeatureContainer(
                  context,
                  "Materials",
                  "https://s3-alpha-sig.figma.com/img/7ea7/785c/2e6f81e01b7b82907f6e0d1fc8f57c70?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=L9TqTT9BJOvyeG~1AzEHagaDE8ZCtHPK~mTsn~GIcDbHqd8G1Azobhl97K7FH5OeIGg3C28JtQFz1jxZ4dueM4Bj1FABpKTPYfSKubE3We2W3N91vsH89nvS2ekTmdFERYRumDbDjxbsb9TWoURuaDMQjhqV99Ea4dC7gb9iiDLR0VvAwSo6P-ZDVdxIcY7-ZKg7P2kLzb37~~yYMAGJ-v6FlF8yOR7PITpmbER9Ff6sKfSnEcXOncPPQy2UFq0BJ5MNRbWz4Wm5jOYfD7nTh4rrpNSdyfUeGKJhv6SP3NdqedMlDX0vw5S0JztGNP~KJpvPZzgjx8qkY9APKk6Y8g__",
                  [
                    const Color(0xFF24AED2),
                    const Color(0xFF7BC9DD),
                  ],
                  const Color(0xFF28AFD2),
                ),
              ],
            ),
            SizedBox(height: responsive.hp(2)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Courses",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: responsive.sp(18),
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: responsive.sp(18),
                  ),
                ),
              ],
            ),
            SizedBox(height: responsive.hp(2)),
            Wrap(
              spacing: responsive.wp(8),
              runSpacing: responsive.hp(3),
              children: [
                _buildCourseIcon(
                    context,
                    "KTET",
                    "https://s3-alpha-sig.figma.com/img/de50/3df8/eefe93318c6b5922b5712edf13a3cf98?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bGwli2Cnlu50V0VjuuiYbZertD1KraiGRulIqAYhQFp21a3E1~CPprcHyF4CvvlP3cKpHmhr~Vqd9RH-JawYcBTsiTKqb6cvL3XVHYCg3D7DqSZZ1Ax9goaqmBBwAd8EghhqXCvEE5fd5Wh~vlpQuYDePpLuy8pzAMs5qkShp6HqiIpNLlvFQAYXopRHnFwIQKspv74qJxsmdYqJ27W0SFpTAmCYturHNAOe4mcpW3utOBYdeCvFjz9OajqrHNV7~BlK~LT5C3HyejTz-LyJVuHnZ6jSdm5QTHfva3GjKbaGWPkk2sNqsLCnFV0wIAChNbfxYj-eAGMLBfVlKQ-9WQ__",
                    [HexColor("#14C8C5"), HexColor("#83DFDF")]),
                _buildCourseIcon(
                    context,
                    "LP/UP/HST",
                    "https://s3-alpha-sig.figma.com/img/c1e7/9be5/0db6c483add729d4e451d5f18a0c2cf6?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=IjpSFoA4Kh8smPpNVjJYVFtl33KWqvRB9aFe69Le~j4qKoo81smc8obHmizI7myUpkUxamU64ARvFPflyu50QDCrQIQXt6zm6m1emdLXKlhYCnqv4GkTHiJvJo~qbzaUmSkMugDsu5ol-ALTYzUiGw4ejBgDTfI2QaHSMQO7vcrcLuHtbVWEl6hXRjIoD1wyiafhpOu51~fX1j-6XXALhFN3~MGhJCEtJiV38Z0LhimFkJ2N6nPxErXVBw9jGEOaO2rmtsHhLNulb~Vbho1OPY6MqMsYE--zdXLhAvr~1yKUUlCDAmflYfSe7YVt-xV5bCx98s5l61ncGyGcKpeldQ__",
                    [HexColor("#FFE58E "), HexColor("#FCDA70")]),
                _buildCourseIcon(
                    context,
                    "SET",
                    "https://s3-alpha-sig.figma.com/img/bac6/886b/93f3b1f40cefce53b52ddec3fdc3bd48?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lUD4usfagc~bsUbsWgOopvQQ6m4z9iybQdXwVAFFm3gxvpX0XuvlQyB5XFzJjXOelhKXj2FAh447nOnUjkwwq4OndtVKWS0MByKFMj5vym2O4W9gXTcrp~IipVk9VutCyJJ1wMRox9ccSx7VSq9eOEHKmqe38CvTVAzfP8bb8DyUeoFmYP7nn60vaD9ZmdzAkOVvdOiCvgnzSggrwjeBaa0fe1-yMNxYNqLRYN7w2G9kUpTkPjSEzu5ztBk7z5CGlYGdU8gycE5yb7JHkHdW~YSSwlXomOZHK4bXGU8O5vs2ixYC3yhJx0n3kYpOVaKMCnyvCTGpuviYfIoyL2m~5w__",
                    [HexColor("#FED8A9"), HexColor("#E0963B")]),
                _buildCourseIcon(
                    context,
                    "NET",
                    "https://s3-alpha-sig.figma.com/img/3511/1c3f/fd58e01a92f56ee8c253bb383df9b1f3?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=I6UNCGF7HFdv9xndePpgA0yUUcSvBx0KBmB3makFVavX3hbTFGg7ZUkGlPdmcD201KpL8P6w~6nVZQLj41CAJvXzARzLVoJH7j4E4UtaSQozmo6Q1coI4EPjbBZS8k3nDdlj8VPeFDDX3cfqzzfCwqqmfqOoO8xd7ZHBaa9kVdUwYF8yT~7nnFR~y9vQWvMu0C7fZd1S2zJ~DDMx5YszB9DpUNNclc7YWJPCT0B8MwATpbFeX7z4ijZGJpKQH857-JdOUfj7ITsts8VV4ObLvnuNgU-1qAQF6lcQYEr2q5NGcKpLaCJSi0L~rmZ24~oPLiUNgr6bvEnP8KZyttW5YQ__",
                    [HexColor("#FAB7B9"), HexColor("#FE9697")]),
                _buildCourseIcon(
                    context,
                    "Montessori",
                    "https://s3-alpha-sig.figma.com/img/8aec/32d8/2b915b3c657b06e55373ea5ebe3c0113?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=IWVH7ryi4dMzApKiNb5dnS~eBVjL43-shvACCIxkZJ0z0RvdjVlGgS9X4Do2~7AvcxQ7hR42TGxq-tlUrf9PzCbCKsw82Qrhgj7lszH-P24zWgSNTrwPOdskFIXuZ9aJ3QUi3e~evvXrh0QcPetTYNyngTXxcj~3S9VAkaCmn8lGdUHDb1PHAKALjX9Rkbivf~1cXNxMLzbBVQR6q~sDmvcV55cJ9m5TibadAznBMM4CkwcHtYiMseHpL5~n1n1Eh85RrkIJS2cF3WDaxRR4M9XMiwMMN6ypT~OzXbp6nWxp4H9zIvAdM--jaleAWBxsmzGXzFQh611ZmdG4f-qKMg__",
                    [HexColor("#C2A9FB"), HexColor("#A173FD")]),
                _buildCourseIcon(
                    context,
                    "Crash Course",
                    "https://s3-alpha-sig.figma.com/img/69e8/e885/b3243e630a5e70c501f13e556ea8dbbe?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Hhf4kDjfEtgQdjdYgXLCQWXOuoMT5ZbYag3R7raTxnKZyXfJFUD3Vl~qHxOF4bnISWMyZqBoZkhNmfYbtkBNUQduEoOyHpKhQtMof9mZkDt1~PEt5Km~zswCu~bBvGIpWJZdBT1FXF1rgab-ayf7iC63s5mITgYMv2LlhvXwIu-klOKp7W1cOpCEWw9iISrL1ZjRR6PcpHXnqM~9qufehNS2OhPulrpi4DS01wRXm7DlpqqaCM4wZPAL4-U2vJ4iFGDkxz62G9XZMplYtCOJzM9o2mGnQetNf0~-EETyQugnhcHN~baTPCPhOXEDyvThuXjHQiW-~ok7MiUtkge96g__",
                    [HexColor("#F871B4"), HexColor("#FC1D89")]),
              ],
            ),
            SizedBox(height: responsive.hp(2)),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: const Color(0xFFF9F3DC),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Practice With Previous Year Question Papers",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/pngtree-boy-reading-book-icon-picture-image_8071563 1.png',
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
            ),
            SizedBox(height: responsive.hp(2)),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TestCard(
                    title: 'Exam 102 -   Biology',
                    questions: '10 Questions',
                    time: '120 mins',
                    gradientHexColors: [
                      '#AE52B5',
                      '#BF64AE',
                    ],
                  ),
                  SizedBox(width: 16),
                  TestCard(
                    title: 'Exam 102 - Maths',
                    questions: '10 Questions',
                    time: '120 mins',
                    gradientHexColors: [
                      '#FD5F3C',
                      '#FF9A84',
                    ],
                  ),
                  SizedBox(width: 16),
                  TestCard(
                    title: 'Exam 102 - Physics',
                    questions: '10 Questions',
                    time: '120 mins',
                    gradientHexColors: [
                      '#BE516A',
                      '#E06A8A',
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF673AB7),
        elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          Icons.emoji_events,
          size: responsive.sp(35),
          color: Colors.orange,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30.0)),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(0, -5),
              ),
            ],
          ),
          child: AnimatedBottomNavigationBar(
            icons: iconList,
            activeIndex: _selectedIndex,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.verySmoothEdge,
            onTap: _onItemTapped,
            backgroundColor: Colors.white,
            activeColor: const Color(0xFF673AB7),
            inactiveColor: Colors.grey,
            splashColor: const Color(0xFF7E57C2),
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureContainer(BuildContext context, String label,
      String imageUrl, List<Color> gradientColors, Color labelColor) {
    final responsive = context.responsive;

    return Container(
      width: responsive.wp(26),
      height: responsive.wp(26),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imageUrl,
            width: responsive.sp(70),
            height: responsive.sp(70),
            fit: BoxFit.cover,
          ),
          SizedBox(height: responsive.hp(1)),
          Container(
            width: responsive.wp(26),
            height: responsive.hp(3),
            decoration: BoxDecoration(
              color: labelColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: responsive.sp(14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCourseIcon(BuildContext context, String courseName,
      String imagePath, List<Color> gradientColors) {
    final responsive = context.responsive;

    return Column(
      children: [
        Container(
          width: responsive.wp(24),
          height: responsive.wp(24),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: CircleAvatar(
              radius: responsive.wp(10),
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(imagePath),
            ),
          ),
        ),
        SizedBox(height: responsive.hp(1)),
        Text(
          courseName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: responsive.sp(14),
          ),
        ),
      ],
    );
  }
}
