import 'package:flutter/material.dart';

const String _AccountName = 'Aravind Vemula';
const String _AccountEmail = 'vemula.aravind336@gmail.com';
const String _AccountAbbr = 'AV';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      child: new Drawer(
          elevation: 0,
          child: new ListView(
              padding: const EdgeInsets.only(top: 24.0),
              children: <Widget>[
                new UserAccountsDrawerHeader(
                    accountName: const Text(
                      _AccountName,
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    decoration: BoxDecoration(

                      border: Border.all(width: 1, color: Colors.blueGrey),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 0.0),
                        // 10% of the width, so there are ten blinds.
                        colors: [
                          const Color(0xFFFFFFEE),
                          const Color(0xFF999999)
                        ],
                        // whitish to gray
                        tileMode: TileMode
                            .repeated, // repeats the gradient over the canvas
                      ),
                    ),
                    accountEmail: const Text(
                      _AccountEmail,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),

                    currentAccountPicture: new CircleAvatar(
                        backgroundColor: Colors.orangeAccent,
                        child: new Text(_AccountAbbr)),
                    otherAccountsPictures: <Widget>[
                      new GestureDetector(
                        child: new Semantics(
                          label: 'Switch Account',
                          child: new CircleAvatar(
                            backgroundColor: Colors.lime,
                            child: new Text('Ar'),
                          ),
                        ),
                      )
                    ]),
                new ListTile(
                  leading: new Icon(Icons.lightbulb_outline),
                  title: new Text('Notes'),
                ),
                new Divider(),
                new ListTile(
                  leading: new Text('Label'),
                  trailing: new Text('Edit'),
                ),
                new ListTile(
                  leading: new Icon(Icons.add),
                  title: new Text('Create new label'),
                ),
                new Divider(),
                new ListTile(
                  leading: new Icon(Icons.archive),
                  title: new Text('Archive'),
                ),
                new ListTile(
                  leading: new Icon(Icons.delete),
                  title: new Text('Trash'),
                ),
                new Divider(),
                new ListTile(
                  leading: new Icon(Icons.settings),
                  title: new Text('Settings'),
                ),
                new ListTile(
                  leading: new Icon(Icons.help),
                  title: new Text('Help & feedback'),
                )
              ])),
    );
  }

  _onTapOtherAccounts(BuildContext context) {
    Navigator.of(context).pop();
    showDialog<Null>(
      context: context,
      child: new AlertDialog(
        title: const Text('Account switching not implemented.'),
        actions: <Widget>[
          new FlatButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  _onListTileTap(BuildContext context) {
    Navigator.of(context).pop();
    showDialog<Null>(
      context: context,
      child: new AlertDialog(
        title: const Text('Not Implemented'),
        actions: <Widget>[
          new FlatButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
