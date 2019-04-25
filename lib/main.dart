import 'package:http/http.dart' as http;


class Animal {

  int _distance = 10;

  Animal() {
    print('Animal()');
    print('$_distance');
  }

  void _move(int distance) {
    this._distance = distance;
    print('Animal moved this $distance');
  }

}

class Human extends Animal {
  String _song;
  int _distance;
  final numberOfArms;

  String get song => _song;

  set song(String song) {
    this._song = song;
  }

  Human(this._song, this._distance):numberOfArms = 2;


  Human.makeSong(String song) : numberOfArms = 2 {
    print('human make sound');
    this._song = song;
  }


  @override
  void _move(int distance) {
    // TODO: implement _move
    print('Human run this ${distance+10}');
  }
}



void main() {
  Human human = new Human.makeSong("like the world");
  human.song = 'love the world';
  print(human.numberOfArms);
  print(human._song);
  human._move(10);
}





