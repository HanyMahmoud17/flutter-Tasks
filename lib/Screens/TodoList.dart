// import 'package:flutter/material.dart';

// const kPrimaryColor = Colors.blue;
// const kBackgroundColor = Colors.white;
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

// // class TodoList extends StatefulWidget {
// //   const TodoList({super.key});

// //   @override
// //   State<TodoList> createState() => _TodoListState();
// // }

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
//         title: Text('To-Do List'),
//       ),
//       body: _buildTodoList(),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _displayDialog(context),
//         tooltip: 'Add Item',
//         child: Icon(Icons.add),
//       ),
//     );
//   }

//   Widget _buildTodoList() {
//     return _todoList.isEmpty
//         ? Center(
//             child: Text(
//               'Your to-do list is empty',
//               style: kTitleTextStyle,
//             ),
//           )
//         : ListView.separated(
//             itemCount: _todoList.length,
//             separatorBuilder: (BuildContext context, int index) => Divider(),
//             itemBuilder: (BuildContext context, int index) {
//               return _buildTodoItem(_todoList[index], index);
//             },
//           );
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
//             decoration: item.isDone ? TextDecoration.lineThrough : null,
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
//           title: Text('Add a task to your list'),
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
//                   hintText: 'Enter task description (optional)',
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
//               child: Text('ADD'),
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
