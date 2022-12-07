import 'dart:io';

import 'package:flutter/material.dart';
import 'package:marlo/util/AppColors.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future<void> main() async {
  runApp(const InviteScreen());
}

class InviteScreen extends StatelessWidget {
  const InviteScreen({Key? key}) : super(key: key);

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
      home: InvitePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class InvitePage extends StatefulWidget {
  const InvitePage({Key? key}) : super(key: key);

  @override
  InvitePageState createState() => InvitePageState();
}

class InvitePageState extends State {
  String _selected = '';
  List<String> _items = ['Admin', 'Approver', 'Preparer', 'Viewer','Employee'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        leading: IconButton(
          icon: Icon(
            Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Invite',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(color: AppColors.TOTAL_COLOR),
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Business Email',style: TextStyle(color: Colors.grey),),
                    SizedBox(
                      height: 10,
                    ),
                    Text('xihoh55496@dineroa.com',style: TextStyle(color: Colors.black),)
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                  showModal(context);
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: const BoxDecoration(color: AppColors.TOTAL_COLOR),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_selected),
                      const Icon(Icons.arrow_drop_down_outlined)
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {},
          child: const Center(
            child: Text('Continue'),
          ),
        ),
      ),
    );
  }

  void showModal(context){
    showBarModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        context: context,
        builder: (context){
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                 margin: const EdgeInsets.only(left: 15,top: 10),
                  child: const Text('Team roles',style: TextStyle(color: Colors.black,fontSize: 20,
                  fontWeight: FontWeight.bold),),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height * 0.4,
                  alignment: Alignment.center,
                  child: ListView.builder(
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            child: Card(
                              child: Container(
                                decoration: const BoxDecoration(color: Colors.white),
                                padding: const EdgeInsets.all(15),
                                child: Text(_items[index]),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selected = _items[index];
                                print(_selected);

                              });
                              Navigator.of(context).pop();
                            }
                        );
                      }
                  ),
                )
              ],
            ),
          );
        }
    );
  }
}
