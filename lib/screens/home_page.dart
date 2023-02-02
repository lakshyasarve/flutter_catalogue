import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalogue/screens/hotel_screen.dart';
import 'package:flutter_catalogue/screens/ticket_view.dart';
import 'package:flutter_catalogue/utils/app_info_list.dart';
import 'package:flutter_catalogue/utils/app_styles.dart';
import 'package:flutter_catalogue/widgets/double_text_widget.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning", style: Styles.headLineStyle3,),
                      const Gap(5),
                      Text("Book Tickets", style: Styles.headLineStyle1,),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/img_1.png"))
                    )

                    )
                ],
              ),
              const Gap(25),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFFF4F6FD)),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: [
                    Icon(FluentSystemIcons.ic_fluent_search_regular, color: Styles.textColor),
                    Text("Search", style: Styles.headLineStyle4)
                  ],
                ),
              ),
              const Gap(40),
              const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all")
            ]),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList()),
          ),
          const Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleTextWidget(bigText: "Hotels", smallText: "View all")
          ),
          Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(children: hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList()
            ,)
            ),
        ],
      ),
    );
  }
}