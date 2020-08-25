import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<Map<String, dynamic>> _data = [
    {
      "picture": "https://via.placeholder.com/50",
      "name": "Juan Perez",
      "enabled": true,
    },
    {
      "picture": "https://via.placeholder.com/50",
      "name": "Juan Perez 2",
      "enabled": false,
    },
    {
      "picture": "https://via.placeholder.com/50",
      "name": "Juan Perez 3",
      "enabled": true,
    },
    {
      "picture": "https://via.placeholder.com/50",
      "name": "Juan Perez 5",
      "enabled": false,
    }
  ];

  HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) {
          bool enable = _data[index]["enabled"];
          return ListTile(
            leading: Image.network(_data[index]["picture"]),
            title: Text("${_data[index]["name"]}"),
            trailing: Icon(
              Icons.access_time,
              color: enable ? Colors.cyan : Colors.amber,
            ),
          );
        },
      ),
    );
  }
}
