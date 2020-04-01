import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    title: 'Pizza Application', home: Material(child: AppScaffold())));

class AppScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pizzaList = <Widget>[];
    for (var i = 0; i < 20; i++) {
      pizzaList.add(PizzaCard());
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza Application"),
      ),
      body: ListView(children: pizzaList),
    );
  }
}

class PizzaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/pizza.jpg',
            width: 300.0,
            height: 160,
            fit: BoxFit.fitHeight,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Pepperoni Pizza',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'made from a cured mixture of pork and beef seasoned with paprika or other chili pepper.',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Text(
                '20\$',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: RaisedButton(
                      child: Text(
                        'Order',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      child: Text(
                        'More...',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: null,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
