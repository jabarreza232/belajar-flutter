import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: Icons.folder,
              text: "My Files",
              onTap: () => print("Tap My Files")),
          _drawerItem(
              icon: Icons.group,
              text: "Shared with me",
              onTap: () => print("Tap Shared Menu")),
          _drawerItem(
              icon: Icons.access_time,
              text: "Recent",
              onTap: () => print("Tap Recent Menu")),
          _drawerItem(
              icon: Icons.folder,
              text: "Trash",
              onTap: () => print("Tap Trash Menu")),
          const Divider(
            height: 25,
            thickness: 1,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Labels",
                style: TextStyle(fontSize: 16, color: Colors.black54)),
          ),
          _drawerItem(
              icon: Icons.bookmark,
              text: "Family",
              onTap: () => print("Tap Family Menu"))
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return const UserAccountsDrawerHeader(
        currentAccountPicture: ClipOval(
          child: Image(
              image: AssetImage("assets/image/babymetal-1.png"),
              fit: BoxFit.cover,),            
        ),
        otherAccountsPictures: [
          ClipOval(
            child: Image(
                image: AssetImage("assets/image/babymetal-metal-galaxy.jpg"),
                fit: BoxFit.cover),
          ),
          ClipOval(
            child: Image(
                image: AssetImage("assets/image/babymetal-1.png"),
                fit: BoxFit.cover),
          ),
        
        ],

        accountName: Text("Belajar Flutter"),
        accountEmail: Text("test@gmail.com"));
  }

  Widget _drawerItem(
      {required IconData icon,
      required String text,
      GestureTapCallback? onTap}) {
    return ListTile(
      title: Row(children: [
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ]),
      onTap: onTap,
    );
  }
}
