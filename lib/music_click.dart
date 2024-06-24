import 'package:flutter/material.dart';

class MusicClickScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/music/readytolove.jpg',
                      height: 200,
                    ),
                    SizedBox(height: 16),
                    Text(
                      '같은 꿈, 같은 맘, 같은 밤',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'SEVENTEEN',
                      style: TextStyle(fontSize: 18, color: Color(0xFFA95C92)),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Your Choice - Track 6',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Text(
                'Recommended Books >',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              BookRecommendationItem(
                imageUrl: 'assets/book/달러구트꿈백화점.jpg',
                title: '달러구트 꿈 백화점',
                author: '이미예',
                description: '취업 준비생이던 페니가 달러구트 꿈 백화점에 취직하여 경험하는 '
                    '다양하고 재미난 이야기. 잠들어야만 입장할 수 있는 세계를 배경으로 하며, '
                    '사건들은 그곳에서도 가장 인기 있는 건물인 달러구트 꿈 백화점에서 주로 일어난다.',
              ),
              SizedBox(height: 16),
              BookRecommendationItem(
                imageUrl: 'assets/book/사람은무엇으로성장하는가.jpg',
                title: '사람은 무엇으로 성장하는가',
                author: '존 맥스웰',
                description: '세계 최고의 리더십 구루라 칭송받는 존 맥스웰이 500만 명이 넘는 리더들을 교육시킨 경험을 '
                    '바탕으로 사람들이 생의 끝까지 성장할 수 있도록 도와주는 15가지 \'성장 법칙\'을 이 책에 담았다.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BookRecommendationItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String author;
  final String description;

  BookRecommendationItem({
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 100,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    author,
                    style: TextStyle(fontSize: 16, color: Color(0xFF799979)),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(color: Colors.black54),
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
