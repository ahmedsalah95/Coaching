import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "test",
            style: TextStyle(color: Colors.green),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back, color: Colors.grey)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
              color: Colors.grey,
            ),
          ],
        ),
        body: ListView(

          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  alignment: Alignment(0.0, -0.40),
                  height: 100.0,
                  child: Text(
                    "Coaching",
                    style: TextStyle(color: Colors.black, fontSize: 30.0),
                  ),
                ),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(blurRadius: 1.0, color: Colors.grey)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                  margin: EdgeInsets.fromLTRB(10.0, 70.0, 10.0, 0.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: ListTile(
                        title: Text("You Have :"),
                        subtitle: Text(
                          "206",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.green[50],
                          child: Text(
                            "Buy More",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              ],
            ),
            // row of titles
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "My coaches",
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 4.0,
              shrinkWrap: true,
              children: <Widget>[buildCard("Ahmed", "Away", 1),
              buildCard("Moh", "Away", 1),
              buildCard("Ash", "Avaliable", 1),
              buildCard("Salah", "Away", 1),



              ],
            ),
          ],
        ));
  }

  Widget buildCard(String name, String status, int cardIndex) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 7.0,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10.0),
          Stack(
            children: <Widget>[
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.green,
                    image: DecorationImage(
                        image:
                            NetworkImage('https://picsum.photos/250?image=9'))),
              ),
              Container(
                margin: EdgeInsets.only(left: 40.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: status == 'Away' ? Colors.amber : Colors.green,
                    border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2.0)),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Container(
            child: Text(
              name,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            child: Text(
              status,
              style:
              TextStyle(color: Colors.grey, fontSize: 15),
            ),

          ),
          SizedBox(height: 15.0),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width:MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.5,
              child: Text("Request",style: TextStyle(
                color: Colors.white,

              ),),
              decoration: BoxDecoration(
                color: status == 'Away' ? Colors.grey : Colors.green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)
                ),

              ),
            ),
          )
        ],
      ),
    );
  }
}
