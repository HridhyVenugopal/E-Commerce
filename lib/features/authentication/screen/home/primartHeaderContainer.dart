import 'package:flutter/material.dart';
import 'package:shopping_final/features/authentication/screen/home/circleContainer.dart';
import 'package:shopping_final/features/authentication/screen/home/curvedEdges.dart';
import 'package:shopping_final/utils/constants/colorss.dart';
import 'package:shopping_final/utils/device/device_utility.dart';


class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key,  required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdges(
      child: Container(
        color: TColors.primaryColor,
        padding: const EdgeInsets.only(bottom: 0),

        ///if [size.isFinite': is not true.in Stack] error occurred
        child:  SizedBox(
          height: TDeviceUtility.getScreenHeight() * 0.4,
          width: TDeviceUtility.getScreenWidth(context),
          child: Stack(
            children: [
                Positioned(
                  top: -150,
                  right: -250,
                  child: CircleContainer(
                    height: 400,
                    width: 400,
                    radius: 400,
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  )),
               Positioned(
                 top: 100,
                  right: -300,
                  child: CircleContainer(
                    height: 400,
                    width: 400,
                    radius: 400,
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  )),
              child
            ],
          ),
        ),
      ),
    );
  }
}
