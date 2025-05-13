import 'package:flutter/material.dart';

class OperationsPage extends StatefulWidget {
  late String oprPage_operation;
   OperationsPage({required String opr}){
    print('Welcome to OperationsPage::OperationsPage()');
    this.oprPage_operation=opr;
  }

  @override
  State<OperationsPage> createState() {
    return _OperationsPageState(Oper:oprPage_operation);
  }
}

class _OperationsPageState extends State<OperationsPage> {
  late double num1;
  late double num2;
  //late double result;
  late String selectOperation;

  _OperationsPageState({required String Oper}){
    print('Welcome to _OperationsPageState() : $Oper');
    this.num1=0;
    this.num2=0;
    //this.result=0;
    this.selectOperation=Oper;
  }
  @override
  void initState(){
     print('Welcome to  _OperationsPageState::initState()');
  }

  String getResult(double val1,double val2,String operator){
    print('Welcome to getResult');
    print('val1:$val1');
    print('val2:$val2');
    print('operator:$operator');
    switch(operator){
      case 'Addition':
        return (val1+val2).toString();
      case 'Subtraction':
        return (val1-val2).toString();
      case 'Multiplication':
        return (val1*val2).toString();
      case 'Division':
        if((val1!=0) && (val2==0)){
          return 'Cannot divide by Zero.';
        }else if((val1==0)&&(val2==0)) {
          return '0';
        }else{
          return (val1/val2).toString();
        }
      default:
        return '';
    }
  }
  @override
  Widget build(BuildContext context) {
    print('Welcome to _OperationsPageState:: build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('myCalculator'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
          children: [
            SizedBox(height:40.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30.0, vertical: 10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 20.0),
                decoration: InputDecoration(
                  hintText: 'Enter a Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Colors.orangeAccent,
                ),
                onChanged: (value) {
                  setState(() {
                    num1 = double.parse(value);
                    print('num1:$num1');
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30.0, vertical: 10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 20.0),
                decoration: InputDecoration(
                  hintText: 'Enter a Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Colors.orangeAccent,
                ),
                onChanged: (value) {
                  setState(() {
                    num2 = double.parse(value);
                    print('num2:$num2');
                  });

                },
              ),
            ),
            SizedBox(height: 40.0),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     ElevatedButton(
            //       style: ButtonStyle(
            //         backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
            //       ),
            //         onPressed:(){
            //           setState(() {
            //             selectOperation='Addition';
            //             //result=(num1+num2).toDouble();
            //           });
            //         },
            //         child: Text(
            //           '+',
            //           style: TextStyle(
            //             fontSize: 20.0,
            //             fontWeight: FontWeight.bold
            //           ),
            //         )
            //     ),
            //     ElevatedButton(
            //         style: ButtonStyle(
            //           backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
            //         ),
            //         onPressed:(){
            //           setState(() {
            //             selectOperation='Subtraction';
            //             //result=(num1-num2).toDouble();
            //           });
            //         },
            //         child: Text(
            //           '-',
            //           style: TextStyle(
            //               fontSize: 20.0,
            //               fontWeight: FontWeight.bold
            //           ),
            //         )
            //     ),
            //     ElevatedButton(
            //         style: ButtonStyle(
            //           backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
            //         ),
            //         onPressed:(){
            //           setState(() {
            //             selectOperation='Multiplication';
            //             //result=(num1*num2).toDouble();
            //           });
            //         },
            //         child: Text(
            //           'x',
            //           style: TextStyle(
            //               fontSize: 20.0,
            //               fontWeight: FontWeight.bold
            //           ),
            //         )
            //     ),
            //     ElevatedButton(
            //         style: ButtonStyle(
            //           backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
            //         ),
            //         onPressed:(){
            //           setState(() {
            //             selectOperation='Division';
            //             //result=(num1/num2).toDouble();
            //           });
            //         },
            //         child: Text(
            //           '÷',
            //           style: TextStyle(
            //               fontSize: 20.0,
            //               fontWeight: FontWeight.bold
            //           ),
            //         )
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.black)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                      'Result:${getResult(num1, num2, selectOperation)}',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ]
      ),
    );
  }
}


