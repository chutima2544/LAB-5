import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("การสั่งซื้อ"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField( 
                  decoration: new InputDecoration(labelText: "ชื่อสินค้า"),
                  autofocus: true,
                ),
                TextFormField(
                  decoration: new InputDecoration(labelText: "จำนวนสินค้า"),
                  keyboardType: TextInputType.number,
                ),
                TextFormField(
                  decoration: new InputDecoration(labelText: "ราคาสินค้า"),
                  keyboardType: TextInputType.number,
                ),
                FlatButton(
                  child: Text("เพิ่มข้อมูล"),
                  color: Colors.pink,
                  textColor: Colors.white,
                  onPressed: (){
                    Navigator.pop(context);
                  }, 
                  )
              ],
            ),
          ),
        ));
  }
}
