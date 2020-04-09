import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  final TextEditingController _usernameController = TextEditingController();
  String _message='';
  Color _messageColor = Colors.green;

  void setMessage(String message, Color color) {
    setState(() {
      _message = message;
      _messageColor = color;
    });
  }

  @override
  void initState() {
    super.initState();
    setMessage('', null);
  }

  @override
  Widget build(BuildContext context) {

    var messageLable = Text(
      '$_message',
      style: TextStyle(
        color: _messageColor,
        fontSize: 20
      ),
    );

    final usernameField = TextField(
      controller: _usernameController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'User name',
        border: 
          OutlineInputBorder(borderRadius: BorderRadius.circular(8.0))
      ),
    );

    final doneButton = RaisedButton(
      child: Text('Done'),
      onPressed: () async{
        if(_usernameController.text.trim().length == 0) {
          setMessage('Please enter user name', Colors.red);
        }
        else {
          setMessage('Hello ' + _usernameController.text, Colors.green);  
        }
      },
    );

    final resetButton = RaisedButton(
      child: Text('Reset'),
      onPressed: () async{
        _usernameController.text = '';
        setMessage('', null);
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Single View'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            usernameField,
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                doneButton,
                SizedBox(width: 10),
                resetButton
              ]
            ),
            SizedBox(height: 20),
            messageLable
          ]
        ),
      )
    );
  }
}
