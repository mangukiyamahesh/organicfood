import 'package:flutter/material.dart';

class ScaffoldDemo extends StatefulWidget {
  const ScaffoldDemo({Key? key}) : super(key: key);

  @override
  State<ScaffoldDemo> createState() => _ScaffoldDemoState();
}

class _ScaffoldDemoState extends State<ScaffoldDemo> {
  final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.red,
      //   //mini: true,
      //   elevation: 0,
      //   child: Icon(Icons.add),
      // ),
      floatingActionButton: CircleAvatar(
        radius: 50,
      ),
      // appBar: AppBar(
      //   //iconTheme: IconThemeData(color: Colors.black),
      //   backgroundColor: Colors.blue,
      //   // leading: const Icon(Icons.menu),
      //   titleSpacing: 0,
      //   leadingWidth: 50,
      //   //toolbarHeight: 200,
      //   elevation: 5,
      //   //centerTitle: true,
      //   title: const Text("Awesome App"),
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
      //   ],
      // ),
      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       DrawerHeader(
      //         padding: EdgeInsets.zero,
      //         child: UserAccountsDrawerHeader(
      //           margin: EdgeInsets.zero,
      //           decoration: BoxDecoration(color: Colors.green),
      //           accountName: Text("Abc"),
      //           accountEmail: Text("abc@gmail.com"),
      //           currentAccountPicture: CircleAvatar(
      //             radius: 25,
      //             backgroundColor: Colors.purple,
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         child: MediaQuery.removePadding(
      //           context: context,
      //           removeTop: true,
      //           child: ListView(
      //             physics: BouncingScrollPhysics(),
      //             children: [
      //               ListTile(
      //                 onTap: () {},
      //                 leading: Icon(Icons.person),
      //                 title: Text("Account"),
      //                 trailing: Icon(Icons.edit),
      //               ),
      //               ListTile(
      //                 onTap: () {},
      //                 leading: Icon(Icons.settings),
      //                 title: Text("Settings"),
      //                 trailing: Icon(Icons.edit),
      //               ),
      //               ListTile(
      //                 onTap: () {},
      //                 leading: Icon(Icons.info_outline),
      //                 title: Text("About Us"),
      //               ),
      //               ListTile(
      //                 //minVerticalPadding: 0,
      //                 onTap: () {},
      //                 leading: Icon(Icons.star_border),
      //                 title: Text("Rate Us"),
      //               ),
      //               ListTile(
      //                 //minVerticalPadding: 0,
      //                 onTap: () {},
      //                 leading: Icon(Icons.share),
      //                 title: Text("Share"),
      //               ),
      //               ListTile(
      //                 //minVerticalPadding: 0,
      //                 onTap: () {},
      //                 leading: Icon(Icons.share),
      //                 title: Text("Share"),
      //               ),
      //               ListTile(
      //                 //minVerticalPadding: 0,
      //                 onTap: () {},
      //                 leading: Icon(Icons.share),
      //                 title: Text("Share"),
      //               ),
      //               ListTile(
      //                 //minVerticalPadding: 0,
      //                 onTap: () {},
      //                 leading: Icon(Icons.share),
      //                 title: Text("Share"),
      //               ),
      //               ListTile(
      //                 //minVerticalPadding: 0,
      //                 onTap: () {},
      //                 leading: Icon(Icons.share),
      //                 title: Text("Share"),
      //               ),
      //               ListTile(
      //                 //minVerticalPadding: 0,
      //                 onTap: () {},
      //                 leading: Icon(Icons.share),
      //                 title: Text("Share"),
      //               ),
      //               ListTile(
      //                 //minVerticalPadding: 0,
      //                 onTap: () {},
      //                 leading: Icon(Icons.share),
      //                 title: Text("Share"),
      //               ),
      //               ListTile(
      //                 //minVerticalPadding: 0,
      //                 onTap: () {},
      //                 leading: Icon(Icons.share),
      //                 title: Text("Share"),
      //               ),
      //               ListTile(
      //                 //minVerticalPadding: 0,
      //                 onTap: () {
      //                   Navigator.pop(context);
      //                 },
      //                 leading: Icon(Icons.close),
      //                 title: Text("Close"),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      drawer: Align(
        alignment: Alignment.topLeft,
        child: Container(
          height: 600,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  globalKey.currentState!.openDrawer();
                },
                icon: Icon(
                  Icons.sort,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
