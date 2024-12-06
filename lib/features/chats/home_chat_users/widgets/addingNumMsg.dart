import 'package:flutter/cupertino.dart';

import 'num_of_msg.dart';

Widget showingNumWidget(isShow){
 if(isShow){
   return const NumOfMsg();
 }
 else{
   return Container();
 }
}