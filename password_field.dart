import 'package:flutter/material.dart';

class PassTextField extends StatefulWidget {
  String hintText;
  PassTextField(this.hintText);
  @override
  _PassTextFieldState createState() => _PassTextFieldState();
}

class _PassTextFieldState extends State<PassTextField> {
  TextEditingController _passTextCtrllr = new TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Container(
          width: size.width * 0.8,
          child: TextField(
            obscureText: _obscureText,
            controller: _passTextCtrllr,
            textAlign: TextAlign.start,
            cursorColor: Colors.black,
            decoration: InputDecoration(
                prefixIcon: IconButton(
                  icon: Icon(
                    Icons.lock,
                  ), //edit_outlined/sharp/rounded
                  color: Color(0xFF6F35A6),
                  onPressed: () {},
                ),
                suffixIcon: IconButton(
                  icon: _obscureText
                      ? Icon(
                          Icons.visibility_off,
                        )
                      : Icon(Icons.visibility),
                  color: Color(0xFF6F35A6),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  height: 0.5,
                ),
                border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
