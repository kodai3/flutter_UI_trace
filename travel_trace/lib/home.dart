import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('EXPLORE'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('SAVED'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trip_origin),
            title: Text('TRIPS'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            title: Text('INBOX'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Text('PROFILE'),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              pinned: true,
              backgroundColor: Colors.white,
              title: Material(
                elevation: 8,
                child: TextFormField(
                  decoration: InputDecoration(
                      icon: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(Icons.search),
                      ),
                      border: InputBorder.none,
                      hintText: 'Try"Tranto"'),
                ),
              )),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: 30, left: 5),
              height: 50,
              child: Text(
                'What can we help you find ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _listItem('assets/icon.jpg', 'Homes'),
                  _listItem('assets/icon.jpg', 'Experriences'),
                  _listItem('assets/icon.jpg', 'Restaurants')
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: 30, left: 5),
              height: 50,
              child: Text(
                'Home Around the world',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            delegate: SliverChildBuilderDelegate((context, index) {
              return _gridItem(index);
            }, childCount: 6),
          ),
          SliverToBoxAdapter(
              child: Container(
            margin: EdgeInsets.all(10),
            child: OutlineButton(
              onPressed: () {},
              child: Text('Show all (2000+)'),
            ),
          ))
        ],
      ),
    );
  }

  Widget _listItem(String imageAssets, String itemTitle) {
    return Container(
      width: 150,
      child: Card(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            width: 150,
            child: Image.asset(
              imageAssets,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'home',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      )),
    );
  }

  Widget _gridItem(int i) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 100,
          width: 300,
          child: Image.asset(
            'assets/icon.jpg',
            fit: BoxFit.fill,
          ),
        ),
        Text('REPLICATED !!!'),
        SizedBox(
          height: 3,
        ),
        Text(
          'White Breeze Pool 18D Appartment',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 3,
        ),
        Text('250 per night'),
        Row(
          children: <Widget>[
            Icon(
              Icons.star,
              color: Colors.blueGrey,
            ),
            Icon(
              Icons.star,
              color: Colors.blueGrey,
            ),
            Icon(
              Icons.star,
              color: Colors.blueGrey,
            ),
            Icon(
              Icons.star,
              color: Colors.blueGrey,
            ),
          ],
        )
      ],
    );
  }
}
