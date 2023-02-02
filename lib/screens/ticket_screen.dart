import 'package:flutter/material.dart';
import 'package:flutter_catalogue/screens/ticket_view.dart';
import 'package:flutter_catalogue/utils/app_info_list.dart';
import 'package:flutter_catalogue/utils/app_layout.dart';
import 'package:flutter_catalogue/utils/app_styles.dart';
import 'package:flutter_catalogue/widgets/ticket_tabs.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("Tickets", style: Styles.headLineStyle1,),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0],),
            )
          ],
        )
      ],)
    );
  }
}