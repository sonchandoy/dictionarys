import 'dart:ui';
import 'package:dictionary/screen/banner/components/search_field.dart';
import 'package:dictionary/screen/search/components/category.dart';
import 'package:dictionary/screen/searching/searching_screen.dart';
import 'package:flutter/material.dart';

class RecenSearch extends StatefulWidget {
  const RecenSearch({Key? key}) : super(key: key);

  @override
  State<RecenSearch> createState() => _RecenSearchState();
}

class _RecenSearchState extends State<RecenSearch> {
  List<String> foodList = [
    'Abandance',
    'Abandon',
    'Abandon Diverst',
    'Abandoned Property',
    'Food',
    '',
  ];
  List<String>? foodListSearch;
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }

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
        Icons.home_filled,
        color: Colors.teal,
      ),
      title: const Text(
        "OneDict",
        style: TextStyle(
          fontSize: 18,
          color: Colors.teal,
        ),
      ),
      actions: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Searching()),
            );
          },
          child: const Icon(
            Icons.bookmark_border,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 15),
        // Icon(Icons.settings),
      ],
    );
  }

  Widget get _buildBody {
    return Container(
      color: Colors.white,
      //padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: const SearchField(),
          ),
          Container(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Recen Search",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "Clear All",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Abandance'),
                Icon(
                  Icons.cancel,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 1,
            color: Colors.grey,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Abandon'),
                Icon(
                  Icons.cancel,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 1,
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Abandon Diverst'),
                Icon(
                  Icons.cancel,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 1,
            color: Colors.grey,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Abandoned Property'),
                Icon(
                  Icons.cancel,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
