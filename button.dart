import "package:flutter/material.dart";
class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    
   var size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: size.width * 0.8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            color: Color(0xFF6F35A6),
            onPressed: navigator,
            child: Text(
              "Daxil Ol",
              style: TextStyle(color: Color(0xFFF1E6FF)),
            ),
          ),
        ));
  }

  navigator() {
    // Navigaotr.push(context,MaterialPageRoute(builder: (context)=>/*kecid sehife*/));
  }
}
