import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marlo/screens/invite_screen.dart';

Future<void> main() async {
  runApp(const ContractScreen());
}

class ContractScreen extends StatelessWidget {
  const ContractScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.system,
      home: ContractPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ContractPage extends StatefulWidget {
  const ContractPage({Key? key}) : super(key: key);

  @override
  ContractPageState createState() => ContractPageState();
}

class ContractPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "Teams",
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'All People',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              primary: false,
              itemCount: 2,
              itemBuilder: _listViewAllPeopleItem,
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Invited People',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              primary: false,
              itemCount: 2,
              itemBuilder: _listViewInvitedPeopleItem,
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          gotoInviteScreen();
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }

  Widget _listViewAllPeopleItem(BuildContext context, int index) {
    return Card(
      elevation: 1,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(color: Colors.blueAccent),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'KS',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'Krishna Soundar',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 6),
                    child: const Text(
                      'Active',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: const Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Admin',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _listViewInvitedPeopleItem(BuildContext context, int index) {
    return Card(
      elevation: 1,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(color: Colors.brown),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'KS',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'Krishna Soundar',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 6),
                    child: const Text(
                      'Active',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: const Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Admin',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  gotoInviteScreen(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => InvitePage()),
    ).whenComplete(() {
      //getMyTrainers();
    });
  }
}
