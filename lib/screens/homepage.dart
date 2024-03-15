import 'package:flutter/material.dart';
import 'package:tab_bar_demo/screens/apps.dart';
import 'package:tab_bar_demo/screens/calls.dart';
import 'package:tab_bar_demo/screens/contacts.dart';
import 'package:tab_bar_demo/screens/message.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [

            Row(
              children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                      color: Colors.black12,
                      child: TabBar(

                     labelColor: Colors.blue,
                     dividerColor: Colors.red,
                     unselectedLabelColor: Colors.green,

                   controller: tabController,
                    indicatorColor: Colors.orange,
                    indicatorWeight: 10,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: const [
                      RotatedBox(
                        quarterTurns: 2,
                        child: Tab(


                            child: Text("Apps")),
                      ),
                      RotatedBox(
                          quarterTurns: 2,
                          child: Tab(child: Text("Calls"))),
                      RotatedBox(
                        quarterTurns: 2,
                        child: Tab(

                            child: Text("Message")),
                      ),
                      RotatedBox(
                          quarterTurns: 2,
                          child: Tab(child: Text("Contact"))),


                    ],
                  )),
                ),
              ],
            ),
            Expanded(child: RotatedBox(
              quarterTurns: 3,
              child: TabBarView(

                controller: tabController,
                children: const [
                  Apps_Demo(),
                  CallsDemo(),
                  MessageDemo(),
                  ContactDemo(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
