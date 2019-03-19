import 'package:flutter/material.dart';
  const String _name="Bolu";
class ChatMessage extends StatelessWidget{
final String text;
    ChatMessage(this.text);
  Widget build(BuildContext context){
    return Container(
    margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget>[
          Container(
            margin: EdgeInsets.only(left:5.0,bottom: 10.0,right: 5.0),
            child: CircleAvatar(
              child: Text(_name[0]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[

      Text(_name,style:Theme.of(context).textTheme.subhead),
              Container(
                margin: EdgeInsets.only(top:5.0),
                child:Text(text)
              )
            ]
          )
          ]
      ),
    );
  }
}