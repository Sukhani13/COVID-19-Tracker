import 'package:COVID19/Models/cardModel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final world;
  HomePage(this.world);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String countryName;

  int confirmed;
  String newConfirmed;
  int deaths;
  String newDeaths;
  int recovered;
  String newRecovered;
  int active;

  Container confirmCard;
  Container activeCard;
  Container recoveredCard;
  Container deceasedCard;

  @override
  void initState() {
    super.initState();
    updateUI();
  }

  void updateUI() {
    setState(() {
      confirmed = (widget.world['Global']['TotalConfirmed']).toInt();
      newConfirmed = (widget.world['Global']['NewConfirmed']).toString();
      deaths = (widget.world['Global']['TotalDeaths']).toInt();
      newDeaths = (deaths = widget.world['Global']['NewDeaths']).toString();
      recovered = (widget.world['Global']['TotalRecovered']).toInt();
      newRecovered = (widget.world['Global']['NewRecovered']).toString();
      active = confirmed - deaths - recovered;
      confirmCard = CardModel('Confirmed', confirmed, '+$newConfirmed').card1();
      activeCard = CardModel('Active', active, '').card2();
      recoveredCard =
          CardModel('Recovered', recovered, '+$newRecovered').card3();
      deceasedCard = CardModel('Deceased', deaths, '+$newDeaths').card4();
    });
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("COVID-19 Tracker"),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(15),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: height * .1,
              ),
              TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Enter country name",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide.none),
                ),
                onChanged: (value) {
                  countryName = value;
                },
              ),
              MaterialButton(
                child: Text("Search"),
                color: Colors.blue[300],
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/country',
                    arguments: countryName,
                  );
                },
              ),
              SizedBox(height: height * .08),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  confirmCard,
                  activeCard,
                ],
              ),
              SizedBox(
                height: height * .08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  recoveredCard,
                  deceasedCard,
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
