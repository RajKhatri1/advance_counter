import 'package:advance_counter/screen/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class counterScreen extends StatefulWidget {
  const counterScreen({Key? key}) : super(key: key);

  @override
  State<counterScreen> createState() => _counterScreenState();
}

class _counterScreenState extends State<counterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Counter App",style: TextStyle(letterSpacing: 2)),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  alignment: Alignment.center,
                  child: Consumer<counter_Provider>(builder: (context, value, child) => Text("${value.i}",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold))),
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(onPressed: () {

                  Provider.of<counter_Provider>(context,listen: false).increament();
                  
                },child: Icon(Icons.add),),

                FloatingActionButton(onPressed: () {
                  Provider.of<counter_Provider>(context,listen: false).decreament();
                },child: Text("-", style: TextStyle(fontSize: 30)),),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(onPressed: () {
                  Provider.of<counter_Provider>(context,listen: false).double();
                },child: Text("2X", style: TextStyle(fontSize: 20)),),

                FloatingActionButton(onPressed: () {
                  Provider.of<counter_Provider>(context,listen: false).tripal();
                },child: Text("3X", style: TextStyle(fontSize: 20)),),

                FloatingActionButton(onPressed: () {
                  Provider.of<counter_Provider>(context,listen: false).fourx();

                },child: Text("4X", style: TextStyle(fontSize: 20)),)
              ],
            ),
            SizedBox(height: 120,),
          ],
        ),
      ),
    );
  }
}
