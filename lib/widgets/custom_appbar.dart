import 'package:flutter/material.dart';
import 'package:trogonmachintest/utili/responsive.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = context.responsive;

    return AppBar(
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF673AB7), Color(0xFF7E57C2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: responsive.wp(4), 
              vertical: responsive.hp(3),   
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi Good Morning !",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: responsive.sp(18), 
                          ),
                        ),
                        Text(
                          "John",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: responsive.sp(22), 
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.all(responsive.wp(1)),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(responsive.wp(4)), 
                      ),
                      child: Row(
                        children: [
                          const Text(
                            "10",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(width: responsive.wp(1)),
                          const Icon(Icons.monetization_on, color: Colors.orange),
                        ],
                      ),
                    ),
                    SizedBox(width: responsive.wp(3)), 
                    CircleAvatar(
                      radius: responsive.wp(6),
                      backgroundImage: const AssetImage("assets/images/Ellipse 29.png"),
                    )
                  ],
                ),
                SizedBox(height: responsive.hp(2)), 
                Container(
                  padding: EdgeInsets.all(responsive.wp(4)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(responsive.wp(3)), 
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Selected Course",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: responsive.sp(18), 
                            ),
                          ),
                          SizedBox(height: responsive.hp(1)), 
                          Text(
                            "Montessori",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: responsive.sp(18), 
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF673AB7),
                          padding: EdgeInsets.symmetric(
                            horizontal: responsive.wp(3), 
                            vertical: responsive.hp(1.5), 
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(responsive.wp(3)), 
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              "Change",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: responsive.wp(2)), 
                            Icon(
                              Icons.sync_alt,
                              size: responsive.sp(16), 
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
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
