import 'package:flutter/material.dart';
import 'package:hw_7/pages/detail_program.dart';

class AddProgramPage extends StatelessWidget {
  const AddProgramPage({super.key});

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
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
            // SizedBox(width: 20),
          ],
          title: const Center(
            child: Text(
              "Add programs",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Programs",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(height: 10),
              const Text(
                "Choose your programs",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Yoga for Beginners",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  )
                ],
              ),
              const SizedBox(height: 10),
              InkWell(
                child: SingleProgram(
                    title: "7 minutes yoga", color: const Color(0xFFe9e2f5), info1: "7 min", info2: "2 week"),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DetailProgram(),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Yoga for Beginners",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              InkWell(
                child: SingleProgram(
                    title: "7 minutes yoga", color: const Color(0xFFe9e2f5), info1: "7 min", info2: "2 week"),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DetailProgram(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SingleProgram extends StatelessWidget {
  String title;
  String info1;
  String info2;
  Color color;

  SingleProgram({
    required this.title,
    required this.color,
    required this.info1,
    required this.info2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 250,
      // height: 100,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color: color,
      ),
      child: Row(
        children: [
          Container(
            width: 250,
            height: 100,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              color: Color(0x000000ff),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Row(
                  children: [
                    Text(
                      info1,
                      style: const TextStyle(color: Color(0xFFababab)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      info2,
                      style: const TextStyle(color: Color(0xFFababab)),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
