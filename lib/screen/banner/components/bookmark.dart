import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({Key? key}) : super(key: key);

  @override
  _BookmarkState createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  List<String> bookmarklists = [
    'Abandance',
    'Abandon',
    'Abandon Diverst',
    'Abandoned Property',
    'Abandance',
    'Abandon',
    'Abandon Diverst',
    'Abandoned Property',
    '',
    '',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
    );
  }

  AppBar get _buildAppBar {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      title: const Text(
        "Bookmarks",
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget get _buildBody {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: bookmarklists.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(
                  bookmarklists[index],
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                trailing: const Icon(
                  Icons.bookmark,
                  color: Colors.teal,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 15,
                ),
                height: 1,
                color: Colors.grey,
              ),
            ],
          );
        },
      ),
    );
  }
}
