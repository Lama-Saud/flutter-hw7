import 'package:flutter/material.dart';
import 'package:hw_7/pages/subscriptions.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFFe6ecce), Colors.white],
      )),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(211, 234, 237, 241),
                      blurRadius: 3,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SingleSetting(
                      icon: Icons.language,
                      press: () {},
                      title: 'Language',
                    ),
                    const Divider(
                      height: 30,
                    ),
                    SingleSetting(
                      icon: Icons.share,
                      press: () {},
                      title: 'Share',
                    ),
                    const Divider(
                      height: 30,
                    ),
                    SingleSetting(
                      icon: Icons.feedback,
                      press: () {},
                      title: 'Feedback',
                    ),
                    const Divider(
                      height: 30,
                    ),
                    SingleSetting(
                      icon: Icons.edit,
                      press: () {},
                      title: 'Rate App',
                    ),
                    const Divider(
                      height: 30,
                    ),
                    SingleSetting(
                      icon: Icons.privacy_tip,
                      press: () {},
                      title: 'Privacy Policy',
                    ),
                    const Divider(
                      height: 30,
                    ),
                    SingleSetting(
                      icon: Icons.follow_the_signs_outlined,
                      press: () =>
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Subscriptions())),
                      title: 'Subscription',
                    ),
                    const Divider(
                      height: 30,
                    ),
                    SingleSetting(
                      icon: Icons.alarm,
                      press: () {},
                      title: 'Workout Reminder',
                    ),
                    const Divider(
                      height: 30,
                    ),
                    SingleSetting(
                      icon: Icons.alarm,
                      press: () {},
                      title: 'Water Reminder',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SingleSetting extends StatelessWidget {
  String title;
  Function() press;
  IconData icon;

  SingleSetting({
    required this.title,
    required this.icon,
    required this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: const Color(0xFFb4b1df),
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(color: Color(0xFFa3a3a3), fontSize: 15),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 15,
          )
        ],
      ),
    );
  }
}
