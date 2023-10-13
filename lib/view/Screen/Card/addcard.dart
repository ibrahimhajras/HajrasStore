import 'package:flutter/material.dart';



class addcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Card Design'),
      ),
      body: Center(
        child: Card(
          elevation: 5, // Adjust the shadow
          margin: EdgeInsets.all(20), // Adjust the margin
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.network(
                'https://via.placeholder.com/150', // Replace with your image URL
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              ListTile(
                title: Text(
                  'Card Title',
                  style: TextStyle(fontSize: 24),
                ),
                subtitle: Text('Card Subtitle'),
              ),
              ButtonBar(
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      // Add button action here
                    },
                    child: Text('ACTION 1'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add button action here
                    },
                    child: Text('ACTION 2'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
