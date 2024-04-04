import 'package:flutter/material.dart';
// import 'package:flutter_application_1/carousel_screen.dart';
import 'CarouselScreen.dart';

import 'CarouselScreen.dart'; // Update with your correct import

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
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;// Assume these are your descriptions for each image
    final List<String> networkImageTitle= ['network Title1' , 'network Title2' , 'network Title 3' , 'network Title 4'];
    final List<String> localImageTitle= ['local title 1' , 'local title 2' , 'local title 3' , 'local title 4'];
    final List<String> localImagePainter=['local painter 1' , 'local painter 2' , 'local painter 3' , 'local painter 4'];
    final List<String> networkImagePainter=['network painter 1' , 'network painter 2' , 'network painter 3' , 'network painter 4'];



    final List<String> localImageDescriptions = [
      'Local Image 1 \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus.',
      'Local Image 2 \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendis',
      'Local Image 3 \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lec',
      'Local Image 4 \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus.',
    ];

    final List<String> networkImageDescriptions = [
      'network Image 1 \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus.',
      'network Image 2 \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendis',
      'network Image 3 \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lec',
      'network Image 4 \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus.',
    ];

    List<String> allImages = [...localImages, ...networkImages]; // Combine both lists for grid

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: (itemWidth / itemHeight),
      children: List.generate(allImages.length, (index) {
        bool isNetworkImage = index >= localImages.length;
        String imageUrl = allImages[index];

        Widget imageWidget = isNetworkImage
            ? Image.network(imageUrl, fit: BoxFit.cover)
            : Image.asset(imageUrl, fit: BoxFit.cover);

        return GestureDetector(
          onTap: () {
            List<String> imagesToShow;
            List<String> descriptionsToShow; // Declare a variable for descriptions
            int adjustedIndex = index;

            if (index >= localImages.length) {
              adjustedIndex = index - localImages.length;
              imagesToShow = networkImages;
              descriptionsToShow = networkImageDescriptions; // Use network image descriptions
            } else {
              imagesToShow = localImages;
              descriptionsToShow = localImageDescriptions; // Use local image descriptions
            };

            // Modify the navigation to pass imageDescriptions
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CarouselScreen(
                  index: adjustedIndex,
                  imageWidgets: imagesToShow.map((imgUrl) => imgUrl.startsWith('http')
                      ? Image.network(imgUrl, fit: BoxFit.cover)
                      : Image.asset(imgUrl, fit: BoxFit.cover)
                  ).toList(),
                  imageDescriptions: descriptionsToShow,
                  imageTitle: isNetworkImage ? networkImageTitle : localImageTitle, // Adjust this
                  imagePainter: isNetworkImage ? networkImagePainter : localImagePainter, // Adjust this
                ),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 10.0),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: imageWidget,
            ),
          ),
        );
      }),
    );
  }
}