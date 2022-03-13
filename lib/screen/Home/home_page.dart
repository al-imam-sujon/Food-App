import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget singleProduct(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: 280,
      width: 200,
      decoration: BoxDecoration(
          color: Color(0xfff1dfdf),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.asset('assetes/basil.png'),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fresh Basil',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '50\$/50 Gram',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 10,top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius:
                                  BorderRadius.circular(12)
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 3),
                                    child: Expanded(
                                        child: Text('50 Gram',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        )
                                    ),
                                  ),
                                  Center(
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius:
                                    BorderRadius.circular(12)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.remove,size: 20,),
                                    SizedBox(width: 5,),
                                    Text('1',style: TextStyle(fontSize: 20),),
                                    SizedBox(width: 5,),
                                    Icon(Icons.add,size: 20,)
                                  ],
                                ),

                              )
                          )
                        ],
                      ),
                    ),
                  ],
                ),)

          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd5cbcb),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffceca07),
        title: Text(
          'Home',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Color(0xff5da017),
            child: Icon(
              Icons.search,
              size: 25,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Color(0xff5da017),
              child: Icon(
                Icons.shopping_cart,
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: ListView(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://ak.picdn.net/shutterstock/videos/5039891/thumb/1.jpg')),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 185),
                              child: Container(
                                height: 50,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Color(0xffceca07),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(40),
                                      bottomLeft: Radius.circular(20),
                                      topLeft: Radius.circular(20),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Vage',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          shadows: [
                                            BoxShadow(
                                                color: Colors.green,
                                                blurRadius: 10,
                                                offset: Offset(3, 3))
                                          ])),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 100, top: 5),
                              child: Text(
                                '30% Off',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                'On all vagetable products',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Herbs Seasonings',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fresh Fruits',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
