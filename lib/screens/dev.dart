import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/theme_data.dart';

class Dev extends StatefulWidget {
  const Dev({Key? key}) : super(key: key);

  @override
  State<Dev> createState() => _DevState();
}

class _DevState extends State<Dev> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeBody(),
    const FavoritesBody(),
    const Text(
      'Search',
    ),
    const Text(
      'Playlist',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: dBackgroundColor,
          selectedItemColor: dPrimaryColor,
          unselectedItemColor: dTextColor,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.heart),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
              label: 'Search',
            ),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.barsStaggered),
                label: 'Playlist'),
          ]),
    );
  }
}

class FavoritesBody extends StatelessWidget {
  const FavoritesBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            padding:
                const EdgeInsets.only(top: 40, bottom: 20, left: 10, right: 10),
            child: Text('Your Favorites',
                style: TextStyle(
                  fontSize: textTheme.headline6?.fontSize,
                  fontWeight: FontWeight.w900,
                ))),
        SearchBar(onPress: () {}),
        Column(children: [
          SongListCard(cardPress: () {}, buttonPress: () {}),
          SongListCard(cardPress: () {}, buttonPress: () {}),
          SongListCard(cardPress: () {}, buttonPress: () {}),
          SongListCard(cardPress: () {}, buttonPress: () {}),
          SongListCard(cardPress: () {}, buttonPress: () {}),
          SongListCard(cardPress: () {}, buttonPress: () {}),
          SongListCard(cardPress: () {}, buttonPress: () {}),
          SongListCard(cardPress: () {}, buttonPress: () {}),
          SongListCard(cardPress: () {}, buttonPress: () {}),
          SongListCard(cardPress: () {}, buttonPress: () {}),
          SongListCard(cardPress: () {}, buttonPress: () {}),
          SongListCard(cardPress: () {}, buttonPress: () {}),
          SongListCard(cardPress: () {}, buttonPress: () {}),
          SongListCard(cardPress: () {}, buttonPress: () {}),
        ])
      ]),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    this.placeholder = 'Search',
    required this.onPress,
  }) : super(key: key);

  final String placeholder;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                  color: dTextColor,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: TextField(
                onChanged: (value) {},
                style: TextStyle(
                  color: dBackgroundColor,
                  fontSize: textTheme.headline6?.fontSize,
                ),
                decoration: InputDecoration(
                    hintText: placeholder,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: textTheme.headline6?.fontSize,
                      fontWeight: FontWeight.w900,
                    )),
              )),
        ),
        IconButton(
          onPressed: () => onPress,
          icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
          color: dTextColor,
        )
      ],
    );
  }
}

class SongListCard extends StatelessWidget {
  const SongListCard({
    Key? key,
    this.title = 'Cool Song',
    this.artist = 'Cool Artist',
    this.duration = '3.54',
    required this.cardPress,
    required this.buttonPress,
  }) : super(key: key);

  final String title;
  final String artist;
  final String duration;

  final Function cardPress;
  final Function buttonPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => cardPress,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
        height: 60,
        decoration: BoxDecoration(
            color: dPrimaryColor.withOpacity(.04),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(10, 0, 0, 0),
                offset: Offset(0, 2),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ]),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Image.asset(
                'assets/images/album_cover.jpg',
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: textTheme.headline6?.fontSize,
                        fontWeight: FontWeight.w900,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Text(artist,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: textTheme.subtitle1?.fontSize,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ],
              ),
            )),
            Text(duration),
            IconButton(
              onPressed: () => buttonPress,
              icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
              color: dTextColor,
            )
          ],
        ),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          TopHeader(
            title: 'Hi Cozmik',
            onPress: () {},
          ),
          TitleWithSeeAll(title: 'Recommended', press: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MusicCard(
                  title: 'Come Together long',
                  artist: 'The Beatles',
                  cardPress: () {},
                  buttonPress: () {},
                ),
                MusicCard(
                  title: 'Come Together longer',
                  artist: 'The Beatles',
                  cardPress: () {},
                  buttonPress: () {},
                ),
                MusicCard(
                  title: 'Come Together the longest',
                  artist: 'The Beatles',
                  cardPress: () {},
                  buttonPress: () {},
                ),
              ],
            ),
          ),
          TitleWithSeeAll(title: 'Most Liked', press: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MusicCard(
                  title: 'Come Together',
                  artist: 'The Beatles',
                  cardPress: () {},
                  buttonPress: () {},
                ),
                MusicCard(
                  title: 'Come Together',
                  artist: 'The Beatles',
                  cardPress: () {},
                  buttonPress: () {},
                ),
                MusicCard(
                  title: 'Come Together',
                  artist: 'The Beatles',
                  cardPress: () {},
                  buttonPress: () {},
                ),
              ],
            ),
          ),
          TitleWithSeeAll(title: 'Recently Played', press: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MusicCard(
                  title: 'Come Together',
                  artist: 'The Beatles',
                  cardPress: () {},
                  buttonPress: () {},
                ),
                MusicCard(
                  title: 'Come Together',
                  artist: 'The Beatles',
                  cardPress: () {},
                  buttonPress: () {},
                ),
                MusicCard(
                  title: 'Come Together',
                  artist: 'The Beatles',
                  cardPress: () {},
                  buttonPress: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TopHeader extends StatelessWidget {
  const TopHeader({
    Key? key,
    this.title = 'Welcome',
    required this.onPress,
  }) : super(key: key);

  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Row(
          children: [
            Expanded(
                child: Text(title,
                    style: TextStyle(
                      fontSize: textTheme.headline5?.fontSize,
                      fontWeight: FontWeight.w900,
                    ))),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.gear,
                size: 22,
                color: dTextColor,
              ),
              onPressed: () => onPress,
            ),
          ],
        ));
  }
}

class MusicCard extends StatelessWidget {
  const MusicCard({
    Key? key,
    required this.cardPress,
    required this.buttonPress,
    this.title = 'Cool Song Name',
    this.artist = 'Cool Artist',
  }) : super(key: key);

  final Function cardPress;
  final Function buttonPress;

  final String title;
  final String artist;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => cardPress,
      child: Container(
          width: 175,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 10,
            left: 8,
            right: 8,
          ),
          decoration: BoxDecoration(
              color: dPrimaryColor.withOpacity(.1),
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(10, 0, 0, 0),
                  offset: Offset(0, 2),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ]),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Image.asset(
                  'assets/images/album_cover.jpg',
                  scale: 0.2,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                          softWrap: false,
                          style: TextStyle(
                            fontSize: textTheme.subtitle1?.fontSize,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0, left: 4.0),
                          child: Text(artist,
                              overflow: TextOverflow.ellipsis,
                              style: textTheme.bodyText1),
                        ),
                      ],
                    )),
                    IconButton(
                      onPressed: () => buttonPress,
                      icon: FaIcon(
                        FontAwesomeIcons.play,
                        size: 22,
                        color: dTextColor,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class TitleWithSeeAll extends StatelessWidget {
  const TitleWithSeeAll({
    Key? key,
    this.title = 'Title',
    required this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(title,
                style: TextStyle(
                  fontSize: textTheme.headline6?.fontSize,
                  fontWeight: FontWeight.w900,
                )),
          ),
          TextButton(
            onPressed: () => press,
            child: Text('See all', style: textTheme.bodyText2),
          ),
        ],
      ),
    );
  }
}
