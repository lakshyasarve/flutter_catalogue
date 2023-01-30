import 'package:flutter/material.dart';
import 'package:flutter_catalogue/utils/app_layout.dart';
import 'package:flutter_catalogue/utils/app_styles.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        scrollDirection: Axis.vertical,
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?", style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),),
          Gap(AppLayout.getHeight(20))
        ],
      ),
    );
  }
}