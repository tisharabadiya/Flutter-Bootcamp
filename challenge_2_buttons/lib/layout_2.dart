import 'package:flutter/material.dart';
void main() =>
  runApp(
     MaterialApp(
     home:MyHomePage(),
 ),
  );


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(400.0,60.0)),
                      backgroundColor: MaterialStateProperty.all(Colors.greenAccent)
                    ),
                      onPressed:(){
                      showDialog(context: context,
                          builder: (context)=>AlertDialog(
                            title: Text('You have pressed 1.'),
                            actions: [
                              TextButton(onPressed: ()=>Navigator.pop(context),
                                child: Text('OK'),
                              ),
                            ],
                          ),
                      );
                        print('You have pressed 1.');
                      } ,
                      child:Text('1')
                  ),
                ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(400.0,60.0)),
                      backgroundColor: MaterialStateProperty.all(Colors.greenAccent)
                  ),
                  onPressed:(){
                    showDialog(context: context,
                      builder: (context)=>AlertDialog(
                        title: Text('You have pressed 2.'),
                        actions: [
                          TextButton(onPressed: ()=>Navigator.pop(context),
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                    print('You have pressed 2.');
                  } ,
                  child:Text('2')
              ),
            ),
             ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(400.0,60.0)),
                          backgroundColor: MaterialStateProperty.all(Colors.greenAccent)
                      ),
                      onPressed:(){
                        showDialog(context: context,
                          builder: (context)=>AlertDialog(
                            title: Text('You have pressed 3.'),
                            actions: [
                              TextButton(onPressed: ()=>Navigator.pop(context),
                                child: Text('OK'),
                              ),
                            ],
                          ),
                        );
                        print('You have pressed 3.');
                      } ,
                      child:Text('3')
                  ),
                ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(400.0,60.0)),
                      backgroundColor: MaterialStateProperty.all(Colors.greenAccent)
                  ),
                  onPressed:(){
                    showDialog(context: context,
                      builder: (context)=>AlertDialog(
                        title: Text('You have pressed 4.'),
                        actions: [
                          TextButton(onPressed: ()=>Navigator.pop(context),
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                    print('You have pressed 4.');
                  } ,
                  child:Text('4')
                 ),
            ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
// MaterialApp(
// home:MyHomePage(),
// ),