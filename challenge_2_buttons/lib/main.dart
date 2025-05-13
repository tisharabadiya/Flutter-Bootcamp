import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(
      MaterialApp(
     home:MyApp(),
      ),
   );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.teal,
          body: Center(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width, 50)),
                            backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                          ),
                          child: Text('1'),
                          onPressed: (){
                            showDialog(context: context,
                                builder:(context)=>AlertDialog(
                                  title: Text('You have pressed 1.'),
                                  actions: [
                                    TextButton(onPressed: ()=>Navigator.pop(context),
                                      child: Text('OK'),
                                    ),
                                  ],
                                ),
                            );
                            // Alert(
                            //   context: context,
                            //   title: '1',
                            //   desc: 'You\'ve pressed 1.'
                            // ).show();

                           print('You have pressed 1.');
                          },
                        ),
                      ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width, 50)),
                          backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                        ),
                        child: Text('2'),
                        onPressed: (){
                          showDialog(context: context,
                              builder:(context)=>AlertDialog(
                                title: Text('You have pressed 2.'),
                                actions: [
                                  TextButton(onPressed: ()=>Navigator.pop(context),
                                    child: Text('OK'),
                                  ),
                                ],
                              )
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        style: ButtonStyle(
                          fixedSize:MaterialStateProperty.all(Size(MediaQuery.of(context).size.width, 50)),
                          backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                        ),
                        child: Text('3'),
                        onPressed: (){
                          showDialog(context: context,
                              builder:(context)=>AlertDialog(
                                title: Text('You have pressed 3.'),
                                actions: [
                                  TextButton(onPressed: ()=>Navigator.pop(context),
                                    child: Text('OK'),
                                  ),
                                ],
                              )
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width, 50)),
                          backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                        ),
                        child: Text('4'),
                        onPressed: (){
                          showDialog(context: context,
                              builder:(context)=>AlertDialog(
                                title: Text('You have pressed 3.'),
                                actions: [
                                  TextButton(onPressed: ()=>Navigator.pop(context),
                                    child: Text('OK'),
                                  ),
                                ],
                              )
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
          ),

    );
  }
}


// MaterialApp(
// home:MyApp(),
// ),


