import 'package:flutter/material.dart';

Color myGreen = Color.fromRGBO(0, 102, 153, 1);
enum MessageType {sent, received}
List<Map<String, dynamic>> friendsList = [
  {
    'imgUrl':
        'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
    'username': 'Cybdom Tech',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': true,
    'hasUnSeenMsgs': false,
    'unseenCount': 0,
    'lastMsgTime': '18:44',
    'isOnline': true
  },
  {
    'imgUrl':
        'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
    'username': 'Flutter Dev',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': false,
    'hasUnSeenMsgs': false,
    'unseenCount': 0,
    'lastMsgTime': '18:44',
    'isOnline': false
  },
  {
    'imgUrl':
        'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
    'username': 'Dart Dev',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': false,
    'hasUnSeenMsgs': true,
    'unseenCount': 3,
    'lastMsgTime': '18:44',
    'isOnline': true
  },
  {
    'imgUrl':
        'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
    'username': 'Designer',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': true,
    'hasUnSeenMsgs': true,
    'unseenCount': 2,
    'lastMsgTime': '18:44',
    'isOnline': true
  },
  {
    'imgUrl':
        'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
    'username': 'FrontEnd Dev',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': false,
    'hasUnSeenMsgs': true,
    'unseenCount': 4,
    'lastMsgTime': '18:44',
    'isOnline': true
  },
  {
    'imgUrl':
        'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
    'username': 'Full Stack Dev',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': false,
    'hasUnSeenMsgs': false,
    'unseenCount': 0,
    'lastMsgTime': '18:44',
    'isOnline': true
  },
  {
    'imgUrl':
        'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
    'username': 'Backend Dev',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': false,
    'hasUnSeenMsgs': true,
    'unseenCount': 3,
    'lastMsgTime': '18:44',
    'isOnline': true
  }
];

List<Map<String, dynamic>> messages = [
  {
    'status' : MessageType.received,
    'contactImgUrl' : 'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
    'contactName' : 'Client',
    'message' : 'Hi mate, I\d like to hire you to create a mobile app for my business' ,
    'time' : '08:43 AM'
  },
  {
    'status' : MessageType.sent,
    'message' : 'Hi, I hope you are doing great!' ,
    'time' : '08:45 AM'
  },
  {
    'status' : MessageType.sent,
    'message' : 'Please share with me the details of your project, as well as your time and budgets constraints.' ,
    'time' : '08:45 AM'
  },
  {
    'status' : MessageType.received,
    'contactImgUrl' : 'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
    'contactName' : 'Client',
    'message' : 'Sure, let me send you a document that explains everything.' ,
    'time' : '08:47 AM'
  },
  {
    'status' : MessageType.sent,
    'message' : 'Ok.' ,
    'time' : '08:45 AM'
  },
];
