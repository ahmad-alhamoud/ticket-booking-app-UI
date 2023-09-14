import 'package:gap/gap.dart';
import 'package:ticketbooking/screens/ticket_view.dart';
import 'package:ticketbooking/utils/app_info_list.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:ticketbooking/widgets/column_layout.dart';
import 'package:ticketbooking/widgets/layout_builder_widget.dart';
import 'package:ticketbooking/widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getHeight(20)),
              children: [
                Gap(AppLayout.getHeight(40)),
                Text(
                  "Tickets",
                  style: Styles.headLineStyle1,
                ),
                Gap(AppLayout.getHeight(20)),
                const AppTicketTabs(
                  firstTab: "Upcoming",
                  secondTab: "Previous",
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.start,
                            firstText: 'Flutter',
                            secondText: 'Passenger',
                            isColor: false,
                          ),
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: '5221 35647',
                            secondText: 'passport',
                            isColor: false,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilderWidget(
                          sections: 15, isColor: false, width: 5),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.start,
                            firstText: '3595 444444',
                            secondText: 'Number of ticket',
                            isColor: false,
                          ),
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: 'B2SG28',
                            secondText: 'Booking code',
                            isColor: false,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilderWidget(
                          sections: 15, isColor: false, width: 5),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text('VISA' , style: Styles.headLineStyle2,) ,
                                  Text(
                                    " *** 2644" , style: Styles.headLineStyle3,
                                  )
                                ],
                              ) ,
                              Gap(5) ,
                              Text('Payment method' , style: Styles.headLineStyle4,)
                            ],
                          ) ,
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: '\$225.99',
                            secondText: 'Price',
                            isColor: false,
                          ),
                        ],
                      ) ,
                      /*
                       build bar code section
                       */

                    ],
                  ),
                ) ,
                const SizedBox(height: 1,) ,
                Container(
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(AppLayout.getHeight(21)) ,bottomLeft: Radius.circular(AppLayout.getHeight(21)) )
                 ),
                  margin: EdgeInsets.only(left: AppLayout.getHeight(15) ,right: AppLayout.getHeight(15)),
                  padding: EdgeInsets.only(top:AppLayout.getHeight(20), bottom: AppLayout.getHeight(20)),
                  child: Container(
                    padding:  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),

                      child: BarcodeWidget(
                        data: 'https://githup.com/martinovovo',
                        barcode: Barcode.code128() ,
                        drawText: false ,
                        color: Styles.textColor,
                        height: 70,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ) ,
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(
                    ticket: ticketList[0],
                  ),
                ),
              ],
            ) ,
            Positioned(
              left: AppLayout.getHeight(22),
              top: AppLayout.getHeight(295),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle ,
                  border: Border.all(
                    width: 2 ,
                    color: Styles.textColor
                  ) ,
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ) ,
              ),
            ) ,
            Positioned(
              right: AppLayout.getHeight(22),
              top: AppLayout.getHeight(295),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle ,
                  border: Border.all(
                      width: 2 ,
                      color: Styles.textColor
                  ) ,
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ) ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
