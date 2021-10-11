import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  final TextEditingController Controller;
  final void Function() onTap;
  final void Function(String) onChanged;
  const Searchbar({Key key, this.Controller, this.onTap, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.blue,
        controller: Controller,
        decoration: InputDecoration(
          labelText: 'Search Image',
          hintText: '이미지 검색',
          labelStyle: TextStyle(fontSize: 20, color: Colors.black),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(width: 4, color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(width: 2, color: Colors.cyan),
          ),
        ),
      ),
    );
  }
}
