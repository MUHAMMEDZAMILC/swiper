import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Card Swiper'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  

  @override
  Widget build(BuildContext context) {
   List cars = [
    'https://imgsgdibzr.gaadibazaar.in/vehicle-images/5d002b7e-6565-4586-a5c0-9327411f39f9.png',
    'https://assets.nexuspointapex.co.uk/resize/1024/tenant_ff5dd0aaad1c44e6909d6ce92e6670c4/media/302312/jaguar-xe-20i-300-sport-awd-mh08kjh-1-6409be40b094c.jpg',
    'https://images.honestjohn.co.uk/imagecache/url/crop/750x500/https/assets.heycar.co.uk/t_default-export/f_auto/application_assets/vehicles/pictures/fa6a1413601a44469b700a7459fa0848/b9818ca8e5c273746122c9082fc885fd.jpg',
    'https://eu.cdn.autosonshow.tv/5218/projectcambridge/GN19YNA/06_md.jpg'
   ];
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: AppinioSwiper(
        loop: true,
        cardsBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(image: NetworkImage(cars[index]),fit: BoxFit.cover)
              ),
            ),
          );

        }, 
        cardsCount: cars.length)
     
    );
  }
}
