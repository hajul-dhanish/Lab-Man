// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

String Component = "Projectb demo"; 
void main() => runApp(const MyApp());

// GV
// String ?CustomIcon;

// String CustomIcon? avail : notAvail;

Icon avail = const Icon(
  Icons.done,
  color: Colors.green,
);
Icon notAvail = const Icon(
  Icons.not_interested,
  color: Colors.red,
);
//
String AppTitle = "Lab Man";
Widget Div = const SizedBox(
  height: 8,
  width: 8,
);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool Exxpansion = false;
//
Icon Custom = avail;

//
class _MyAppState extends State<MyApp> {
  void CustomSlip() {
    if (Custom == notAvail) {
      setState(() {
       bool Exxpansion = true;
      });
//
    } else{bool Exxpansion = false;}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.amber[50]),
        title: AppTitle,
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[100],
        title: Text(AppTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(
              leading: CircleAvatar(child: Image.asset("assets/dp.jpg")),
              title: const Text("The Lab Man"),
              subtitle: const Text("Sample UI for First Review"),
              children: const [Text("Hi Maple")],
            ),
            Div,
            const Text("Available Labs",
                style: TextStyle(
                  fontSize: 30,
                  // decoration: TextDecoration.underline,
                )),
            CustomCard(
                contact: "950040541",
                content: 'Mrs. Mai Senpai',
                time: "9:00 - 12:00",
                icont: Custom,
                image: 'assets/lab1.jpg',
                labName: 'Microprocessor'),
            // CustomCard(
            //     content: 'Mrs. Mikaro Senpai',
            //     time: "10:00 - 13:30",
            //     icont: notAvail,
            //     image: 'assets/lab2.jpg',
            //     labName: 'MicroController'),
            // CustomCard(
            //     content: 'Mr. onnicha Senpai',
            //     time: "13:30 - 14:00",
            //     icont: avail,
            //     image: 'assets/lab3.png',
            //     labName: 'Electronics'),
            // CustomCard(
            //     content: 'Mrs. Mai Senpai',
            //     time: "10:00 - 13:00",
            //     icont: avail,
            //     image: 'assets/lab1.jpg',
            //     labName: 'Digital Communication'),
            // CustomCard(
            //     content: 'Mrs. Miko Senpai',
            //     time: "13:00 - 16:00",
            //     icont: notAvail,
            //     image: 'assets/lab3.jpg',
            //     labName: 'Wireless'),
            // CustomCard(
            //     content: 'Mr. nadyome Hoki Senpai',
            //     time: "9:30 - 11:00",
            //     icont: notAvail,
            //     image: 'assets/lab2.jpg',
            //     labName: 'Networking'),
          ],
        ),
      ),
    );
  }

//
  Widget CustomCard({
    required String labName,
    required String image,
    required Icon icont,
    required String content,
    required String time,
    required String contact,
  }) {
    return ExpansionTile(
      children: [
        Exxpansion
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Icon(Icons.call)),
                  Div,
                  ElevatedButton(
                      onPressed: () {}, child: const Icon(Icons.mail)),
                ],
              )
            : const Text("Enjoy your lab"),
      ],
      // color: Colors.amber[100],
      title: ListTile(
        onTap: () {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InnerLabs()),
            );
          });
        },
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Div,
            Row(
              children: [
                const Text(
                  " Host: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(content),
              ],
            ),
            Div,
            Row(
              children: [
                const Icon(Icons.timer),
                const Text(
                  " Timing: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(time),
                Div,
              ],
            )
          ],
        ),
        leading: CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
        trailing: icont,
        title: Text(
          labName,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      // margin: const EdgeInsets.all(20),
      // shape: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(10),
      //     borderSide: const BorderSide(color: Colors.green, width: 1)),
    );
  }
}

class InnerLabs extends StatefulWidget {
  const InnerLabs({Key? key}) : super(key: key);

  @override
  State<InnerLabs> createState() => _InnerLabsState();
}

class _InnerLabsState extends State<InnerLabs> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome Buddy"),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //
                Text(Component),
                Div,
                const Text("<LAB DETAILS HERE blah blah blah..>"),
                Div,
                Div,
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    onPressed: () {},
                    child: const Icon(Icons.call),
                  ),
                  Div,
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Report"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                  ),
                ])
              ]),
        ),
      ),
    );
  }
}
