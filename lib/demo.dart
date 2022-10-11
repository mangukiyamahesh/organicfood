import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
        ),
        actions: [
          Icon(
            Icons.search,
          ),
          Icon(
            Icons.more_vert,
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(
                  'Mahesh',
                ),
                accountEmail: Text(
                  'abc@gmail.com',
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person,
                      ),
                      title: Text(
                        'Account',
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.person,
                      ),
                      title: Text(
                        'Account',
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.person,
                      ),
                      title: Text(
                        'Account',
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.person,
                      ),
                      title: Text(
                        'Account',
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.person,
                      ),
                      title: Text(
                        'Account',
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.person,
                      ),
                      title: Text(
                        'Account',
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.person,
                      ),
                      title: Text(
                        'Account',
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.person,
                      ),
                      title: Text(
                        'Account',
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.person,
                      ),
                      title: Text(
                        'Account',
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.person,
                      ),
                      title: Text(
                        'Account',
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.person,
                      ),
                      title: Text(
                        'Account',
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
