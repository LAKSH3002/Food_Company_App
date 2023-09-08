class SetFavourite
{
  String id;
  String SetFavouriteText;

  SetFavourite({
    required this.id,
    required this.SetFavouriteText,
  });

  // ignore: non_constant_identifier_names
  static List<SetFavourite> setList()
  {
    return[
      SetFavourite(id: '01', SetFavouriteText: 'Cheese Dosa'),
      SetFavourite(id: '02', SetFavouriteText: 'Paneer Chilli Roll'),
      SetFavourite(id: '03', SetFavouriteText: 'Mexican Pizza',),
      SetFavourite(id: '04', SetFavouriteText: 'Fried rice',),
      SetFavourite(id: '05', SetFavouriteText: 'Peri Peri Fries',),
      SetFavourite(id: '06', SetFavouriteText: 'Tomato Uttapa',),
    ];
  }
}