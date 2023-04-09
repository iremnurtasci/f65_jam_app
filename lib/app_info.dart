import 'package:flutter/material.dart';
import 'package:testapp/anasayfa.dart';

class appinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("MyAcademy"),
      ),
      body: const MyStatefulWidget(),
    );
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                    color: Colors.amberAccent,
                  ),
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(20.0),
                  child: const Text(
                    'OUA - Game App Jam 2023 Takım: F-65',
                    textAlign: TextAlign.center,
                  )),
              const Text(
                textAlign: TextAlign.center,
                'Alperen Köse',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              const Text(
                textAlign: TextAlign.center,
                'İrem Nur Taşci',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              const Text(
                textAlign: TextAlign.center,
                'Nisa Yıldız',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              const Text(
                textAlign: TextAlign.center,
                'Okan Patır',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              const Text(
                textAlign: TextAlign.center,
                'Semanur Özyılmaz',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
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
                          onPressed: () {},
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
                              MaterialPageRoute(
                                  builder: (context) => anasayfa()),
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
                          onPressed: () {},
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
        ));
  }
}
