import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Material(
              elevation: 8,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Search Mail',
                    border: InputBorder.none,
                    icon: Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Icon(Icons.dehaze)),
                    suffixIcon: Container(
                      margin: EdgeInsets.all(5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/icon.jpg'),
                      ),
                    )),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(100, (int i) {
                return _listItem(i);
              }),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.red,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

Widget _listItem(int i) {
  return ListTile(
    leading: CircleAvatar(
      child: Text(i.toString()),
      backgroundColor: Colors.green,
    ),
    title: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('kodai', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              '1:00',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Text(
          'replicated gmail UI',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ),
    subtitle: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('this is gmial app using flutter'),
        Icon(Icons.star_border)
      ],
    ),
  );
}
