import 'package:flutter/cupertino.dart';

import 'num_of_msg.dart';

Widget showingNumOfMsgUi(isShow) {
  if (isShow) {
    return const NumOfMsg();
  } else {
    return Container();
  }
}
