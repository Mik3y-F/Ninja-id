import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff070B1C),
      appBar: AppBar(
        backgroundColor: Color(0xff070B1C),
        title: Text("Ninja ID Card"),
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey[300],
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/chun-li-prof.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 80.0,
              color: Colors.grey[600],
            ),
            Text('NAME',
                style: TextStyle(
                  color: Color(0xffD8D9DE),
                  letterSpacing: 2.0,
                )),
            SizedBox(
              height: 10.0,
            ),
            Text('Chun-Li',
                style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30.0,
            ),
            Text('CURRENT NINJA LEVEL',
                style: TextStyle(
                  color: Color(0xffD8D9DE),
                  letterSpacing: 2.0,
                )),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'chun-li@student.dojo.co.ke',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
