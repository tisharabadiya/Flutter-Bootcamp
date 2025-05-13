import 'package:calculator/operations_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key}){
     print('Welcome to HomePage::HomePage()');
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print('Welcome to _HomePageState::build()');
    return  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width/2,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> OperationsPage(opr: 'Addition',)),
                      );
                    },
                    child: Card(
                        elevation: 10.0,
                        child: Container(
                          // height: 100,
                          // width: MediaQuery.of(context).size.width/2,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: const Column(
                            children: [
                              Spacer(),
                              Icon(Icons.add,size: 50.0,color: Colors.black),
                              Spacer(),
                              Divider(),
                              Text(
                                'Addition',
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width/2,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> OperationsPage(opr: 'Subtraction')),
                      );
                    },
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Column(
                          children: [
                            Spacer(),
                            Icon(Icons.remove,size: 50.0,color: Colors.black),
                            Spacer(),
                            Divider(),
                            Text(
                              'Subtraction',
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ]
            ),
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width/2,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> OperationsPage(opr: 'Multiplication')),
                      );
                    },
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        // height: 150.0,
                        // width: 150.0,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Column(
                          children: [
                            Spacer(),
                            Icon(Icons.close,size: 50.0,color: Colors.black,),
                            Spacer(),
                            Divider(),
                            Text(
                              'Multiplication',
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width/2,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> OperationsPage(opr: 'Division')),
                      );
                    },
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        // height: 150.0,
                        // width: 150.0,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Column(
                          children: [
                            Spacer(),
                            Icon(CupertinoIcons.divide,size: 50.0,color: Colors.black),
                            Spacer(),
                            Divider(),
                            Text(
                              'Division',
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
    );
  }
}
