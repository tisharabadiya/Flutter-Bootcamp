import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  ContactCard({super.key,required this.name,required this.phNo,required this.email});
  String name;
  String phNo;
  String email;
  @override
  Widget build(BuildContext context) {
    print('ContactCard::build()');
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Colors.blueAccent,
        child: ListTile(
          leading: Icon(
              Icons.account_circle_rounded
          ),
          title: Text(
              name
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(phNo),
              Text(email)
            ],
          ),
          trailing: Icon(
              Icons.more_vert_outlined
          ),
        ),
      ),
    );
  }
}