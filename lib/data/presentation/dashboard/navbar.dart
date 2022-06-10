import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_share/flutter_share.dart';
import '../../../bloc/auth_bloc.dart';


class Navbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("${user.displayName}"),
            accountEmail: Text('${user.email}'),
          currentAccountPicture: CircleAvatar(
            radius: 28, // Image radius
            backgroundImage: NetworkImage("${user.photoURL}"
            ),
          ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image:NetworkImage("https://media.tacdn.com/media/attractions-splice-spp-674x446/06/74/94/54.jpg"),
                      fit: BoxFit.cover,
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("Messages"),
            onTap: () {
              Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => Messages()));
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Members"),
            onTap: () {
              Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => Members()));
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Share"),
            onTap: () {
              FlutterShare.share(title: 'Share app',
                linkUrl: "https://drive.google.com/drive/folders/1lH_zBIdgsBrBak9bXEPTySP7oQ0jwJWD?usp=sharing");
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Request"),
            onTap: () {
              Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => Request()));
            },
            trailing: ClipOval(
              child: Container(color: Colors.red ,width: 20, height: 20,
                  child: Center(child: Text("8", style: TextStyle(color: Colors.white, fontSize: 12),))),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => Settings()));
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text("Policies"),
            onTap: () {
              Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => Policies()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("LogOut"),
            onTap: () {
              context.read<AuthBloc>().add(SignOutRequested());
            },

          )
        ],
      ),
    );
  }
}

class Messages extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class Settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class Members extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Members'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class Request extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class Policies extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Policies'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}