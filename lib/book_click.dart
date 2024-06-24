import 'package:flutter/material.dart';

class BookClickScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/book/내일은내일의해가뜨겠지만오늘밤은어떡하나요.jpg',
                  width: 120,
                  height: 160,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '내일은 내일의 해가 뜨겠지만\n오늘 밤은 어떡하나요',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8),
                        Text(
                          '연정',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF799979),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '> e-book\n9,810₩',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8),
                        Text(
                          '구매하시겠습니까? 예',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Recommended Songs >',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  SongCard(
                    imagePath: 'assets/music/lovepoem.jpg',
                    title: 'Love poem',
                    artist: '아이유',
                    lyrics: '누군을 위해 누군가 기도하고 있나 봐\n'
                        '숨죽여 쓴 사랑시가 낮게 들리는 듯해',
                  ),
                  SongCard(
                    imagePath: 'assets/music/바람개비.jpg',
                    title: '바람개비',
                    artist: 'SEVENTEEN',
                    lyrics: '아주 작은 바람개비 혼자 서서 그저 멍하니\n'
                        '누군갈 쓸쓸히 애타게 찾는 게 꼭 나 같아',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SongCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String artist;
  final String lyrics;

  SongCard({
    required this.imagePath,
    required this.title,
    required this.artist,
    required this.lyrics,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Image.asset(imagePath, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              artist,
              style: TextStyle(
                color: Color(0xFFA95C92),
              ),
            ),
            SizedBox(height: 4),
            Text(lyrics),
          ],
        ),
      ),
    );
  }
}
