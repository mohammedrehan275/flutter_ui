import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_app/models/destination_model.dart';

class DestinationSCreen extends StatefulWidget {
  final Destination destination;

  DestinationSCreen({required this.destination});

  @override
  _DestinationSCreenState createState() => _DestinationSCreenState();
}

class _DestinationSCreenState extends State<DestinationSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    )
                  ]),
              child: Hero(
                tag: widget.destination.imageUrl,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(
                    image: AssetImage(widget.destination.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 40.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30.0,
                    color: Colors.black,
                    onPressed: () => Navigator.pop(context),
                  ),
                  Row(children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.search),
                      iconSize: 30.0,
                      color: Colors.black,
                      onPressed: () => Navigator.pop(context),
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.sortAmountDown),
                      iconSize: 25.0,
                      color: Colors.black,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ])
                ],
              ),
            ),
            Positioned(
              left: 20.0,
              bottom: 20.0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.destination.city,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                        )),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 10.0,
                          color: Colors.white70,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(widget.destination.country,
                            style: TextStyle(
                              color: Colors.white70,
                            )),
                      ],
                    ),
                  ]),
            ),
            Positioned(
              right: 20.0,
              bottom: 20.0,
              child: Icon(
                Icons.location_on,
                color: Colors.white70,
                size: 25.0,
              ),
            )
          ],
        )
      ],
    ));
  }
}
