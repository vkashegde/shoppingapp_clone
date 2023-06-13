import 'package:flutter/material.dart';
import 'package:myntra_clone/feature/profile/profile_without_login.dart';
import 'package:myntra_clone/foundation/theme/colors.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.scaffoldBgColor,
        appBar: AppBar(
          backgroundColor: AppColor.whiteColor,
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Profile',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
        body: ProfileWithoutLogin());
  }
}
