import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'nav.dart';

class CarouselScreen extends StatefulWidget {
  final int index;
  final List<String> imageTitle;
  final List<String> imagePainter;
  final List<Widget> imageWidgets; // This could be a list of URLs or asset paths.
  final List<String> imageDescriptions; // List of descriptions or any text related to each image.

  CarouselScreen({
    required this.index,
    required this.imageWidgets,
    required this.imageDescriptions,
    required this.imageTitle,
    required this.imagePainter,
  });

  @override
  _CarouselScreenState createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.index; // Start with the index passed from the constructor.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: CarouselSlider(
              options: CarouselOptions(
                height: 400.0,
                initialPage: widget.index,
                enlargeCenterPage: true,
                autoPlay: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index; // Update the current index on page change.
                  });
                },
              ),
              items: widget.imageWidgets.map((widget) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: widget, // Display the image widget.
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
                widget.imageTitle[_currentIndex], // Display the title based on the current index.
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold ,
                  fontFamily: 'Arial' ,
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(


              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  textAlign: TextAlign.left,
                  widget.imagePainter[_currentIndex], // Display the painter based on the current index.
                  style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),

            child: Text(
              widget.imageDescriptions[_currentIndex], // Display the description based on the current index.
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }

}