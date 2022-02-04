import 'package:dictionary/screen/search/recen_search_screen.dart';
import 'package:flutter/material.dart';
import 'components/search_field.dart';

class BannerScreen extends StatefulWidget {
  const BannerScreen({Key? key}) : super(key: key);

  @override
  State<BannerScreen> createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {
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
              MaterialPageRoute(
                builder: (context) => const RecenSearch(),
              ),
            );
          },
          child: const Icon(Icons.bookmark_border, color: Colors.black),
        ),
        const SizedBox(width: 15),
        // Icon(Icons.settings),
      ],
    );
  }

  Widget get _buildBody {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          const SearchField(),
          Container(
            height: 20,
          ),
          Column(
            children: [
              Image.asset(
                "assets/icons/Group3340@2x.png",
                height: 300,
                width: 250,
              ),
              const Text(
                "English Khmer Polytechnic Dict.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 10,
              ),
              const Text(
                "While the Us food company has faced large backlash after",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "it was revealed they had made donations.",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
