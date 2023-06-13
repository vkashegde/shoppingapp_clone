import 'package:flutter/material.dart';
import 'package:myntra_clone/foundation/profile_item/profile_item.dart';
import 'package:myntra_clone/foundation/theme/colors.dart';

class ProfileWithoutLogin extends StatelessWidget {
  const ProfileWithoutLogin({Key? key}) : super(key: key);
  final double topContainerHeight = 190;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: topContainerHeight,
          child: Column(
            children: [
              Container(
                height: topContainerHeight * 0.58,
                color: AppColor.dummyBgColor,
              ),
              Container(
                height: topContainerHeight * 0.42,
                color: AppColor.whiteColor,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          color: AppColor.whiteColor,
          child: Column(
            children: [
              ProfileItem(),
              ProfileItem(),
              ProfileItem(),
              ProfileItem(),
              ProfileItem(),
            ],
          ),
        )
      ],
    );
  }
}
