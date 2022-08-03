import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("การสั่งซื้อ"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField( 
                  decoration: new InputDecoration(labelText: "ชื่อสินค้า"),
                  autofocus: true,
                  validator: (String? str){
                      if(str!.isEmpty){
                          return "กรุณาป้อนรายการ";
                      }
                      return null;
                  },
                ),
                TextFormField(
                  decoration: new InputDecoration(labelText: "จำนวนสินค้า"),
                  keyboardType: TextInputType.number,
                ),
                TextFormField(
                  decoration: new InputDecoration(labelText: "ราคาสินค้า"),
                  keyboardType: TextInputType.number,
                  validator: (String? str){
                    if(str!.isEmpty){
                          return "กรุณาป้อนราคาสินค้า";
                      }
                      if(double.parse(str)<=0){
                        return "กรุณาป้อนตัวเลขมากกว่า 0";
                      }
                      return null;
                  },
                ),
                FlatButton(
                  child: Text("เพิ่มข้อมูล"),
                  color: Colors.pink,
                  textColor: Colors.white,
                  onPressed: (){
                    if(formKey.currentState!.validate()){         
                      Navigator.pop(context);
                    }
                  }, 
                  )
              ],
            ),
          ),
        ));
  }
}
