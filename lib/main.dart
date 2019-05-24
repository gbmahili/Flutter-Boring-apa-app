import 'package:flutter/material.dart';
import 'src/article.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
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
  List<Article> _articles = articles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RefreshIndicator(
        onRefresh: () async{
          await new Future.delayed(const Duration(seconds: 1));
          setState(() {
            _articles.removeAt(0);
          });
          return;
        },
        child: ListView(
          children: _articles.map(_buildItem).toList(),
        ),
      ),
    );
  }

  Widget _buildItem(Article article) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ExpansionTile(
        title: new Text(article.text, style: new TextStyle(fontSize: 18.0),),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              new Text("${article.commentsCount} comments"),
              new IconButton(icon: new Icon(Icons.launch), onPressed: ()async {
            final url = "http://${article.domain}";
            // Check if device can lauch the link:
            launch(url);
            if(await canLaunch(url)) {
              // If true, launch the link
              launch(url);
            }
        }
        )
            ],
          ),
        ],
      ),
    );
  }

//  Widget _buildItem(Article article) {
//    return Padding(
//      padding: const EdgeInsets.all(16.0),
//      child: ListTile(
//          title: new Text(article.text, style: new TextStyle(fontSize: 24.0),),
//          subtitle: new Text("${article.commentsCount} comments"),
//        onTap: () async {
//            final url = "http://${article.domain}";
//            // Check if device can lauch the link:
//            launch(url);
//            if(await canLaunch(url)) {
//              // If true, launch the link
//              launch(url);
//            }
//        },
//      ),
//    );
//  }

}
