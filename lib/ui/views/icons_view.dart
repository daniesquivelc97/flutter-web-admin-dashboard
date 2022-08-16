import 'package:admin_dashboard/ui/cards/white_card.dart';
import 'package:admin_dashboard/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class IconsView extends StatelessWidget {
  const IconsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Text(
            'Icons',
            style: CustomLabels.h1,
          ),
          const SizedBox(height: 10),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            children: const [
              WhiteCard(
                title: 'ac_unit_outlined',
                width: 170,
                child: Center(
                  child: Icon(Icons.ac_unit_outlined),
                ),
              ),
              WhiteCard(
                title: 'access_alarm_outlined',
                width: 170,
                child: Center(
                  child: Icon(Icons.access_alarm_outlined),
                ),
              ),
              WhiteCard(
                title: 'access_time_filled',
                width: 170,
                child: Center(
                  child: Icon(Icons.access_time_filled),
                ),
              ),
              WhiteCard(
                title: 'add_a_photo_outlined',
                width: 170,
                child: Center(
                  child: Icon(Icons.add_a_photo_outlined),
                ),
              ),
              WhiteCard(
                title: 'adf_scanner_outlined',
                width: 170,
                child: Center(
                  child: Icon(Icons.adf_scanner_outlined),
                ),
              ),
              WhiteCard(
                title: 'arrow_left_outlined',
                width: 170,
                child: Center(
                  child: Icon(Icons.arrow_left_outlined),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
