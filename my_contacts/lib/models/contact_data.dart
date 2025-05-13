import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../services/sqlite_service.dart';
import 'contact.dart';

class ContactData extends ChangeNotifier{

   List<Contact> myContactList=[];

   late SqliteService sqliteService;

   ContactData(){
     print("Welcome to ContactData()");
     sqliteService=SqliteService();
     sqliteService.initializeDB().whenComplete(() async{
       await updateContactsListFromDatabase();
     });
   }

   // List<Contact> contactList(){
   //   updateContactsListFromDatabase();
   //   return myContactList;
   // }

   Future<void> updateContactsListFromDatabase() async{
     print('Welcome to ContactData :: updateContactsListFromDatabase()');
     final data=await SqliteService().getData();
     if(data.isNotEmpty){
       myContactList=data;
     }
     print('updateContactsListFromDatabase():${myContactList.length}');
     notifyListeners();
   }
   void addContact(String name,String phNo,String email) async{
     print('ContactData:: addContact() ${name}');
     final contact=Contact(name: name, phNo: phNo,email: email);
     print('contact is ${contact.name}');
     myContactList.add(contact);
     print('myContactList[length] is ${myContactList[myContactList.length-1].name}');
     await SqliteService().insertData(contact);
     print('myContactList.length ${myContactList.length}');
     notifyListeners();
   }
}