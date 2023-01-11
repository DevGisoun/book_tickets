import 'package:book_tickets/src/screens/hotel_screen.dart';
import 'package:book_tickets/src/screens/ticket_view.dart';
import 'package:book_tickets/src/utils/app_info_list.dart';
import 'package:book_tickets/src/utils/app_styles.dart';
import 'package:book_tickets/src/widgets/app_double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
            ),
            child: Column(
              children: [
                Gap(
                  AppLayout.getHeight(40),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headLineStyle_3,
                        ),
                        const Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle_1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      // 이미지 테두리 반경 적용
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            'assets/images/img_1.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xffbfc205),
                      ),
                      Text(
                        'Search',
                        style: Styles.headLineStyle_4,
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                const AppDoubleTextWidget(
                  bigText: 'Upcoming flights',
                  smallText: 'View all',
                ),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Row(
              children: ticketList
                  .map(
                    (singleTicket) => TicketView(
                      ticket: singleTicket,
                    ),
                  )
                  .toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: const AppDoubleTextWidget(
              bigText: 'Hotels',
              smallText: 'View all',
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Row(
              children: hotelList
                  .map(
                    (singleHotel) => HotelScreen(
                      hotel: singleHotel,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
