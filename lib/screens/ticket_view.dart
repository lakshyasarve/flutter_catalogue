import 'package:flutter/material.dart';
import 'package:flutter_catalogue/utils/app_layout.dart';
import 'package:flutter_catalogue/utils/app_styles.dart';
import 'package:flutter_catalogue/widgets/thick_container.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(children: [
          /*
          This Container will be used for showing the blue part of the UI
          */
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF526799),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
            ), 
            padding: const EdgeInsets.all(16),
            child: Column(children: [
            
              Row(
                children: [
                Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                const Spacer(),
                ThickContainer(),
                Expanded(child: Stack(
                  children: [
                    SizedBox(height: 24, 
                  child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints){
                      print("The width is ${constraints.constrainWidth()}");
                      return Flex(
                      direction: Axis.horizontal, 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                        width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
                      ))
                      );
                    },
                    
                  ),
                    ),
                    Center(
                      child: Transform.rotate(
                  angle: 1.5,
                  child: Icon(Icons.local_airport_rounded, color: Colors.white,)),
                    ),
                  ],
                ),
                  ),
                
                ThickContainer(),
                const Spacer(),
                Text("LDN", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
              ],)
            ,const Gap(3)
            ,Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [SizedBox(
                width: 100,
                child: Text('New-York', style: Styles.headLineStyle4.copyWith(color: Colors.white)),
              ),
              Text("8H 30M", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
              SizedBox(
                width: 100,
                child: Text('London', style: Styles.headLineStyle4.copyWith(color: Colors.white), textAlign: TextAlign.end,),
              )],
            )
            ]),
          ),
        /*
        This container will show the orange part of the UI
        */
          Container(
            color: Styles.orangeColor,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,mainAxisSize: MainAxisSize.max,children: [
              const SizedBox(
                height: 20,
                width: 20,
                child: DecoratedBox(decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                  )
                )),
              ),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints){
                    return Flex(direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                    width: 5, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white
                    )),
                  )),);
                  }
                ),
              )),
              const SizedBox(
                height: 20,
                width: 20,
                child: DecoratedBox(decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)
                  )
                )),
              )
            ]),
          )
        ]),
      ),
    );
  }
}