import 'package:appwrite/models.dart';

class Task {
  final String id;
  final String title;
  final bool completed;

  Task({required this.id, required this.title, required this.completed});

  
  factory Task.fromDocument(Document doc) {
    return Task(
      id: doc.$id,
      title: doc.data['task'], 
      completed: doc.data['completed'],
    );
  }
}
