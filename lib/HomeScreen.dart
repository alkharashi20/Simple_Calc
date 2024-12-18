

import 'package:flutter/material.dart';
import 'package:untitled6/Btn.dart';

class Homescreen extends StatefulWidget {
   Homescreen({super.key});
static String routeName ='Home_Screen';

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String restxt='';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text(restxt,style: TextStyle(
            fontSize: 30,
            decoration: TextDecoration.none
          ),),
        ),

        Spacer(),
        Row(
          children: [

            Expanded(child: btn(txt: '7',OnClickFun: onDigitClick,)),

            Expanded(child: btn(txt: '8',OnClickFun: onDigitClick,)),

            Expanded(child: btn(txt: '9',OnClickFun: onDigitClick,)),

            Expanded(child: btn(txt: "*",OnClickFun: OnOperatorClick,)),

          ],
        )
,

        Row(
          children: [

            Expanded(child: btn(txt: '4',OnClickFun: onDigitClick,)),

            Expanded(child: btn(txt: '5',OnClickFun: onDigitClick,)),

            Expanded(child: btn(txt: '6',OnClickFun: onDigitClick,)),

            Expanded(child: btn(txt: "-",OnClickFun: OnOperatorClick,)),

          ],
        )
,



        Row(

          children: [

            Expanded(child: btn(txt: '1',OnClickFun: onDigitClick,)),
            Expanded(child: btn(txt: '2',OnClickFun: onDigitClick,)),
            Expanded(child: btn(txt: '3',OnClickFun: onDigitClick,)),
            Expanded(child: btn(txt: '+',OnClickFun: OnOperatorClick,)),

          ],
        )
,
        Row(
          children: [
            Expanded(child:btn(txt: '=', OnClickFun:equal ))
          ],
        ),
        Row(
          children: [
            Expanded(child:btn(txt: 'Rest', OnClickFun:rest ))
          ],
        )

      ],
    );
  }
  String lhs='';
  String operator='';

void rest(String rest){
  restxt='';
  setState(() {

  });

}
void onDigitClick(String ondigit){
restxt+=ondigit;

setState(() {

});

}
void OnOperatorClick(String OnOperatorClick){
if(operator.isEmpty){

  lhs=restxt;
}else{
String rhs=restxt;
lhs=calc(lhs, rhs, operator);


}
operator=OnOperatorClick;
restxt='';
setState(() {

});
}
String calc(String lhs , String rhs , String operator){
double num1 = double.parse(lhs);
double num2= double.parse(rhs);
double restext=0.0;
if(operator=='+'){
  restext=num1+num2;
}else if (operator=='-'){
  restext = num1-num2;
}else if (operator=='*'){

  restext = num1*num2;
}
return restext.toString();
}
  void equal(String equalto){
  String rhs=restxt;
    restxt=calc(lhs, rhs, operator);
operator='';
lhs='';
setState(() {

});

  }
  }

