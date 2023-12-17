import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main()=>runApp(
MaterialApp(
home: slider(),
  debugShowCheckedModeBanner: false,
),
);
final List  images=[
'https://www.audi.com/content/dam/gbp2/experience-audi/audi-sport/audi-racing-models/landingpage/1920x1080_A215400_large.jpg?imwidth=1920&imdensity=1',
'https://www.supercars.net/blog/wp-content/uploads/2020/12/Lamborghini-Race-Cars.png',
  'https://wallpaperaccess.com/full/3210711.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa9Rjj18Vw7uIRSYMDj7rW65hcstTM0uM1tDHbNQrVQUjAyEXMo5oAqbeGOj-NljOIotQ&usqp=CAU',
  'https://www.tuvie.com/wp-content/uploads/mclaren-p1-gtr-racing-car1.jpg',


];
class slider extends StatelessWidget {
  const slider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('carousel slider '),
        backgroundColor: Colors.red,

      ),
      body:Center(

            child:CarouselSlider(
              options: CarouselOptions(
                height: 700.0,
                autoPlay: true
              ),
              items:images.map((imagepath) {
                return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.network(imagepath));
                    }
                );
              }).toList(),
            ),
      ),
      );




  }
}
