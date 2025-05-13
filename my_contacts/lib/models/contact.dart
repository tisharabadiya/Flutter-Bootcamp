class Contact{
   String name;
   String phNo;
   String email;

  Contact({required this.name,required this.phNo,required this.email}){
    print('Welcome to Contact()');
    print('this.name ${this.name}');
  }

  Contact.fromMap(Map<String, dynamic> item):
        name = item["name"], phNo = item["phNo"],email=item["email"];

  Map<String, Object> toMap() {
    return {'name': name, 'phNo':phNo,'email':email};
   }
}