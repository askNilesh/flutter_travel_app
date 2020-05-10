import 'package:flutter/material.dart';
import 'package:flutter_travel_app/ratingbar.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SearchPage();
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var filterList = [
    'Hotels',
    'Restaurants',
    'Food & bar',
    'Local Culture',
    'Spa & Wellness',
    'Tours',
    'Others'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        title: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey.withOpacity(0.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('New York city',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    Icon(Icons.keyboard_arrow_down, color: Colors.black)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          getFilterListView(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Text('Top Attractions in New York City',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                Text('more')
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          getTopAttractionListView(),
          SizedBox(
            height: 0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Text('Top hotels in New York City',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                Text('more')
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          getTopHotels(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Text('Top hotels in New York City',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                Text('more')
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          getWishListGridView()
        ],
      )),
    );
  }

  getTopAttractionListView() {
    return Container(
      height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: 20,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(5.0),
            height: 250,
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/trip.png')),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  height: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('The Metropolitan Museum of Art'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 5),
                  child: RatingBar(
                    rating: 3.5,
                    color: Colors.green,
                    onRatingChanged: (rating) {},
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  getTopHotels() {
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: 20,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/hotel.jpeg')),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SizedBox(
                      width: 100,
                      child: Text(
                        'Hotel Name',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      )),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  getFilterListView() {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 90,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5.0),
                        child: Text(
                          'All',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 70),
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                  child: ListView.builder(
                    itemCount: filterList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(5.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.2),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                filterList[index],
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  getWishListGridView() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: List<Widget>.generate(6, (index) {
          return Container(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/trip.png',
                    ),
                    fit: BoxFit.cover),
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Place Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
