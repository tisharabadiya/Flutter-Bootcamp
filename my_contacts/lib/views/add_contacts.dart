import 'package:flutter/material.dart';
import 'package:my_contacts/models/contact_data.dart';
import 'package:provider/provider.dart';

class AddContacts extends StatefulWidget {
  @override
  State<AddContacts> createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContacts> {
  String name='';

  String phNo='';

  String email='';

  @override
  Widget build(BuildContext context) {
    print('AddContacts::build()');
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
      ),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Add Contacts',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter a Name',
                ),
                onChanged: (value){
                  name=value;
                  print(name);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter a phNumber',
                ),
                onChanged: (value){
                  phNo=value;
                  print(phNo);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter a Email',
                ),
                onChanged: (value){
                  email=value;
                  print(email);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue[200])
                  ),
                  onPressed: (){
                    print('now add element ${name} ${phNo} ${email}');
                    Provider.of<ContactData>(context,listen: false).addContact(name, phNo, email);
                    Navigator.pop(context);
                    // HomePage.myContactList.add(ContactCard(name: name, phNo: phNo));
                    // print(HomePage.myContactList);
                  },
                  child:Text(
                    'Add',
                    style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.normal
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
