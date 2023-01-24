import 'package:flutter/material.dart';
import 'package:hw_7/pages/add_program.dart';
import 'package:hw_7/pages/setting.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: InkWell(
                child: const Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => const Setting()),
                  ),
                ),
              ),
            ),
            // SizedBox(width: 20),
          ],
          title: const Center(
            child: Text(
              "My Profile",
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
              const NameSection(),
              const SizedBox(height: 10),
              const Text(
                "Beginner level",
                style: TextStyle(color: Colors.black38),
              ),
              const SizedBox(height: 20),
              const Text(
                "My programs",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              const MyProgramsSection(),
              const SizedBox(height: 10),
              const Text(
                "Metrics",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: GridView.count(
                  //primary: false,
                  crossAxisCount: 2,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
                  children: [
                    //////////////////// 11
                    Metrics(
                      title: "Calories",
                      subtitle: "500 Cal",
                      icon: Icons.food_bank,
                      color: const Color(0xFFaeabdc),
                      iconColor: const Color(0xFF7c93ee),
                    ),

                    //////////////////// 22
                    Metrics(
                      title: "Weight",
                      subtitle: "58 kg",
                      icon: Icons.monitor_weight_outlined,
                      color: const Color(0xFFaebeff),
                      iconColor: const Color(0xFF8ea4fb),
                    ),

                    /////////////////// 33
                    Metrics(
                      title: "Water",
                      subtitle: "350 ml",
                      icon: Icons.monitor_weight_outlined,
                      color: const Color(0xFFa9c6e8),
                      iconColor: const Color(0xFF7f98f0),
                    ),
                    /////////////////// 44
                    Metrics(
                      title: "Keys",
                      subtitle: "0 pc",
                      icon: Icons.key,
                      color: const Color(0xFFc7b1f2),
                      iconColor: const Color(0xFF807bc2),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Metrics extends StatelessWidget {
  String title;
  String subtitle;
  IconData icon;
  Color color;
  Color iconColor;

  Metrics({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.iconColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
              color: color,
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: const TextStyle(color: Color(0xFFababab)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyProgramsSection extends StatelessWidget {
  const MyProgramsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(211, 234, 237, 241),
            blurRadius: 5,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFFd7e897),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(211, 234, 237, 241),
                  blurRadius: 2,
                  spreadRadius: 3,
                ),
              ],
            ),
            child: InkWell(
              child: const Icon(Icons.add),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddProgramPage())),
            ),
          ),
          const Text(
            "Add new program",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class NameSection extends StatelessWidget {
  const NameSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          clipBehavior: Clip.hardEdge,
          height: 30,
          width: 30,
          child: Image.asset(
            "lib/assets/profile2.png",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 5),
        const Text(
          "Hi, ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const Text(
          "Masha",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color(0xFFb5b3de),
          ),
        ),
        const Text(
          "!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ],
    );
  }
}
