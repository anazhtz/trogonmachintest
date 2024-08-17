import 'package:flutter/material.dart';
import 'package:trogonmachintest/utili/responsive.dart';

Color hexToColor(String hex) {
  final buffer = StringBuffer();
  if (hex.length == 6 || hex.length == 7) buffer.write('ff');
  buffer.write(hex.replaceAll('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}

class TestCard extends StatelessWidget {
  final String title;
  final String questions;
  final String time;
  final Color? solidColor;
  final List<String>? gradientHexColors;

  const TestCard({
    super.key,
    required this.title,
    required this.questions,
    required this.time,
    this.solidColor,
    this.gradientHexColors,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = context.responsive;
    final gradientColors =
        gradientHexColors?.map((hex) => hexToColor(hex)).toList();

    return Container(
      width: responsive.wp(60), 
      padding: EdgeInsets.all(responsive.wp(4)),
      decoration: BoxDecoration(
        color: solidColor,
        gradient: gradientColors != null
            ? LinearGradient(
                colors: gradientColors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
        borderRadius: BorderRadius.circular(responsive.wp(4)), 
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: responsive.sp(18), 
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: responsive.hp(2)), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                questions,
                style: TextStyle(
                  fontSize: responsive.sp(14), 
                  color: Colors.white70,
                ),
              ),
              SizedBox(width: responsive.wp(3)),
              Text(
                time,
                style: TextStyle(
                  fontSize: responsive.sp(14), 
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          SizedBox(height: responsive.hp(4)), 
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(responsive.wp(60), responsive.hp(5)), 
                foregroundColor:
                    gradientColors != null ? gradientColors.first : solidColor,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(responsive.wp(2)), 
                ),
              ),
              onPressed: () {
              
              },
              child: Text(
                'Attempt Now',
                style: TextStyle(
                  fontSize: responsive.sp(16), 
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
