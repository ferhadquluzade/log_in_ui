import "package:flutter/material.dart";

class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white),
          child: Checkbox(
            value: _rememberMe,
            checkColor: Color(0xFF6F35A6),
            activeColor: Color(0xFFF1E6FF),
            onChanged: (value) {
              setState(() {
                _rememberMe = value;
              });
            },
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              _rememberMe = !_rememberMe;
            });
          },
          child: Text(
            "Yadda Saxla",
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
