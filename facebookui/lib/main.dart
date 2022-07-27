import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120,
            padding:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(255, 243, 239, 239),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 88, 86, 86),
                        ),
                        border: InputBorder.none,
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 88, 86, 86)),
                        hintText: "Search",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Icons.camera_alt,
                  color: Color.fromARGB(255, 52, 52, 52),
                  size: 30,
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 00, bottom: 20, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: const <Widget>[
                        Text(
                          "Stories",
                          style: TextStyle(
                            color: Color.fromARGB(255, 100, 100, 100),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 1.1,
                          ),
                        ),
                        Text(
                          "See Archives",
                          style: TextStyle(
                            color: Color.fromARGB(255, 100, 100, 100),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeStory(
                              storyImage: 'assets/images/story/story-4.jpg',
                              userImage: 'assets/images/p1.jpg',
                              userName: 'Will Byers'),
                          makeStory(
                              storyImage: 'assets/images/story/story-5.jpg',
                              userImage: 'assets/images/p2.jpg',
                              userName: 'Mike Wheeler'),
                          makeStory(
                              storyImage: 'assets/images/story/story-6.jpg',
                              userImage: 'assets/images/p3.jpg',
                              userName: 'Dustin'),
                          makeStory(
                              storyImage: 'assets/images/story/story-1.jpg',
                              userImage: 'assets/images/p4.jpg',
                              userName: 'User 4'),
                          makeStory(
                              storyImage: 'assets/images/story/story-2.jpg',
                              userImage: 'assets/images/p5.jpg',
                              userName: 'User 5'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    makeFeed(
                      userName: 'Sagar Kafle',
                      userImage: 'assets/images/p6.jpg',
                      feedImage: 'assets/images/post1.jpg',
                      feedTime: '2 hrs ago',
                      feedText:
                          'Messi coming to PSG was a dream, says Paredes, but deal for Argentina team-mate didnt happen.',
                    ),
                    makeFeed(
                        userName: 'Eleven',
                        userImage: 'assets/images/p7.jpg',
                        feedImage: 'assets/images/post2.jpg',
                        feedTime: '1 hrs ago',
                        feedText:
                            'Stranger Things: The Experience is an immersive experience in New York based on the iconic Netflix show.Be the hero of your own Stranger Things story and unlock your power as you journey through Hawkins Lab alongside your favorite characters. Then enjoy an 80s-style medley of locations and fan-favorite moments with merchandise, food & drinks, photo ops, interactive performers, and more surprises!'),
                    makeFeed(
                        userName: 'Jim Hopper',
                        userImage: 'assets/images/p8.jpg',
                        feedImage: 'assets/images/post3.jpg',
                        feedTime: '1 hrs ago',
                        feedText:
                            'Movies move us like nothing else can, whether theyre scary, funny, dramatic, romantic or anywhere in-between. So many titles, so much to experience.'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.6 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(image: AssetImage(storyImage), fit: BoxFit.cover),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.1),
              ],
            ),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    image: DecorationImage(
                        image: AssetImage(userImage), fit: BoxFit.cover),
                  ),
                ),
                Text(
                  userName,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ]),
        ),
      ),
    );
  }

  Widget makeFeed({userName, feedImage, feedTime, feedText, userImage}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      // height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            letterSpacing: 0.9),
                      ),
                      const SizedBox(height: 5),
                      Text(feedTime),
                    ],
                  ),
                ],
              ),
              IconButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    size: 30,
                    color: Color.fromARGB(255, 101, 99, 99),
                  ),
                  onPressed: () {}),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            feedText,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 15,
                color: Colors.grey[800],
                height: 1.5,
                letterSpacing: .7),
          ),
          const SizedBox(
            height: 20,
          ),
          feedImage != ''
              ? Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(feedImage), fit: BoxFit.cover)),
                )
              : Container(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  makeLike(),
                  Transform.translate(
                      offset: const Offset(-5, 0), child: makeLove()),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "2.5K",
                    style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                  )
                ],
              ),
              Text(
                "400 Comments",
                style: TextStyle(fontSize: 13, color: Colors.grey[800]),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: false),
              makeCommentButton(),
              makeShareButton(),
            ],
          )
        ],
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "Like",
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: const Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: const Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.chat, color: Colors.grey, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              "Comment",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              "Share",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
