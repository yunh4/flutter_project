import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Main2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Transform.translate(
                  offset: Offset(-10, 0),
                  child: SvgPicture.asset(
                    'assets/logo.svg',
                    height: 80,
                  ),
                ),
              ],
            ),
            SizedBox(height: 0),
            Text(
              'Recommended Books',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 200,
              child: DraggableScrollableSheet(
                initialChildSize: 1,
                minChildSize: 1,
                maxChildSize: 1,
                builder: (BuildContext context, ScrollController scrollController) {
                  return ListView(
                    controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    children: [
                      BookCard('assets/book/인간실격.jpg'),
                      BookCard('assets/book/harrypotter.jpg'),
                      BookCard('assets/book/책먹는여우.jpg'),
                      BookCard('assets/book/종의기원.jpg'),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Categories >',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                CategoryChip(label: 'Reasoning', backgroundColor: Color(0xFF799979).withOpacity(0.8)),
                CategoryChip(label: 'Science Fiction', backgroundColor: Color(0xFF799979).withOpacity(0.8)),
                CategoryChip(label: 'Romances', backgroundColor: Color(0xFF799979).withOpacity(0.8)),
                CategoryChip(label: 'Action', backgroundColor: Color(0xFF799979).withOpacity(0.8)),
                CategoryChip(label: 'Classic', backgroundColor: Color(0xFFA95C92).withOpacity(0.8)),
                CategoryChip(label: 'Jazz', backgroundColor: Color(0xFFA95C92).withOpacity(0.8)),
                CategoryChip(label: 'Ballade', backgroundColor: Color(0xFFA95C92).withOpacity(0.8)),
                CategoryChip(label: 'POP', backgroundColor: Color(0xFFA95C92).withOpacity(0.8)),
                CategoryChip(label: 'Hip Hop', backgroundColor: Color(0xFFA95C92).withOpacity(0.8)),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'Recently Added >',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            RecentlyAddedItem(
              imageUrl: 'assets/music/음악의신.jpg',
              title: '음악의 신',
              subtitle: 'SEVENTEEN',
              description: 'SEVENTEEN 11th Mini Album\n‘SEVENTEENTH HEAVEN',
              subtitleStyle: TextStyle(color: Color(0xFFA95C92)),
            ),
            SizedBox(height: 5),
            RecentlyAddedItem(
              imageUrl: 'assets/book/세이노의가르침.jpg',
              title: '세이노의 가르침',
              subtitle: '세이노(SayNo)',
              description: '피보다 진하게 살아라!',
              subtitleStyle: TextStyle(color: Color(0xFF799979)),
            ),
            // New Sections
            SizedBox(height: 32),
            Text(
              'Today Suggestion >',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            SuggestedItem(
              imageUrl: 'assets/book/미움받을용기.jpg',
              title: '미움받을 용기',
              subtitle: '고가 후미타케 와 기시미 이치로',
              description: '"어떻게 행복한 인생을 살 것인가?"라는 철학적인 질문에 '
                  '아들러 심리학은 단순하면서도 명쾌한 해답을 제시한다. 특히 철학자가 주장에 반박하는 '
                  '청년의 얘기와 한껏 공감대를 불러일으키며 책 속으로 빠져들게 할 것이다.',
              isTallImage: true,
            ),
            SizedBox(height: 10),
            SuggestedItem(
              imageUrl: 'assets/music/청춘찬가.jpg',
              title: 'SEVENTEEN',
              subtitle: '청춘찬가',
              description: '어쩌다 보니 처음으로 마주하는 오늘이라서 '
                  '사무치게 아픈 말 한마디에 내가 더 싫어도',
              subtitleStyle: TextStyle(color: Color(0xFFA95C92)),
            ),
            SizedBox(height: 32),
            Text(
              'TOP 10 >',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            TopTenItem(
              imageUrl: 'assets/book/아몬드.jpg',
              rank: '1',
              title: '아몬드',
              author: '손원평',
              otherRanks: [
                '2 우아한 거짓말',
                '3 달러구트 꿈 백화점',
                '4 나는 읽고 쓰고 버린다',
                '5 벌거벗은 세계사',
                '6 누구를 위한 이슬람 율법인가',
                '7 지하철',
                '8 우한폐렴 속사정이야기',
                '9 제로원',
                '10 미디어의 본질',
              ],
              isTallImage: true,
            ),
            SizedBox(height: 32),
            Text(
              'Recent updates >',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 300, // Adjust height as needed
              child: ListView(
                children: [
                  RecentUpdateItem(
                    imageUrl: 'assets/music/청춘찬가.jpg',
                    title: 'SEVENTEEN',
                    subtitle: '17 IS RIGHT HERE',
                    subtitleStyle: TextStyle(color: Color(0xFFA95C92)),
                  ),
                  RecentUpdateItem(
                    imageUrl: 'assets/book/모든순간이너였다.jpg',
                    title: '하태완',
                    subtitle: '모든 순간이 너였다',
                    subtitleStyle: TextStyle(color: Color(0xFF799979)),
                  ),
                  RecentUpdateItem(
                    imageUrl: 'assets/book/마음의다이어리.jpg',
                    title: '우정희',
                    subtitle: '마음의 다이어리',
                    subtitleStyle: TextStyle(color: Color(0xFF799979)),
                  ),
                  RecentUpdateItem(
                    imageUrl: 'assets/book/일류의조건.jpg',
                    title: '사이토 다카시',
                    subtitle: '일류의 조건',
                    subtitleStyle: TextStyle(color: Color(0xFF799979)),
                  ),
                  RecentUpdateItem(
                    imageUrl: 'assets/music/해야.jpg',
                    title: 'IVE',
                    subtitle: 'IVE SWITCH',
                    subtitleStyle: TextStyle(color: Color(0xFFA95C92)),
                  ),
                  RecentUpdateItem(
                    imageUrl: 'assets/music/마그네틱.jpg',
                    title: 'ILLIT',
                    subtitle: 'SUPER REAL ME',
                    subtitleStyle: TextStyle(color: Color(0xFFA95C92)),
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

class BookCard extends StatelessWidget {
  final String imageUrl;

  BookCard(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.0),
      width: 120,
      height: 180,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;
  final Color backgroundColor;

  CategoryChip({required this.label, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: backgroundColor,
    );
  }
}

class RecentlyAddedItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String description;
  final TextStyle? subtitleStyle;

  RecentlyAddedItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.description,
    this.subtitleStyle,
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
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: subtitleStyle ?? TextStyle(color: Colors.black54),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
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

class SuggestedItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String description;
  final bool isTallImage;
  final TextStyle? subtitleStyle;

  SuggestedItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.description,
    this.isTallImage = false,
    this.subtitleStyle,
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
              width: 80,
              height: isTallImage ? 120 : 80,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: subtitleStyle ?? TextStyle(fontSize: 14, color: Color(0xFF799979)),
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

class TopTenItem extends StatelessWidget {
  final String imageUrl;
  final String rank;
  final String title;
  final String author;
  final List<String> otherRanks;
  final bool isTallImage;

  TopTenItem({
    required this.imageUrl,
    required this.rank,
    required this.title,
    required this.author,
    required this.otherRanks,
    this.isTallImage = false,
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
              width: isTallImage ? 120 : 60,
              height: isTallImage ? 160 : 60,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$rank $title',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    author,
                    style: TextStyle(fontSize: 14, color: Color(0xFF799979)),
                  ),
                  SizedBox(height: 8),
                  ...otherRanks.map((rank) => Text(rank)).toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecentUpdateItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final TextStyle? subtitleStyle;

  RecentUpdateItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    this.subtitleStyle,
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
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: subtitleStyle ?? TextStyle(color: Colors.black54),
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
