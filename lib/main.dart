import 'package:app/Screens/Navbar.dart';
import 'package:app/Screens/ProductDetails.dart';
import 'package:app/Screens/Products.dart';
import 'package:app/Screens/Profile.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'Screens/Products.dart';

void main() {
  print("jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj");
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: ProductsItems(),

      initialRoute: '/',
      routes: {
        '/': (context) => Navbar(),
        '/product': (context) => ProductsItems(),
        '/PoductDetails': (context) => ProductDetails(),
        '/Profile': (context) => Profile(),
        // '/Profile': (context) => (),
      },
    );
  }
}

// home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black26,
//           leading: const Icon(
//             Icons.arrow_back,
//           ),
//           actions: const [
//             Padding(
//               padding: EdgeInsets.only(right: 20),
//               child: Icon(
//                 Icons.favorite,
//                 color: Color.fromARGB(255, 247, 243, 245),
//                 size: 24.0,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(right: 20),
//               child: Icon(
//                 Icons.list,
//                 color: Color.fromARGB(255, 247, 243, 245),
//                 size: 24.0,
//               ),
//             ),
//           ],
//         ),
//         backgroundColor: Color.fromARGB(255, 105, 124, 130),
//         body: const Center(
//           child: Center(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Expanded(
//                     child: CircleAvatar(
//                       radius: 100,
//                       backgroundImage: AssetImage('assets/images/hany.jpg'),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   // width: 340,
//                   child: Text(
//                     "Hany Mahmoud",
//                     style: TextStyle(
//                       fontFamily: "popions",
//                       fontSize: 24,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(0),
//                   child: Text(
//                     "Front End Developer",
//                     style: TextStyle(
//                       fontFamily: "popions",
//                       fontSize: 19,
//                       color: Color.fromARGB(255, 208, 182, 182),
//                       fontWeight: FontWeight.w200,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 10),
//                   child: Text(
//                     "Creat great projects",
//                     style: TextStyle(
//                       fontFamily: "popions",
//                       fontSize: 15,
//                       color: Color.fromARGB(255, 178, 143, 143),
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(0),
//                   child: Text(
//                     "@hanymah.com",
//                     style: TextStyle(
//                       fontFamily: "popions",
//                       fontSize: 10,
//                       color: Color.fromARGB(255, 178, 143, 143),
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.all(15.0),
//                             child: Icon(
//                               FontAwesomeIcons.twitter,
//                               size: 40,
//                               color: Colors.blue,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.all(15.0),
//                             child: Icon(FontAwesomeIcons.facebook,
//                                 size: 40, color: Colors.blue),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.all(15.0),
//                             child: Icon(
//                               FontAwesomeIcons.linkedin,
//                               size: 40,
//                               color: Colors.blue,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 20, bottom: 20),
//                   child: Divider(
//                     color: Color.fromARGB(255, 145, 132, 132),
//                     thickness: 2,
//                     indent: 50,
//                     endIndent: 50,
//                   ),
//                 ),
//                 Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(right: 16),
//                         child: Column(
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(bottom: 16),
//                               child: Icon(
//                                 FontAwesomeIcons.basketball,
//                                 size: 50,
//                                 color: Colors.orange,
//                               ),
//                             ),
//                             Text(
//                               "100k",
//                               style: TextStyle(
//                                 fontSize: 10,
//                                 fontFamily: "popions",
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                               ),
//                             ),
//                             Text(
//                               "Followers",
//                               style: TextStyle(
//                                 fontSize: 10,
//                                 fontFamily: "popions",
//                                 fontWeight: FontWeight.bold,
//                                 color: Color.fromRGBO(255, 255, 255, 0.493),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(left: 16),
//                         child: Column(
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(bottom: 16),
//                               child: Icon(
//                                 FontAwesomeIcons.behance,
//                                 size: 50,
//                                 color: Color.fromARGB(255, 245, 247, 249),
//                               ),
//                             ),
//                             Text(
//                               "100k",
//                               style: TextStyle(
//                                 fontSize: 10,
//                                 fontFamily: "popions",
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                               ),
//                             ),
//                             Text(
//                               "Followers",
//                               style: TextStyle(
//                                 fontSize: 10,
//                                 fontFamily: "popions",
//                                 fontWeight: FontWeight.bold,
//                                 color: Color.fromRGBO(255, 255, 255, 0.493),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),

////////////task todo
///
// import 'package:flutter/material.dart';
// //import 'dart:ui';

// const kPrimaryColor = Colors.red;
// const kBackgroundColor = Colors.blueGrey;
// const kTextColor = Colors.black;
// const kHintColor = Colors.grey;

// const kTitleTextStyle = TextStyle(
//   fontSize: 18,
//   fontWeight: FontWeight.bold,
//   color: kTextColor,
// );

// const kSubtitleTextStyle = TextStyle(
//   fontSize: 16,
//   color: kTextColor,
// );

// void main() {
//   runApp(App());
// }

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'List of todo',
//       theme: ThemeData(
//         primarySwatch: kPrimaryColor,
//         backgroundColor: kBackgroundColor,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: TodoList(),
//     );
//   }
// }

// class TodoList extends StatefulWidget {
//   @override
//   _TodoListState createState() => _TodoListState();
// }

// class _TodoListState extends State<TodoList> {
//   late List<TodoItem> _todoList;
//   late TextEditingController _textFieldController;

//   @override
//   void initState() {
//     super.initState();
//     _todoList = [];
//     _textFieldController = TextEditingController();
//   }

//   @override
//   void dispose() {
//     _textFieldController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Your List'),
//       ),
//       body: _buildTodoList(),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _displayDialog(context),
//         tooltip: 'enter an item',
//         child: Icon(Icons.add),
//       ),
//     );
//   }

//   Widget _buildTodoList() {
//     if (_todoList.isEmpty) {
//       return Center(
//         child: Text(
//           'list is empty',
//           style: kTitleTextStyle,
//         ),
//       );
//     } else {
//       return ListView.builder(
//         itemCount: _todoList.length,
//         itemBuilder: (BuildContext context, int index) {
//           return _buildTodoItem(_todoList[index], index);
//         },
//       );
//     }
//   }

//   Widget _buildTodoItem(TodoItem item, int index) {
//     return Dismissible(
//       key: UniqueKey(),
//       onDismissed: (direction) {
//         setState(() {
//           _todoList.removeAt(index);
//         });
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: Text('${item.title} deleted'),
//           duration: Duration(seconds: 2),
//           action: SnackBarAction(
//             label: 'UNDO',
//             onPressed: () {
//               setState(() {
//                 _todoList.insert(index, item);
//               });
//             },
//           ),
//         ));
//       },
//       background: Container(
//         color: Colors.red,
//         child: Icon(Icons.delete, color: kBackgroundColor),
//         alignment: Alignment.centerRight,
//         padding: EdgeInsets.only(right: 20),
//       ),
//       child: ListTile(
//         leading: Checkbox(
//           value: item.isDone,
//           onChanged: (value) {
//             setState(() {
//               item.isDone = value!;
//             });
//           },
//         ),
//         title: Text(
//           item.title,
//           style: kTitleTextStyle.copyWith(
//             decoration:
//                 item.isDone ? TextDecoration.lineThrough : TextDecoration.none,
//           ),
//         ),
//         subtitle: item.description.isNotEmpty
//             ? Text(
//                 item.description,
//                 style: kSubtitleTextStyle,
//               )
//             : null,
//         trailing: IconButton(
//           icon: Icon(Icons.edit),
//           onPressed: () => _displayEditDialog(context, item, index),
//         ),
//         onTap: () {
//           setState(() {
//             item.isDone = !item.isDone;
//           });
//         },
//       ),
//     );
//   }

//   void _addTodoItem(String title, String description) {
//     if (title.isNotEmpty) {
//       setState(() {
//         _todoList.add(TodoItem(title, description));
//         _textFieldController.clear();
//       });
//     }
//   }

//   void _editTodoItem(String title, String description, int index) {
//     if (title.isNotEmpty) {
//       setState(() {
//         _todoList[index].title = title;
//         _todoList[index].description = description;
//       });
//     }
//   }

//   Future<void> _displayDialog(BuildContext context) async {
//     return showDialog<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('enter your Task'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: _textFieldController,
//                 decoration: InputDecoration(
//                   hintText: 'Enter task here',
//                   hintStyle: TextStyle(color: kHintColor),
//                 ),
//                 textInputAction: TextInputAction.next,
//                 onSubmitted: (value) {
//                   FocusScope.of(context)
//                       .nextFocus(); // move focus to next field
//                 },
//               ),
//               SizedBox(height: 8),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Enter description',
//                   hintStyle: TextStyle(color: kHintColor),
//                 ),
//                 textInputAction: TextInputAction.done,
//                 onSubmitted: (value) {
//                   _addTodoItem(_textFieldController.text, value);
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('add'),
//               onPressed: () {
//                 _addTodoItem(_textFieldController.text, '');
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               child: Text('CANCEL'),
//               onPressed: () {
//                 _textFieldController.clear();
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   Future<void> _displayEditDialog(
//       BuildContext context, TodoItem item, int index) async {
//     late String newTitle;
//     late String newDescription;
//     final TextEditingController _titleController =
//         TextEditingController(text: item.title);
//     final TextEditingController _descriptionController =
//         TextEditingController(text: item.description);
//     return showDialog<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Edit task'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: _titleController,
//                 decoration: InputDecoration(
//                   hintText: 'Enter new task title',
//                   hintStyle: TextStyle(color: kHintColor),
//                 ),
//                 textInputAction: TextInputAction.next,
//                 onSubmitted: (value) {
//                   FocusScope.of(context)
//                       .nextFocus(); // move focus to next field
//                 },
//               ),
//               SizedBox(height: 8),
//               TextField(
//                 controller: _descriptionController,
//                 decoration: InputDecoration(
//                   hintText: 'Enter new task description (optional)',
//                   hintStyle: TextStyle(color: kHintColor),
//                 ),
//                 textInputAction: TextInputAction.done,
//                 onSubmitted: (value) {
//                   newTitle = _titleController.text;
//                   newDescription = value;
//                   _editTodoItem(newTitle, newDescription, index);
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('SAVE'),
//               onPressed: () {
//                 newTitle = _titleController.text;
//                 newDescription = _descriptionController.text;
//                 _editTodoItem(newTitle, newDescription, index);
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               child: Text('CANCEL'),
//               onPressed: () {
//                 _titleController.clear();
//                 _descriptionController.clear();
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

// class TodoItem {
//   String title;
//   String description;
//   bool isDone;

//   TodoItem(this.title, this.description, {this.isDone = false});
// }
