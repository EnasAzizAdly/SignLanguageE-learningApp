import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LessonsPages extends StatelessWidget {
  const LessonsPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return /*Column(
      children: [
        Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            height: 100,
            child:*/
        ListView(
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Food",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/food.jpg"),
          subtitle: Text("open vedio"),
          trailing: Icon(Icons.open_in_new_outlined),
          tileColor: Colors.white,
          onTap: () {
            Navigator.of(context).pushNamed("FoodPage");
            //FoodPage();
          },
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Objects",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/objects-icon.png"),
          trailing: Icon(Icons.open_in_new_outlined),
          subtitle: Text("coming soon"),
          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Animals",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/Animals.png"),
          trailing: Icon(Icons.open_in_new_outlined),
          subtitle: Text("coming soon"),

          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Clock",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/clock.png"),
          trailing: Icon(Icons.open_in_new_outlined),
          subtitle: Text("coming soon"),

          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Cloths",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/cloths.jpg"),
          trailing: Icon(Icons.open_in_new_outlined),
          subtitle: Text("coming soon"),

          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Colors",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/colors.jpg"),
          trailing: Icon(Icons.open_in_new_outlined),
          subtitle: Text("coming soon"),

          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Countries",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/countries.jpg"),
          trailing: Icon(Icons.open_in_new_outlined),
          subtitle: Text("coming soon"),

          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Electronics",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/electronics.jpg"),
          trailing: Icon(Icons.open_in_new_outlined),
          subtitle: Text("coming soon"),

          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Emotions",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/emotions.png"),
          subtitle: Text("coming soon"),

          trailing: Icon(Icons.open_in_new_outlined),
          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Family",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/family.png"),
          trailing: Icon(Icons.open_in_new_outlined),
          subtitle: Text("coming soon"),

          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Fanntsy",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/Fantsy.png"),
          trailing: Icon(Icons.open_in_new_outlined),
          subtitle: Text("coming soon"),

          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Greetings",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/Greatings.jpg"),
          trailing: Icon(Icons.open_in_new_outlined),
          subtitle: Text("coming soon"),

          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Jobs",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/jobs.jpg"),
          subtitle: Text("coming soon"),

          trailing: Icon(Icons.open_in_new_outlined),
          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Objects",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/objects-icon.png"),
          trailing: Icon(Icons.open_in_new_outlined),
          subtitle: Text("coming soon"),

          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Rooms",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/rooms.jpg"),
          trailing: Icon(Icons.open_in_new_outlined),
          subtitle: Text("coming soon"),

          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Seasons",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/seasons.jpg"),
          trailing: Icon(Icons.open_in_new_outlined),
          subtitle: Text("coming soon"),

          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Sports",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/sports.png"),
          trailing: Icon(Icons.open_in_new_outlined),
          subtitle: Text("coming soon"),

          tileColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: 20),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, top: 10),
          title: Text(
            "Vehicles",
            style: TextStyle(color: Colors.red),
          ),
          leading: Image.asset("Images/vehicles.jpg"),
          trailing: Icon(Icons.open_in_new_outlined),
          subtitle: Text("coming soon"),

          tileColor: Colors.white,
          onTap: () {},
        ),
      ],
    );
  }
}
