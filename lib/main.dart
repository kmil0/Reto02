import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',     
       
      theme: ThemeData(        
          brightness: Brightness.dark,              
          primaryColor: Colors.deepPurple[600],
          accentColor: Colors.limeAccent[400],        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Reto 🤯'),
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
  int _counter = 1;

  void _incrementCounter() {
    setState(() {    
      _counter++;
      //No Random API tiene limite de imagenes
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(       
        title: Text(widget.title),
      ),
      body: Center(                  
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
             '>>RICK & MORTY API <<',
              style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.bold,
              fontSize: 30),),
          Image.network("https://rickandmortyapi.com/api/character/avatar/"+ _counter.toString() + ".jpeg",                    
          loadingBuilder: (context, child, progress){
            return progress == null
            ? child
            : LinearProgressIndicator();
            },
            ),
          ], 
        ),   
      ),  
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.system_update_alt),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
