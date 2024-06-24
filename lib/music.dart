import 'package:flutter/material.dart';
import 'music_click.dart';

class MusicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Today Suggestion >',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.grey.shade200,
                child: ListTile(
                  leading: Image.asset('assets/music/청춘찬가.jpg'),
                  title: Text(
                    '청춘찬가',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'SEVENTEEN\n',
                          style: TextStyle(color: Color(0xFFA95C92)),
                        ),
                        TextSpan(
                          text: '어쩌다 보니 처음으로 마주하는 오늘이라서\n사무치게 아픈 말 한마디에 내가 더 싫어도',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Color(0xFFA95C92).withOpacity(0.5),
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(8.0),
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MusicClickScreen()),
                        );
                      },
                      child: MusicCard('assets/music/readytolove.jpg'),
                    ),
                    MusicCard('assets/music/2002.jpg'),
                    MusicCard('assets/music/hypeboy.jpg'),
                    MusicCard('assets/music/lovedive.jpg'),
                    MusicCard('assets/music/numblittlebug.jpg'),
                    MusicCard('assets/music/pop.jpg'),
                    MusicCard('assets/music/sugar.jpg'),
                    MusicCard('assets/music/supernova.jpg'),
                    MusicCard('assets/music/tomboy.jpg'),
                    MusicCard('assets/music/너의의미.jpg'),
                    MusicCard('assets/music/여섯번째여름.jpg'),
                    MusicCard('assets/music/파이팅해야지.jpg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MusicCard extends StatelessWidget {
  final String imageUrl;

  MusicCard(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
