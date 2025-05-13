import 'package:flutter/material.dart';
import 'package:my_contacts/models/contact_data.dart';
import 'package:my_contacts/views/add_contacts.dart';
import 'package:my_contacts/widget/contact_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print('_HomePageState::build()');
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'myContacts',
          ),
          backgroundColor: Colors.blueAccent,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (context)=>AddContacts()
            );
          },
          child: Icon(Icons.add),
        ),
        body: Consumer<ContactData>(
          builder:(context,contactData,child) {

           return ListView.builder(
            itemBuilder: (context, index) {
              final contact = contactData.myContactList[index];
              print('contact is ${contact.name} ${contact.phNo}');
              return ContactCard(
                  name: contact.name, phNo: contact.phNo, email: contact.email);
            },
            itemCount: contactData.myContactList.length,
          );}
      ),
    );
  }
}