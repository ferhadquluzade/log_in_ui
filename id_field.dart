import 'package:flutter/material.dart';

class IdTextField extends StatefulWidget {
  String hintText;
  IdTextField(this.hintText);
  @override
  _IdTextFieldState createState() => _IdTextFieldState();
}

class _IdTextFieldState extends State<IdTextField> {
  TextEditingController _idTextCtrllr = new TextEditingController();

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
            controller: _idTextCtrllr,
            textAlign: TextAlign.start,
            cursorColor: Colors.black,
            decoration: InputDecoration(
                prefixIcon: IconButton(
                  icon: Icon(Icons.edit), //edit_outlined/sharp/rounded
                  color: Color(0xFF6F35A6),
                  onPressed: () {},
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
