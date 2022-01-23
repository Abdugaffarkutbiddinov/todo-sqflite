import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_note_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildNote(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          ListTile(
            title: Text("Note Title"),
            subtitle: Text("Jan 24, 2022 - High"),
            trailing: Checkbox(
              onChanged: (value) {
                print(value);
              },
              activeColor: Theme
                  .of(context)
                  .primaryColor,
              value: true,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(context, CupertinoPageRoute(builder: (_)
          =>
              AddNoteScreen()
          ));
        },
        child: Icon(
          Icons.add,
          color: Colors.blueGrey,
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 80.0),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Notes',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '0 - 10',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              );
            }
            return _buildNote(index);
          }),
    );
  }
}
