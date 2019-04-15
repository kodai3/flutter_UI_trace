import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/icon.jpg'),
        ),
      ),
      body: ListView(
          children: List.generate(100, (int index) {
        return _listItem(index);
      })),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.email), title: Text('')),
        ],
      ),
    );
  }

  Widget _listItem(int index) {
    return ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/icon.jpg'),
        ),
        title: Text(
          'kodai',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              'Hello this is replicated powered by flutter',
              overflow: TextOverflow.clip,
              maxLines: 3,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.comment),
                Icon(Icons.repeat),
                Icon(Icons.favorite_border),
                Icon(Icons.share)
              ],
            )
          ],
        ));
  }
}
