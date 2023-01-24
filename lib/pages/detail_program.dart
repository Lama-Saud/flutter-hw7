import 'package:flutter/material.dart';

class DetailProgram extends StatelessWidget {
  const DetailProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFc7ddf8), Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: const Color(0xFFc7ddf8),
          elevation: 0,
          leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 64.0),
          child: Container(
            padding: const EdgeInsets.all(32),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const ProgramInfo(),
                  const SizedBox(height: 20),
                  Container(
                    child: Column(
                      children: const [
                        SinglePart(),
                        SizedBox(height: 10),
                        SinglePart(),
                        SizedBox(height: 10),
                        SinglePart(),
                        SizedBox(height: 10),
                        SinglePart(),
                        SizedBox(height: 10),
                        SinglePart(),
                        SizedBox(height: 10),
                        SinglePart(),
                        SizedBox(height: 10),
                        SinglePart(),
                      ],
                    ),
                  ),
                  // Align(
                  //   alignment: FractionalOffset.bottomCenter,
                  //   child: Container(
                  //     decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25))),
                  //     child: const Text("Start"),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SinglePart extends StatelessWidget {
  const SinglePart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        children: [
          Image.asset(
            "lib/assets/part1.png",
            height: 50,
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Mountain Pose",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "00:30 sec",
                style: TextStyle(color: Color(0xFFa3a3a3), fontSize: 12),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProgramInfo extends StatelessWidget {
  const ProgramInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "1st Day",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Icon(
              Icons.edit,
              color: Color(0xFFaeabdc),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            Text("7 min"),
            SizedBox(width: 40),
            Text("2 week"),
          ],
        ),
        const SizedBox(height: 15),
        const Text(
          "7 minutes yoga",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.only(right: 64.0),
          child: Text(
            "The 7 Minute Yoga Routine / sequence promotes a healthy floe of energy so thta you can look and feel your best.\n Boost your energy, boost you spirits, boost your confidence!",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
