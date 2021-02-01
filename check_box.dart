import "package:flutter/material.dart";

class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _remember = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white),
          child: Checkbox(
            value: _remember,
            checkColor: Color(0xFF6F35A6),
            activeColor: Color(0xFFF1E6FF),
            onChanged: (value) {
              setState(() {
                _remember = value;
              });
            },
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              _remember = !_remember;
            });
          },
          child: Text(
            "Remember",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ]),
    );
  }
}
