import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  final chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'Hola amor!', fromWho: FromWho.user),
    Message(text: 'Ya regresaste del trabajo?', fromWho: FromWho.user),
  ];

  Future<void> sendMessage( String text ) async{

    if( text.isEmpty ) return;
    
    final message = Message(text: text, fromWho: FromWho.user);
    messageList.add(message);

    if( text.endsWith('?')){
      otherReply();
    }

    notifyListeners();
    moveScrollBottom();
  }

  Future<void> otherReply() async{
    final otherMessage = await getYesNoAnswer.getAnswer();
    messageList.add(otherMessage);
    notifyListeners();
    moveScrollBottom();
  }

  Future<void> moveScrollBottom() async{
    
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut
    );
  }

}