import 'package:app_karengata/src/constants/colors.dart';
import 'package:app_karengata/src/constants/image_strings.dart';
import 'package:app_karengata/src/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../constants/text_strings.dart';
import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              LineAwesomeIcons.angle_left,
            )),
        title: Text(
          tProfile,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(LineAwesomeIcons.moon)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Image(
                      image: AssetImage(tGoogleLogoImage),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: tPrimaryColor),
                    child: const Icon(
                      LineAwesomeIcons.alternate_pencil,
                      color: tWhiteColor,
                      size: 20,
                    ),
                  ),
                )
              ]),
              const SizedBox(
                height: 10,
              ),
              Text(
                tProfileHeading,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                tProfileSubHeading,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    tEditProfile,
                    style: TextStyle(color: tWhiteColor),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tPrimaryColor,
                    side: BorderSide.none,
                    shape: StadiumBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                icon: LineAwesomeIcons.file,
                title: tMenu1,
                onPress: () {},
              ),
              ProfileMenuWidget(
                icon: LineAwesomeIcons.cog,
                title: tMenu2,
                onPress: () {},
              ),
              ProfileMenuWidget(
                icon: LineAwesomeIcons.question,
                title: tMenu3,
                onPress: () {},
              ),
              ProfileMenuWidget(
                icon: LineAwesomeIcons.user_shield,
                title: tMenu4,
                onPress: () {},
              ),
              ProfileMenuWidget(
                icon: LineAwesomeIcons.alternate_sign_out,
                title: tMenu5,
                endIcon: false,
                onPress: () {},
                textColor: Colors.red,
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Text(
                tMemberNo1,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                tMemberNo2,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
