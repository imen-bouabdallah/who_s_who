import 'package:who_s_who/Modules/User.dart';

class Message{
  final int id;
  final User sender;
  final String time; // to be able to order them
  final bool isLiked;
  String msg;

  Message({
    this.id,
    this.sender,
    this.time,
    this.isLiked,
    this.msg,
  });
}

final User currentUser = User(
  id: 0,
  name: 'Me', //we're supposed to get it from when he connected
  //imageUrl: '', //retreive this too from the database
);
final User Nabil = User(
  id: 1,
  name: 'Nabil',
);
final User Lina = User(
  id: 2,
  name: 'Lina',
);
final User Manel = User(
  id: 2,
  name: 'Manel manoulllllljjjj',
);
final User moh = User(
  id: 2,
  name: 'Mohamed Islam',
);

//Example of msgs (until we connect to the database=
List<Message> chats = [
  Message(
    sender: Nabil,
    time: '5:30 PM',
    msg: 'hey',
    isLiked: false,
  ),
  Message(
    sender: Lina,
    time: '4:30 PM',
    msg: 'hello, how is it going',
    isLiked: true,
  ),
  Message(
    sender: moh,
    time: '5:00 PM',
    msg: 'slt cv',
    isLiked: false,
  ),
  Message(
    sender: Manel,
    time: '5:10 PM',
    msg: 'I ate too much',
    isLiked: false,
  ),
  Message(
    sender: moh,
    time: '5:00 PM',
    msg: '*a meme*',
    isLiked: false,
  ),
  Message(
    sender: currentUser,
    time: '5:00 PM',
    msg: 'fine thanks',
    isLiked: false,
  ),
  Message(
    sender: currentUser,
    time: '5:00 PM',
    msg: 'fine thanks',
    isLiked: false,
  ),
  Message(
    sender: currentUser,
    time: '5:00 PM',
    msg: 'I am going out',
    isLiked: false,
  ),
  Message(
    sender: currentUser,
    time: '5:00 PM',
    msg: 'fine thanks',
    isLiked: false,
  ),
  Message(
    sender: currentUser,
    time: '5:00 PM',
    msg: 'fine thanks',
    isLiked: false,
  ),
  Message(
    sender: Manel,
    time: '5:00 PM',
    msg: 'fine thanks',
    isLiked: false,
  ),
  Message(
    sender: Lina,
    time: '5:00 PM',
    msg: 'fine thanks',
    isLiked: false,
  ),
  Message(
    sender: currentUser,
    time: '5:00 PM',
    msg: 'fine thanks',
    isLiked: false,
  ),
  Message(
    sender: Nabil,
    time: '5:00 PM',
    msg: 'fine thanks',
    isLiked: false,
  ),
];