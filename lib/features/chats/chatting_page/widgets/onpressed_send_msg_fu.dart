


import '../../../firebase/add_message_to_db.dart';
import 'animted_scrolling_list.dart';

 onPressedSendIcon( msg , controller , scrollController ){
  if(msg.isNotEmpty ){
    addMessage(
      message:msg,
    );
    controller.clear();
    animatedScrollingFun(scrollController);
  }
}


