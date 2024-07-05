import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://im.rediff.com/cricket/2023/jan/17kohli1.jpg?w=670&h=900";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
           children: [
             DrawerHeader(
               padding: EdgeInsets.zero,
                 margin: EdgeInsets.zero,
                 child: UserAccountsDrawerHeader(
                   accountName: Text("karan gautam"),
                   accountEmail: Text("karangautam174@gmail.com"),
                   currentAccountPicture: CircleAvatar(
                     
                     backgroundImage: NetworkImage(imageUrl)
                   )

                 )
             ),
             ListTile(
               leading: Icon(
                 CupertinoIcons.home,
                 color: Colors.white,
               ),
               title: Text(
                 "Home",
                     textScaleFactor: 1.2,
                 style: TextStyle(
                   color: Colors.white
                 ),
               ),
             ),

             ListTile(
               leading: Icon(
                 CupertinoIcons.profile_circled,
                 color: Colors.white,
               ),
               title: Text(
                 "profile",
                 textScaleFactor: 1.2,
                 style: TextStyle(
                     color: Colors.white
                 ),
               ),
             ),

             ListTile(
               leading: Icon(
                 CupertinoIcons.mail,
                 color: Colors.white,
               ),
               title: Text(
                 "Mail",
                 textScaleFactor: 1.2,
                 style: TextStyle(
                     color: Colors.white
                 ),
               ),
             )
           ],
        ),
      ),
    );
  }
}
