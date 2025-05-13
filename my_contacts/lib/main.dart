import 'package:flutter/material.dart';
import 'package:my_contacts/models/contact_data.dart';
import 'package:my_contacts/views/home_page.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ChangeNotifierProvider(
      create: (context) => ContactData(),
     child: MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage(),
    );
  }
}



