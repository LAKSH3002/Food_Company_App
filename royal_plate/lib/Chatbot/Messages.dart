import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  final List messages;
  const MessagesScreen({super.key, required this.messages});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) 
  {
    var w = MediaQuery.of(context).size.width;
    return ListView.separated
    (
    itemBuilder: (context,index){
      return Container(
        margin: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: widget.messages[index]['isUserMessage']?MainAxisAlignment.end:MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 13,horizontal: 20),
              decoration: BoxDecoration
              (
                borderRadius: BorderRadius.only(
      
                  bottomLeft: Radius.circular(10),
      
                  topRight: Radius.circular(10),
      
                  bottomRight: Radius.circular(
                    widget.messages[index]['isUserMessage'] ? 0 : 10),
      
                  topLeft: Radius.circular(
                    widget.messages[index]['isUserMessage'] ? 0 : 10)),
      
                  color: widget.messages[index]['isUserMessage']
                  ? Colors.grey
                  :  Colors.grey.shade900.withOpacity(0.8)
                  ),
                  constraints: BoxConstraints(maxWidth: w*2.5/3), 
                  child: Text(widget.messages[index]['message'].text.text[0],style: TextStyle(fontSize: 19,color: Colors.white),),
                  )]
                ),
      );
    },
    separatorBuilder: (_,i) => Padding(padding: EdgeInsets.only(top: 5)), 
    itemCount: widget.messages.length,
    );
  }
}