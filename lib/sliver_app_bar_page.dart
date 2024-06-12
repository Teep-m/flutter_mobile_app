import 'package:flutter/material.dart';

class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({Key? key}) : super(key: key);

  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blueAccent.withOpacity(0.3),
            floating: true,
            pinned: true,
            snap: false,
            expandedHeight: 180,
            toolbarHeight: 60,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                '記事カテゴリー',
              ),
              background: Container(
                width: double.infinity,
                child: Image.network(
                  'https://images.pexels.com/photos/23842679/pexels-photo-23842679/free-photo-of-a-woman-in-a-black-jacket-leaning-against-a-wall.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Sept. 29 2020',
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.share,
                              color: Colors.blueAccent,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                      Text('記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル'),
                      Divider(
                        height: 30,
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/24613542/pexels-photo-24613542/free-photo-of-flat-white-please.jpeg?auto=compress&cs=tinysrgb&w=300&lazy=load'),
                            radius: 26,
                            backgroundColor: Colors.grey[200],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '山田 太郎',
                              ),
                              Text(
                                'ITジャーナリスト',
                              ),
                            ],
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '350',
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(
                            Icons.comment,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '25',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                          '井手口は２３日、自身のインスタグラムに写真や動画を投稿。新潟市の航空会社「トキエア」のＰＲ活動のために新潟を訪問したことを報告した。ドジャースのユニホームを着た井手口の隣には、３月のドジャース開幕戦で韓国渡航前に公開された真美子さんと似た服装の女性が登場。動画では名前を「真似子」と紹介している。\nフォロワーからは「隣は誰かな！？」「遂に奥様揃いましたね」「本当に結婚して豪邸買いましょう」などのコメントが寄せられている。')
                    ],
                  ),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
