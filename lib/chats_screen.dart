import 'package:firebase_chat_app/model/user.dart';
import 'package:firebase_chat_app/view/user_item.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});
  

  @override
  State<ChatsScreen> createState()=> _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final userData = [
    UserModel(
      uid: '1', 
      name: 'Hazy', 
      email: 'test@test.test', 
      image: 'https://i.pravatar.cc/150?img=0', 
      isOnline: true, 
      lastActive: DateTime.now()
      ),
      UserModel(
      uid: '2', 
      name: 'Charlotte', 
      email: 'test@test.test', 
      image: 'https://i.pravatar.cc/150?img=10', 
      isOnline: false, 
      lastActive: DateTime.now()
      ),
      UserModel(
      uid: '3', 
      name: 'Ahmed', 
      email: 'test@test.test', 
      image: 'https://i.pravatar.cc/150?img=1', 
      isOnline: true, 
      lastActive: DateTime.now()
      ),
      UserModel(
      uid: '4', 
      name: 'Prateek', 
      email: 'test@test.test', 
      image: 'https://i.pravatar.cc/150?img=2', 
      isOnline: false, 
      lastActive: DateTime.now()
      ),
  ];
  
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Chats'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        physics: const BouncingScrollPhysics(),
        itemCount: userData.length,
        itemBuilder: (context, index) => UserItem(user: userData[index],),
      ),
  );
}