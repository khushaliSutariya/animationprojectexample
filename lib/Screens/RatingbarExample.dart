import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingbarExample extends StatefulWidget {
  const RatingbarExample({Key? key}) : super(key: key);

  @override
  State<RatingbarExample> createState() => _RatingbarExampleState();
}

class _RatingbarExampleState extends State<RatingbarExample> {
  IconData? _selectedIcon;
  double rating = 3 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ratingbar")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Rating = '+'$rating',
                  style: TextStyle(fontSize: 22))),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          RatingBar(
            initialRating: 3,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            ratingWidget: RatingWidget(
              full: Icon(
                _selectedIcon ?? Icons.star,
                color: Colors.amber,
              ),
              half: Icon(Icons.star),
              empty: Icon(Icons.star),
            ),
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            onRatingUpdate: (value) {
              print(rating);
              setState(() {
                rating = value ;
              });
            },
          ),
          Row(
            children: [
              Text("5"),
              SizedBox(
                width: 10.0,
              ),
              Stack(
                children: [
                  Container(
                    height: 10.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey),
                  ),
                  Container(
                    height: 10.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.black),
                  ),

                ],
              )
            ],
          ),
          Row(
            children: [
              Text("4"),
              SizedBox(
                width: 10.0,
              ),
              Container(
                height: 10.0,
                width: 150.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey.shade200),
              )
            ],
          ),
          Row(
            children: [
              Text("3"),
              SizedBox(
                width: 10.0,
              ),
              Container(
                height: 10.0,
                width: 150.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey.shade200),
              )
            ],
          ),
          Row(
            children: [
              Text("2"),
              SizedBox(
                width: 10.0,
              ),
              Container(
                height: 10.0,
                width: 150.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey.shade200),
              )
            ],
          ),
          Row(
            children: [
              Text("1"),
              SizedBox(
                width: 10.0,
              ),
              Container(
                height: 10.0,
                width: 150.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey.shade200),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
