import 'package:royal_plate/constants/colors.dart';
import 'package:royal_plate/model/set.dart';
import 'package:flutter/material.dart';

class SetItems extends StatelessWidget {
  final SetFavourite setFavourite;
  final OnDeleteItem;
  const SetItems(
      {super.key, required this.setFavourite, required this.OnDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        tileColor: Colors.white,
        title: Text(
          setFavourite.SetFavouriteText,
          style: const TextStyle(
            fontSize: 20,
            color: tdBlack,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {
              OnDeleteItem(setFavourite.id);
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Item Deleted"),
                  content: const Text("You have deleted an item"),
                ),
              );
            },
            icon: Icon(Icons.delete),
            color: Colors.white,
            iconSize: 18,
          ),
        ),
      ),
    );
  }
}
