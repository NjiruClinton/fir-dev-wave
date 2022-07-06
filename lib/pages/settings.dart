
import 'package:flutter/material.dart';
import 'package:wave/pages/widgets/confirm_dialog.dart';

import '../controllers/db_helper.dart';

class Settings1 extends StatefulWidget {
  const Settings1({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings1> {
  //

  DbHelper dbHelper = DbHelper();

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          "Settings",
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(
          12.0,
        ),
        children: [
          ListTile(
            onTap: () async {
              bool answer = await showConfirmDialog(context, "Warning",
                  "This is irreversible. Your entire data will be Lost");
              if (answer) {
                await dbHelper.cleanData();
                Navigator.of(context).pop();
              }
            },
            tileColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 20.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                8.0,
              ),
            ),
            title: Text(
              "Clean Data",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            subtitle: Text(
              "This is irreversible",
            ),
            trailing: Icon(
              Icons.delete_forever,
              size: 32.0,
              color: Colors.black87,
            ),
          ),
          //
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
