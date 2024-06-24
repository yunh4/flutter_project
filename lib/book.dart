import 'package:flutter/material.dart';
import 'book_click.dart';

void main() {
  runApp(BookSuggestionApp());
}

class BookSuggestionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookScreen(),
    );
  }
}

class BookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                leading: Image.asset('assets/book/미움받을용기.jpg'),
                title: Text(
                  '미움받을 용기',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '고가 후미타케 와 기시미 이치로\n',
                        style: TextStyle(color: Color(0xFF799979)),
                      ),
                      TextSpan(
                        text: '"어떻게 행복한 인생을 살 것인가?"라는 철학적인 질문에 '
                            '아들러 심리학은 단순하면서도 명쾌한 해답을 제시한다.',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                color: Color(0xFF799979).withOpacity(0.5),
                child: GridView.count(
                  crossAxisCount: 3,
                  padding: const EdgeInsets.all(8.0),
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookClickScreen(),
                          ),
                        );
                      },
                      child: BookCard(imagePath: 'assets/book/내일은내일의해가뜨겠지만오늘밤은어떡하나요.jpg'),
                    ),
                    BookCard(imagePath: 'assets/book/혼자서본영화.jpg'),
                    BookCard(imagePath: 'assets/book/기억.jpg'),
                    BookCard(imagePath: 'assets/book/사람을좋아하는헤드헌터.jpg'),
                    BookCard(imagePath: 'assets/book/보라색치마를입은여자.jpg'),
                    BookCard(imagePath: 'assets/book/1퍼센트부자의법칙.jpg'),
                    BookCard(imagePath: 'assets/book/harrypotter.jpg'),
                    BookCard(imagePath: 'assets/book/마음의다이어리.jpg'),
                    BookCard(imagePath: 'assets/book/모든순간이너였다.jpg'),
                    BookCard(imagePath: 'assets/book/사람은무엇으로성장하는가.jpg'),
                    BookCard(imagePath: 'assets/book/세이노의가르침.jpg'),
                    BookCard(imagePath: 'assets/book/아몬드.jpg'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final String imagePath;

  BookCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}