import 'package:flutter/material.dart';

class btn extends StatelessWidget {
   btn({super.key,required this.txt,required this.OnClickFun});
String txt;
Function OnClickFun;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        OnClickFun(txt);
      },
      child: Container(
        margin: EdgeInsets.all(10),
        color: Colors.white,
        height: MediaQuery.of(context).size.height*0.1,
        child: Center(
          child: Text(txt,style: TextStyle(
            decoration: TextDecoration.none
          ),),
        ),
      ),
    );
    // return ElevatedButton(
    //
    //   style: ButtonStyle(
    //
    //
    //   ),
    //
    //
    //     onPressed: (){
    //   OnClickFun(txt);
    //
    // }, child: Text(txt));
  }
}
