import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var contentAppBar=Text('My Store',);
    var scaff=Scaffold(
      appBar: AppBar(
        title: contentAppBar,
      ),
      body: MyList2(),
    );
    var materialApp=MaterialApp(
      debugShowCheckedModeBanner: false,
      home: scaff,
    );
    var mywidget=materialApp;
    return mywidget;
  }


}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   List<String> _products =['Laptop'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false
    ,home:Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('First app'),
      ),
      body: Column(
        children: [
          Container(
            margin:EdgeInsets.all(10.0),
            child: RaisedButton(onPressed:(){setState(() {
              _products.add('PC');
            });},child: Text('Hello Wolrd'))
          ),
          Column(children: _products.map((e) => Card(
            child: Column(children: <Widget>[
              Text(e)
            ],),
          )).toList())
        ],
      )
    ));
  }


}
Widget myList(){
  var content1=Container(
    child: Text('List des items',
      style: TextStyle(color:Colors.white, fontSize: 25),),
    color: Colors.deepOrange,
  );
  var list1= const ListTile(
    leading: Icon(Icons.ac_unit),
    title: Text("Item 1"),
    subtitle: Text("une chemise rouge"),
    trailing: Icon(Icons.accessibility),
  );
  var list2= const ListTile(
    leading: Icon(Icons.ac_unit),
    title: Text("Item 2"),
    subtitle: Text("une chemise vert"),
    trailing: Icon(Icons.accessibility),
  );
  var list3= const ListTile(
    leading: Icon(Icons.ac_unit),
    title: Text("Item 3"),
    subtitle: Text("une chemise blanc"),
    trailing: Icon(Icons.accessibility),
  );
  var list=ListView(
    children: <Widget>[
      content1,list1,list2,list3
    ],
  );
  return list;
}
Widget MyList2(){
  var list=ListView(
    children:  <Widget>[
  ListTile(
  leading: Icon(Icons.ac_unit),
    title: Text("Item 1"),
  subtitle: Text("une chemise blanc"),
  trailing: Icon(Icons.accessibility),
    onTap: (){
    debugPrint("un clic....");
    },
  )
    ],
  );
  return list;
}
