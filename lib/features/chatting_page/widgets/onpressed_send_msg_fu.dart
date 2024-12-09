import '../../firebase/add_message_to_db.dart';
import 'animted_scrolling_list.dart';

 onPressedSendIcon(myFriendEmail ,  msg , controller , scrollController ){
  if(msg.isNotEmpty ){
    addMessage(
      myFriendEmail: myFriendEmail,
      message:msg,
    );
    controller.clear();
    animatedScrollingFun(scrollController);
  }
}


