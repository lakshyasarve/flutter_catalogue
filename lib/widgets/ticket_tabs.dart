import 'package:flutter/material.dart';
import 'package:flutter_catalogue/utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    
    final size = AppLayout.getSize(context);
    return FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(children: [
                Container(
                  width: size.width*.44,
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white,
              ),
              child: Text(firstTab, textAlign: TextAlign.center,),
                ),
                Container(
                  width: size.width*.44,
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                  color: const Color(0xFFF4F6FD),
              ),
              child: Text(secondTab, textAlign: TextAlign.center,),
                )
              ],),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color: const Color(0xFFF4F6FD)
              ),
            ),
          );
  }
}