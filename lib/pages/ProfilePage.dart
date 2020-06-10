import 'package:flutter/material.dart';

import 'ChatPage.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
        children: <Widget>[
          CircleAvatar(
            minRadius: 80.0,
            backgroundColor: Colors.lightBlue.shade800,
            child: Text('DP'),
          ),
          SizedBox(
            height: 8.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Ritesh'),
              Text('Optional details'),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text('Accept'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Chat(),
                    ),
                  );
                },
                child: Text('Chat'),
                color: Colors.green,
              ),
            ],
          )
        ],
      ),
    );
  }
}
