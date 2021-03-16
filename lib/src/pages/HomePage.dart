import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List _listPages = [
    {"title": "Alertas", "icon": Icons.add_alert, "route": "alerts"},
    {"title": "Avatars", "icon": Icons.accessibility, "route": "avatars"},
    {"title": "Cards-targetas", "icon": Icons.folder_open, "route": "cards"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Principal'),
      ),
      body: ListView(
        children: _listPages.map((item) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 10,),
            child: ListTile(
              title: Text(item['title']),
              leading: Icon(
                item['icon'],
                color: Colors.blue,),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          );
        }).toList(),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
    title: Text('Pagina Principal'),
  ),
  body: ListView(
    children: [
      Container(
        padding: EdgeInsets.symmetric(vertical: 10,),
        child: ListTile(
            title: Text('Alertas'),
            leading: Icon(
              Icons.add_alert,
              color: Colors.blue,),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      )
    ],
  ),
   );
}
