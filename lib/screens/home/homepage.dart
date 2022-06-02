import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'drawer/my_drawer_hader.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ielts Books"),
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
      ),
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                DrowerItem(),
                DrowerItem(),
                DrowerItem(),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                const MyHaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget DrowerItem() {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.green[300],
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Padding(
      padding: EdgeInsets.all(10.0),
      child: Text("He'd have you all unravel at the"),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget MyDrawerList() {
  return Container(
    padding: const EdgeInsets.only(top: 15),
    child: Column(
      children: [
        menuItems(
            1,
            "Md Ashrafuzzaman Shakil",
            Image.asset("assets/images/facbook.png"),
            "https://www.facebook.com/shakil7896"),
        menuItems(2, "Md Ashrafuzzaman", Image.asset("assets/images/git.png"),
            "https://github.com/AshrafuzzamanShakil"),
        menuItems(
            3,
            "Ashrafuzzaman Shakil",
            Image.asset("assets/images/linkdin.png"),
            "https://www.linkedin.com/in/ashrafuzzaman-shakil-888b8b18a/"),
        menuItems(4, "Feedback", Image.asset("assets/images/playstore.png"),
            "https://www.facebook.com/shakil7896"),
      ],
    ),
  );
}

Widget menuItems(int id, String title, Image image, String link) {
  return Material(
    child: InkWell(
      onTap: () {
        _launchURL(link);
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: image,
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.black, fontSize: 16.0),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

enum DrawerSections {
  facebook,
  github,
  linkdin,
  send_feedback,
}

void _launchURL(String link) async {
  if (!await launch(link)) throw 'Could not launch $link';
}
