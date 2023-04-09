import 'package:flutter/material.dart';
import 'package:testapp/app_info.dart';
import 'package:testapp/user_profile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://slack.com/');
final Uri _url2 = Uri.parse('https://oyunveuygulamaakademisi.com/');

class anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("MyAcademy"),
        ),
        body: const MyStatefulWidget());
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(Icons.account_circle, size: 100, color: Colors.black),
            const Text(
              textAlign: TextAlign.center,
              'Ayşe Yılmaz',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              'Bursiyer',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => anasayfa()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  'Görevlerim',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => anasayfa()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text('Anketlerim', style: TextStyle(fontSize: 20)),
              ),
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: ElevatedButton(
                onPressed: _launchUrl,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text('Slack', style: TextStyle(fontSize: 20)),
              ),
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: ElevatedButton(
                onPressed: _launchUrl2,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text('Akademi Web Sayfası',
                    style: TextStyle(fontSize: 20)),
              ),
            ),
            Container(
              height: 50,
              width: 20,
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 70,
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => appinfo()),
                          );
                        },
                        icon: const Icon(
                          Icons.announcement,
                          size: 30,
                        ),
                        label: const Text(""),
                      )),
                  SizedBox(
                      width: 70,
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => anasayfa()),
                          );
                        },
                        icon: const Icon(
                          Icons.account_balance,
                          size: 30,
                        ),
                        label: const Text(""),
                      )),
                  SizedBox(
                      width: 70,
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => userProfile()),
                          );
                        },
                        icon: const Icon(
                          Icons.account_circle_outlined,
                          size: 30,
                        ),
                        label: const Text(""),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

Future<void> _launchUrl2() async {
  if (!await launchUrl(_url2)) {
    throw Exception('Could not launch $_url2');
  }
}
