import 'package:flutter/material.dart';

class CardModel {
  String type;
  int data;
  String newData;
  CardModel(this.type, this.data, this.newData);

  Container card1() {
    return Container(
      color: Colors.grey[100],
      width: 178,
      padding: EdgeInsets.all(7),
      child: Column(
        children: <Widget>[
          Text(
            "$type",
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$newData",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$data",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
        ],
      ),
    );
  }

  Container card2() {
    return Container(
      color: Colors.grey[100],
      width: 178,
      padding: EdgeInsets.all(7),
      child: Column(
        children: <Widget>[
          Text(
            "$type",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$newData",
            style: TextStyle(color: Colors.blue),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$data",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
        ],
      ),
    );
  }

  Container card3() {
    return Container(
      color: Colors.grey[100],
      width: 178,
      padding: EdgeInsets.all(7),
      child: Column(
        children: <Widget>[
          Text(
            "$type",
            style: TextStyle(
              color: Colors.green,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$newData",
            style: TextStyle(
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$data",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
        ],
      ),
    );
  }

  Container card4() {
    return Container(
      color: Colors.grey[100],
      width: 178,
      padding: EdgeInsets.all(7),
      child: Column(
        children: <Widget>[
          Text(
            "$type",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$newData",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$data",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
        ],
      ),
    );
  }
}
