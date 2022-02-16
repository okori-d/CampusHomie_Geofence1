//import 'dart:collection';

import 'dart:collection';

import 'package:campush/HOME/placePicker/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'Constants/constants.dart';
import 'placePicker/stf.dart';

class HomePagex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        children: const [
          MenuEntry(
            iconData: Icons.location_on_rounded,
            title: 'Find Me',
            bgColor: kLightYellow,
            iconColor: kDarkYellow,
            destination: MapView(),
          ),
          MenuEntry(
            iconData: Icons.pending_actions_rounded,
            title: 'Live Location',
            bgColor: kLightRed,
            iconColor: kDarkRed,
            destination: stf(),
          ),
          MenuEntry(
            iconData: Icons.timer_10_select_rounded,
            title: 'In DIstance Notifier',
            bgColor: kLightBlue,
            iconColor: kDarkBlue,
            destination: stf(),
          ),
          MenuEntry(
            iconData: Icons.timer_10_select_rounded,
            title: 'Tracer',
            bgColor: kLightBlue,
            iconColor: kDarkBlue,
            destination: stf(),
          )
        ],
      ),
    );
  }
}

HomePage() {}

class MenuEntry extends StatelessWidget {
  const MenuEntry({
    Key? key,
    required this.title,
    required this.iconData,
    required this.destination,
    required this.iconColor,
    required this.bgColor,
  }) : super(key: key);

  final String title;
  final Widget destination;
  final IconData iconData;
  final Color iconColor;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => destination,
            ),
          );
        },
        child: Stack(
          children: [
            Positioned.fill(
              child: FractionallySizedBox(
                heightFactor: 0.25,
                alignment: Alignment.bottomCenter,
                child: ColoredBox(
                  color: Colors.black.withOpacity(0.75),
                  child: Center(
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
