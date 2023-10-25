import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(
    home: Home_ffz(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home_ffz extends StatefulWidget {


  @override
  State<Home_ffz> createState() => _Home_ffzState();
}
var titles=[
  'OFFERS',
  'VEGETABLES',
  'FRUITS',
  'Exotic',
  'FRESH CUTS',
  'NUTRITION CHARGERS',
  'PACKED FLAVORS',
  'GOURMET SALADS'
];

var img=[

  'https://media.istockphoto.com/id/1140789874/photo/special-offer-text-from-wooden-blocks.webp?s=2048x2048&w=is&k=20&c=abFSPD7sfdtPHdDEeqL4eWOslM74xa1BOOLDZHzgjP0=',
  'https://media.istockphoto.com/id/171589415/photo/tomatoes.jpg?s=2048x2048&w=is&k=20&c=ARlMI5Wl7FoxCDA2e2H1L-XhbocNjQmHsq6KwpNHg6k=',
  'https://media.istockphoto.com/id/476953636/photo/fresh-fruit-salad.jpg?s=612x612&w=is&k=20&c=vNHuyYIltq0qWmb4LUIt8zMmojqbnrVuiAmB9WSPzxY=',
  'https://media.istockphoto.com/id/183300149/photo/broccoli.jpg?s=2048x2048&w=is&k=20&c=iAXEw4BSHc1pdjfdLtKKbcTyhgtROdpooETzFt8D3IU=',
  'https://images.unsplash.com/photo-1598295309854-cfa5819004d8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80',
  'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
  'https://images.unsplash.com/photo-1596040033229-a9821ebd058d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
  'https://media.istockphoto.com/id/1395140920/photo/peach-blueberry-and-arugula-fresh-fruit-salad-with-cheese-and-almond-nuts-top-view.jpg?s=612x612&w=is&k=20&c=54lRK9ASSJ5GZOzHhEkprM39eHQ0chbwJR3F858VS_Y='
];
class _Home_ffzState extends State<Home_ffz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.greenAccent[700],
            pinned: false,
            floating: true,
            title: Text('FARMERS FRESH ZONE',
              style: GoogleFonts.mohave(fontWeight: FontWeight.bold),),
            actions: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.location_on_outlined),
                SizedBox(width: 5,),
                Text('Kochi', style: TextStyle(fontSize: 18),),
                Icon(Icons.keyboard_arrow_down)
              ],),
            )
            ],

            bottom: AppBar(
              backgroundColor: Colors.greenAccent[700],
              title: Container(height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: 'Search for Vegetables, Fruits..',
                      prefixIcon: Icon(Icons.search)
                  ),
                ),
              ),
            ),
          ),


          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) =>
                  Container(
                    child: CarouselSlider(items: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage(
                                'https://c8.alamy.com/comp/EMD1XX/best-price-guarantee-label-EMD1XX.jpg'),
                                fit: BoxFit.contain)
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmLpW5gZpVUixOOXSiNl_Gn41thty2yqZupQ&usqp=CAU'),
                                fit: BoxFit.contain)
                        ),
                      )
                    ], options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction: 1,
                        height: 200,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(seconds: 2)
                    )),
                  ),
                  childCount: 1
              )
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
              childCount: 1, (context, index) =>
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 100,
                  width: 250,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 15),
                        child: Container(
                          height: 100, width: 75,
                          decoration: BoxDecoration(
                          ),
                          child: Column(
                            children: [
                              Image(image: NetworkImage(
                                  'https://media.istockphoto.com/id/159756787/photo/stopwatch-front-view.webp?b=1&s=170667a&w=0&k=20&c=IdPTTFlxp-6L-4WHV00s3jTYvs6SHAj6NGGRxrQZ8kk=')),
                              Text('Fast Delivery', style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60, right: 15),
                        child: Container(
                          height: 70, width: 75,
                          decoration: BoxDecoration(
                          ),
                          child: Column(
                            children: [
                              Image(image: NetworkImage(
                                  'https://media.istockphoto.com/id/1349047104/photo/cartoon-character-hand-holds-smart-phone.jpg?s=2048x2048&w=is&k=20&c=lT39XlN1XBLJ1kYk0JsOIuH4cqWP-3rMtzsa3nmBIXE=')),
                              Text('TRACKING', style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80,),
                        child: Container(
                          height: 90, width: 75,
                          decoration: BoxDecoration(
                          ),
                          child: Column(
                            children: [
                              Image(image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwgSzSPogA95lwe4mla8WmnFmmmeZ3nDKA5g&usqp=CAU')),
                              SizedBox(height: 20,),
                              Text('FRESH', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 8),)
                            ],
                          ),
                        ),
                      )
                    ],

                  ),
                ),
              ))),
          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Shop by category',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                if (index == 0) {
                  return GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: 8,
                    // Number of images
                    itemBuilder: (BuildContext context, int gridIndex) {
                      return Card(
                        child: Column(
                          children: [
                            Image.network(img[gridIndex]),
                            // Use different image URLs
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(titles[gridIndex]),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return null; // Return null for other items in the SliverList
                }
              },
              childCount: 1, // You only want one GridView
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
              childCount: 1, (context, index) =>
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9uhQIFxnzj9mOz6mgB-IO-d0zvFVbGdmVMg&usqp=CAU'),
                          fit: BoxFit.fitWidth)
                  ),
                ),
              ))),


        ],
      ),
    );
  }}