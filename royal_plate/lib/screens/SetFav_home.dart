import 'package:royal_plate/constants/colors.dart';
import 'package:royal_plate/model/set.dart';
import 'package:royal_plate/model/set_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SetFavouritehome extends StatefulWidget {
  const SetFavouritehome({super.key});

  @override
  State<SetFavouritehome> createState() => _SetFavouritehomeState();
}

class _SetFavouritehomeState extends State<SetFavouritehome> {
  final setlist = SetFavourite.setList();
  List<SetFavourite> _foundItem = [];
  final _setController = TextEditingController();

  @override
  void initstate() {
    _foundItem = setlist;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                SearchBox(),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 22, bottom: 20),
                        child: const Text(
                          'Your Favourites',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      ),
                      for (SetFavourite setFavourite in _foundItem.reversed)
                        SetItems(
                          setFavourite: setFavourite,
                          OnDeleteItem: _deleteitem,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: _setController,
                    decoration: const InputDecoration(
                        hintText: 'Add A new Favourite',
                        border: InputBorder.none),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 20,
                  right: 20,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    _addItem(_setController.text);
                  },
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: tdBlue,
                    minimumSize: Size(60, 60),
                    elevation: 10,
                  ),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }

// To delete Item
  void _deleteitem(String id) {
    setState(() {
      setlist.removeWhere((item) => item.id == id);
    });
  }

// To Add Item
  void _addItem(String setFavourite) {
    setState(() {
      setlist.add(SetFavourite(
          id: DateTime.now().microsecondsSinceEpoch.toString(),
          SetFavouriteText: setFavourite));
    });
    _setController.clear();
  }

// To Search Item
  void _runFliter(String enteredKeyword) {
    List<SetFavourite> results = [];
    if (enteredKeyword.isEmpty) {
      results = setlist;
    } else {
      results = setlist
          .where((item) => item.SetFavouriteText.toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundItem = results;
    });
  }

  Widget SearchBox() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        onChanged: (value) => _runFliter(value),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(13),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 20,
          ),
          hintText: 'Search',
          hintStyle: TextStyle(color: tdGrey),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.deepPurple,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('DANODALDS',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.greenAccent, fontWeight: FontWeight.bold)),
          const SizedBox(
            width: 100,
          ),
          Container(
            height: 50,
            width: 50,
            child: ClipRRect(
              child: Image.asset('images/taste.jpeg'),
            ),
          )
        ],
      ),
    );
  }
}
