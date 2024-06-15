import 'package:chateo/services/auth/auth_service.dart';
import 'package:chateo/pages/settings.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  void signOut() async {
    //auth instance
    final authService = AuthService();

    //sign out user

    await authService.signOutUser();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //logo
          Column(
            children: [
              DrawerHeader(
                  child: Text(
                'chateoo',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 40,
                    fontWeight: FontWeight.w900),
              )),

              //home
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: const Text("HOME"),
                  leading: const Icon(
                    Icons.home,
                    size: 30,
                  ),
                  onTap: () {
                    //pop off the drawer from stack
                    Navigator.pop(context);
                  },
                ),
              ),
              //settings
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: const Text("SETTINGS"),
                  leading: const Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  onTap: () {
                    //Pop drawwer off the screen stack
                    Navigator.pop(context);
                    //navigate to settings
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settings()));
                  },
                ),
              )
            ],
          ),
          //logout
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              title: const Text("LOGOUT"),
              leading: const Icon(
                Icons.logout,
                size: 30,
              ),
              onTap: () {
                //pop drawer of screen stack
                Navigator.pop(context);

                //signout
                signOut();
              },
            ),
          )
        ],
      ),
    );
  }
}
