import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
List<Music> listCOunt=[];
void addToList(Music music){
  print('called');
  listCOunt.add(music);
  create(listCOunt);

}
void create(List<Music> list) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  // Encode and store data in SharedPreferences
  final String encodedData = Music.encode(list);

  await prefs.setString('tasbeeh', encodedData);

  // Fetch and decode data

}

void getData() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();



  // Fetch and decode data
  final String? musicsString = await prefs.getString('tasbeeh');

  final List<Music> musics = Music.decode(musicsString!);
 for(var i in musics){
   print(i.name);

 }
}
class Music {
  String? name;
  int? count;

  Music({
  this.name,
    this.count
  });

  factory Music.fromJson(Map<String, dynamic> jsonData) {
    return Music(
      name: jsonData['name'],
      count: jsonData['count'],

    );
  }

  static Map<String, dynamic> toMap(Music music) => {
    'name': music.name,
    'count': music.count,

  };

  static String encode(List<Music> musics) => json.encode(
    musics
        .map<Map<String, dynamic>>((music) => Music.toMap(music))
        .toList(),
  );

  static List<Music> decode(String musics) =>
      (json.decode(musics) as List<dynamic>)
          .map<Music>((item) => Music.fromJson(item))
          .toList();
}