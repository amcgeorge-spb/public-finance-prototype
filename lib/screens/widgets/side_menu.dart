import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Public Finance'),
          ),
          DrawerListTile(
            title: "Dashboard",
            icon: Icons.dashboard,
            press: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          DrawerListTile(
            icon: Icons.people,
            title: "My Clients",
            press: () {
              Navigator.pushNamed(context, '/clients');
            },
          ),
          DrawerListTile(
            icon: Icons.leaderboard,
            title: "Transactions",
            press: () {
              Navigator.pushNamed(context, '/transactions');
            },
          ),
          DrawerListTile(
            icon: Icons.list,
            title: "List",
            press: () {
              Navigator.pushNamed(context, '/list');
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.press,
    required this.icon,
  }) : super(key: key);

  final String title;
  final VoidCallback press;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
