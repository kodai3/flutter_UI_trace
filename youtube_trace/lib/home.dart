import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          width: 120,
          height: 50,
          child: Image.asset('assets/youtube.png'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.cast,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.video_call, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/icon.jpg'),
            ),
          )
        ],
      ),
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int i) {},
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.trending_up), title: Text('Trending')),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions), title: Text('Subscriptions')),
          BottomNavigationBarItem(icon: Icon(Icons.mail), title: Text('Inbox')),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions), title: Text('Subscriptions'))
        ],
      ),
    );
  }

  Widget _body() {
    return ListView(
      children: List.generate(5, (int i) {
        return Column(
          children: <Widget>[
            Image.asset('assets/thumbnail.jpg'),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/icon.jpg'),
              ),
              title: Text(
                'this UI is YouTube powered by flutter',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(' ** kodai ** '),
            ),
            SizedBox(
              height: 20,
            )
          ],
        );
      }),
    );
  }
}
