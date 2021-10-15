import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[150],
        appBar: AppBar(
          title: Text('Профиль'),
          backgroundColor: Colors.lightBlue[900],
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  'Имя',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.lightBlue[900],
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Курьер',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue[50]),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue[50]),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.blue[50],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Телефон',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.lightBlue[900],
                  ),
                  textAlign: TextAlign.right,
                ),
                TextField(
                    decoration: InputDecoration(
                      hintText: '+77077077777',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue[50]),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue[50]),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.blue[50],
                    ),
                    keyboardType: TextInputType.number),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(85, 20, 85, 20),
                  color: Colors.lightBlue[900],
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text('История добавления товара'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          height: 75.0,
          items: <Widget>[
            Icon(Icons.home, size: 35),
            Icon(Icons.qr_code, size: 35),
            Icon(Icons.person, size: 35),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.lightBlue[900],
          backgroundColor: Colors.grey[150],
        ),
      ),
    );
  }
}
