import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp()
    )
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color? color;
  Size? size;
  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;


    return Scaffold(
      body:
      SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              makebelz(Colors.red, 1),
              makebelz(Colors.yellow, 2),
              makebelz(Colors.pink, 3),
              makebelz(Colors.blue, 4),
              makebelz(Colors.purple, 5),
              makebelz(Colors.green, 6),
              makebelz(Colors.black, 7),
            ],
          ),
        ),
      )

    );
  }

  Widget makebelz(Color color, var num){
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: (){
          PlaySound(num);
        },
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          height: size!.height - size!.height * 0.08 * num,
          width: size!.width * 0.14,
          // width: Size,
        ),
      ),
    );
  }
  void PlaySound (int number){
    player.setAsset('assets/belz-audios/audio$number.wav');
    player.play();
  }
}

