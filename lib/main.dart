import 'package:flutter/material.dart';
import 'package:flutter_application_o2/models/Information.dart';
import 'package:flutter_application_o2/providers/information_provider.dart';
import 'package:flutter_application_o2/screens/form_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return InformationProvider();
        })
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'เครื่องเขียนหรรษา'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FormScreen();
                  }));
                })
          ],
        ),
        body: Consumer(
          builder: (context, InformationProvider provider, Widget? child) {
            var count = provider.informations.length;
            if (count <= 0) {
              return Center(
                child: Text(
                  "ไม่พบข้อมูล",
                  style: TextStyle(fontSize: 35),
                ),
              );
            } else {
              return ListView.builder(
                  itemCount: provider.informations.length,
                  itemBuilder: (context, int index) {
                    Information data = provider.informations[index];
                    return Card(
                      elevation: 5,
                      margin: const EdgeInsets.all(5.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          child: FittedBox(
                            child: Text(data.price.toString()),
                          ),
                        ),
                        title: Text(data.title),
                        subtitle: Text(data.product.toString()),
                      ),
                    );
                  });
            }
          },
        ));
  }
}
