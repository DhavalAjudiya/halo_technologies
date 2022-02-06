import 'package:flutter/material.dart';
import 'package:halo_technologies/view/addnewlead.dart';
import 'package:halo_technologies/view/const.dart';
import 'package:velocity_x/velocity_x.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Shopping _shopping = Shopping();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('halo technologies'),
        ),
        drawer: Drawer(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  20.heightBox,
                  Container(
                    height: 100,
                    child: Image.asset(
                      "assets/img/halo_technologies.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                  10.heightBox,
                  const Divider(),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.watch_later_outlined,
                          size: 22,
                        ),
                      ),
                      Text(
                        "Dashboard-All",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.watch_later_outlined),
                      ),
                      Text(
                        "NMIMS january 2022",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.watch_later_outlined),
                      ),
                      Text(
                        "MBA-NMIMS january 2022",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.watch_later_outlined),
                      ),
                      Text(
                        "MSCAIML-NMIMS january 2022",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.watch_later_outlined),
                      ),
                      Text(
                        "Not Connected Google Leads",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.stacked_bar_chart),
                      ),
                      Text(
                        "Google Leads Counter",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.volume_up_sharp),
                      ),
                      Flexible(
                        child: Text(
                          "Urgent Missed / Wasting / Admission Link",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.maps_ugc),
                      ),
                      Text(
                        "Leads & Follow app",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.mail),
                      ),
                      Text(
                        "Reports",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.wb_sunny),
                      ),
                      Text(
                        "Dashboard-All",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.workspaces_filled),
                      ),
                      Text(
                        "Referral",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.search),
                      ),
                      Text(
                        "Advance Search / Export",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.messenger),
                      ),
                      Text(
                        "Whatsapp",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Divider(),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 150 / 80,
                            crossAxisCount: 1,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                    itemCount: _shopping.shoppingList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: _shopping.shoppingList[index]['color'])),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AddNewLead(),
                                ));
                          },
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          _shopping.shoppingList[index]['icon'],
                                          size: 60,
                                          color: Vx.white,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${_shopping.shoppingList[index]['text']}",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 40,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        Text(
                                          "${_shopping.shoppingList[index]['subtext']}",
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                height: 120,
                                // width: 250,
                                color: _shopping.shoppingList[index]['color'],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "${_shopping.shoppingList[index]['title']}",
                                      style: const TextStyle(
                                        fontSize: 17,

                                        // color: _shopping.shoppingList[index]['color'],
                                      ),
                                    ),
                                    const Spacer(),
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: _shopping
                                          .shoppingList[index]['color'],
                                      child: const Icon(
                                        Icons.arrow_forward_rounded,
                                        color: Vx.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // height: 150,
                        // width: 250,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
