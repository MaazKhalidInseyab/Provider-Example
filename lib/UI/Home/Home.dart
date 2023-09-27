import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/Provider/Provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print('Widget Rebuilt');
    final countProvider= Provider.of<CountProvider>(context,listen: false);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "subscribers",
              style: TextStyle(fontSize: 30.0),
            ),Consumer<CountProvider>(builder: (context,value,child){
              child:return Text(
                value.count.toString(),
                style: TextStyle(fontSize: 25.5),
              );
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: Icon(Icons.ice_skating),
      ),
    );
  }
}
