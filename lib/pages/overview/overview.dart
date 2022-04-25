import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/controllers.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/pages/overview/widgets/overview_card_large.dart';
import 'package:web_dashboard/pages/overview/widgets/overview_card_medium.dart';
import 'package:web_dashboard/pages/overview/widgets/overview_card_small.dart';
import 'package:web_dashboard/pages/overview/widgets/revenue_section_large.dart';
import 'package:web_dashboard/pages/overview/widgets/revenue_section_small.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                )
              ],
            )),
        Expanded(
            child: ListView(
          children: [
            ResponsiveWidget.isCustomSize(context)
                ? const OverviewCardsMedium()
                : ResponsiveWidget.isSmallScreen(context)
                    ? const OverviewCardsSmall()
                    : const OverviewCardsLarge(),
            ResponsiveWidget.isSmallScreen(context)
                ? const RevenueSectionSmall()
                : const RevenueSectionLarge(),
          ],
        )),
      ],
    );
  }
}
