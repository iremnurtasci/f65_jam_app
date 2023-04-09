import 'package:flutter/material.dart';
import 'package:testapp/anasayfa.dart';

class userProfile extends StatelessWidget {
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
              const Icon(Icons.account_circle, size: 100, color: Colors.black),
              const Text(
                textAlign: TextAlign.center,
                'Profil',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                    color: Colors.amberAccent,
                  ),
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(20.0),
                  child: const Text(
                    'Ad Soyad: Ayşe Yılmaz',
                    textAlign: TextAlign.start,
                  )),
              Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                    color: Colors.amberAccent,
                  ),
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(20.0),
                  child: const Text(
                    'E-posta: ayseyilmaz@gmail.com',
                    textAlign: TextAlign.start,
                  )),
              Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                    color: Colors.amberAccent,
                  ),
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(20.0),
                  child: const Text(
                    'Telefon: 01234567890',
                    textAlign: TextAlign.start,
                  )),
              Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                    color: Colors.amberAccent,
                  ),
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(20.0),
                  child: const Text(
                    'Yaş: 22',
                    textAlign: TextAlign.start,
                  )),
              Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                    color: Colors.amberAccent,
                  ),
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(20.0),
                  child: const Text(
                    'Alan: Flutter',
                    textAlign: TextAlign.start,
                  )),
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
