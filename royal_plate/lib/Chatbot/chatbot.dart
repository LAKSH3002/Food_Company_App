import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:royal_plate/Chatbot/Messages.dart';


class Royalplate_chatbot extends StatefulWidget {
  const Royalplate_chatbot({super.key});

  @override
  State<Royalplate_chatbot> createState() => _Royalplate_chatbotState();
}

class _Royalplate_chatbotState extends State<Royalplate_chatbot> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> 
{
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();

  List<Map<String,dynamic>> messaged = [];

  @override
  void initState()
  {
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('DANOWAYs Chat Bot',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.deepPurple,
      ),

      body: Container(
        color: Color.fromARGB(255, 210, 206, 206),
        child: Column(
          children: [
            Expanded(child: MessagesScreen(messages: messaged)),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 14,vertical: 8),
              color: Color.fromARGB(255, 231, 201, 119),
              child: Row(children: [
                Expanded(
                child: TextField(controller: _controller,
                style: TextStyle(color: Colors.black,fontSize: 24),)),

                IconButton(onPressed: (){
                  sendMessages(_controller.text);
                  _controller.clear();
                }, icon: Icon(Icons.send,color: Color.fromARGB(255, 47, 47, 42),)),
              ]),
            )
          ],
        ),
      ),
    );
  }
  sendMessages(String text)async
  {
    if(text.isEmpty)
    {
      print('Please Enter Some Message');
    }
    else{
      // Handling user message
      setState(() 
      {
        addMessage(Message(
          text: DialogText(text: [text])
        ),true);
      });
      DetectIntentResponse response = await dialogFlowtter.detectIntent(
      queryInput: QueryInput(text: TextInput(text: text)));
      
      // Handling dialog flutter message
      if(response.message == null) return;
      setState(() {
        addMessage(response.message!);
      });
    }
  }

  addMessage(Message message,[bool isUserMessage = false])
  {
    messaged.add({
      'message':message,
      'isUserMessage': isUserMessage,
    });
  }
}