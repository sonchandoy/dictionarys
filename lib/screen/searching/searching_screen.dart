import 'package:flutter/material.dart';

class Searching extends StatefulWidget {
  @override
  _SearchingState createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextField(
            controller: _textEditingController,
            decoration: const InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              suffixIcon: Icon(
                Icons.cancel,
                color: Colors.grey,
              ),
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: 'Search',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
            onChanged: (value) {
              setState(
                () {
                  foodListSearch = foodList
                      .where((element) => element.contains(value.toLowerCase()))
                      .toList();
                  if (_textEditingController!.text.isNotEmpty &&
                      foodListSearch!.length == 0) {
                    print('foodListSearch length ${foodListSearch!.length}');
                  }
                },
              );
            },
          ),
        ),
        actions: [
          Container(
            alignment: Alignment.center,
            child: const Text(
              "Cancel",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body:
          _textEditingController!.text.isNotEmpty && foodListSearch!.length == 0
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search_off,
                            size: 160,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'No results found,\nPlease try different keyword',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: _textEditingController!.text.isNotEmpty
                        ? foodListSearch!.length
                        : foodList.length,
                    itemBuilder: (ctx, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              _textEditingController!.text.isNotEmpty
                                  ? foodListSearch![index]
                                  : foodList[index],
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            height: 1.0,
                            color: Colors.grey,
                          ),
                        ],
                      );
                    },
                  ),
                ),
    );
  }
}
