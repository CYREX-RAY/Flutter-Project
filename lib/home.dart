import 'package:flutter/material.dart';

class Screen1  extends StatefulWidget {


  @override
  _Home createState() => _Home();
}




class _Home extends State<Screen1> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          title: Text('Profile',
            style: TextStyle(
                color: Colors.black
            ),),
          backgroundColor: Color(0xffE5E5E5),
          actions: <Widget>[
            Ink(
              decoration:
              ShapeDecoration(shape: CircleBorder(), color: Color.fromRGBO(
                  205, 198, 229, 1.0)),
              child: IconButton(
                icon: Icon(
                  Icons.add_alert_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
            )
          ],
        ),
      ),
      body: Homepage(),
      bottomNavigationBar: ClipRRect(
        borderRadius:BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)
        )
      ,
        child: BottomNavigationBar(
          
          items: <BottomNavigationBarItem>[

            BottomNavigationBarItem(
                icon: Icon(Icons.home),
              title: Text(""),
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              title: Text(""),
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text(""),
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(""),
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}



class Homepage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('images/profile.png'),
                            )
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 23),
                            child: Text("Anand Kumar",style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                            ),),
                          ),
                          SizedBox(
                            height: 10,
                          )
                          ,
                          Container(
                            child: Center(
                              child: Text(
                                "Edit Profile",
                                style: TextStyle(fontSize: 13,decoration: TextDecoration.underline,),
                              ),
                            ),
                          )
                        ],
                      )

                    ],
                  ),
                ),


              ))
          ,
          SizedBox(
            height: 15.0,
          ),
          Expanded(
              flex: 1,

              child: Row(


                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                          color: Color(0xffF1F5FF),
                          cardChild: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 14.0,
                                  backgroundImage: AssetImage('images/inch.png'),
                                ),
                                SizedBox(
                                  height: 12.0,
                                ),
                                Text('Size & Fit'),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Text('Your Size & fit preferences ',
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.grey[800]
                                  ),),

                              ],
                            ),
                          )
                      )

                  ),
                  Expanded(
                      child: ReusableCard(
                          color: Color(0xffFEE1E1),
                          cardChild: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: <Widget>[
                                CircleAvatar(
                                  radius: 14.0,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('images/mustaches.png'),
                                ),
                                SizedBox(
                                  height: 12.0,
                                ),
                                Text('Style'),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Text('Your Style Preferences',
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.grey[800]
                                  ),),

                              ],
                            ),
                          )
                      )
                  ),
                  Expanded(
                      child: ReusableCard(
                          color: Color(0xffFDECD2),
                          cardChild: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 14.0,
                                  backgroundImage: AssetImage('images/hanger.png'),
                                ),
                                SizedBox(
                                  height: 12.0,
                                ),
                                Text('Closet'),
                                SizedBox(
                                  height:6.0,
                                ),
                                Text('Your Closet',
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.grey[800]
                                  ),

                                ),

                              ],
                            ),
                          )
                      )
                  ),

                ],
              )
          ),
          Expanded(
              flex: 3,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50.0,
                      ),
                      Row(
                        children: [
                          Icon(
                              Icons.add_shopping_cart
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("All Purchases",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),)

                        ],

                      ),
                      SizedBox(
                        height: 18.0,
                      ),

                      Row(
                        children: [
                          Icon(
                              Icons.info_outline
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("FAQs",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),)

                        ],


                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Row(
                        children: [
                          Icon(
                              Icons.add
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("Exchange & Return Policy",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),)

                        ],


                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Row(
                        children: [
                          Icon(
                              Icons.lock_outline
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("Privacy Policy",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15

                          ),)

                        ],

                      ),
                      SizedBox(
                        height: 18.0,
                      ),

                      Row(
                        children: [
                          Icon(
                              Icons.add
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("About Us",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),)

                        ],

                      ),
                      SizedBox(
                        height: 18,
                      )
                      ,
                      Container(



                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffF2FFEE),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 80.0),
                          child: Row(


                            children: [
                              Icon(
                                  Icons.headset
                              ),
                              SizedBox(width: 20,),
                              Text("Need Assistance?",
                              style: TextStyle(
                                fontSize: 17
                              ),)
                            ],
                          ),
                        ),
                      )


                    ],
                  ),
                ),

              )
          )


        ],
    ),
      );
  }
}


class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color,this.cardChild});
  final Color color;
  final Widget cardChild;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
