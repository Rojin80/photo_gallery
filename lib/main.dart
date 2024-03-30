import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Grid view'),
        ),
      ),
      body: MyGridView(),
    );
  }
}

class MyGridView extends StatelessWidget {
  final List<String> localImages = [
    '/1.jpg',
    '/2.jpg',
    '/3.jpg',
    '/4.jpg',
  ];
  final List<String> networkImages = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Caspar_David_Friedrich_-_Wanderer_above_the_sea_of_fog.jpg/586px-Caspar_David_Friedrich_-_Wanderer_above_the_sea_of_fog.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/John_Atkinson_Grimshaw_-_A_Wet_Moon%2C_Putney_Road_%281886%29.jpg/1315px-John_Atkinson_Grimshaw_-_A_Wet_Moon%2C_Putney_Road_%281886%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Rogier_van_der_Weyden_-_Portrait_of_a_Woman_with_a_Winged_Bonnet_-_Google_Art_Project.jpg/504px-Rogier_van_der_Weyden_-_Portrait_of_a_Woman_with_a_Winged_Bonnet_-_Google_Art_Project.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Cavalier_soldier_Hals-1624x.jpg/616px-Cavalier_soldier_Hals-1624x.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size ;
    final double itemHeight = (size.height - kToolbarHeight - 24)/3 ;
    final double itemWidth = size.width/2 ;
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: (itemWidth / itemHeight) ,
      children: List.generate(localImages.length + networkImages.length, (index) {
        return Container(
          decoration:BoxDecoration(
            border: Border.all(
              color:Colors.grey ,
              width: 1.0 ,
            ),
            borderRadius : BorderRadius.circular(15.0) ,
          ),
          child: ClipRRect(
            borderRadius : BorderRadius.circular(15.0) ,
            child: index < localImages.length ? Image.asset(localImages[index])
                : Image.network(networkImages[index - localImages.length]),
          ),

        );
      }),
    );
  }
}
