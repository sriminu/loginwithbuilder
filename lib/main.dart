import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: List_with_builder(),
  debugShowCheckedModeBanner: false,));
}

class List_with_builder extends StatelessWidget {
  var name = ['name1', 'name2', 'name4', 'name5'];
  var phone = [
    '7896547896',
    '8965478965',
    '9987546987',
    '8845632157',
    '7896541238'
  ];
  var images = [
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'
  ];
  var colors = [800,600,500,400,100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CONTACT BOOK'),),
      body: ListView.builder(itemCount: name.length,
          itemBuilder: (BuildContext context, index) {
        return Card(
          color: Colors.blue[colors[index]],
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text(phone[index]),
            leading: Image(image: NetworkImage(images[index])),
          ),);
      }

      ),
    );
  }


}
