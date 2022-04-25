import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/overview/widgets/info_card_small.dart';

class OverviewCardsSmall extends StatelessWidget {
  const OverviewCardsSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: 'Rides in progress',
            value: '7',
            isActive: true,
            onTap: () {},
          ),
          SizedBox(
            height: _height / 64,
          ),
          InfoCardSmall(
            title: 'Packages delivered',
            value: '17',
            onTap: () {},
          ),
          SizedBox(
            height: _height / 64,
          ),
          InfoCardSmall(
            title: 'Cancelled deliveries',
            value: '3',
            onTap: () {},
          ),
          SizedBox(
            height: _height / 64,
          ),
          InfoCardSmall(
            title: 'Scheduled Deliveries',
            value: '11',
            onTap: () {},
          ),
          SizedBox(
            height: _height / 64,
          ),
        ],
      ),
    );
  }
}
