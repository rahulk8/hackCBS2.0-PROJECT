import 'package:flutter/material.dart';
import 'package:life_grace1/loginScreen.dart';
import 'doctorsScreen.dart';
//void main() => runApp(new MyApp4());

class checkAuth extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return checkAuthState();
  }
}

class checkAuthState extends State<checkAuth>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;
  var isLoggedIn;

  @override
  void initState() {
    isLoggedIn = false;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MyApp4();
  }
}

class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;
  String email = "";
  bool isLoggedIn;
  String password = "";
  String photoUrl = "";

  String _errorMessage = "";
  var _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    animationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 1200));
    animation = new Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return new Scaffold(
              //backgroundColor: const Color(0xFFE58958),
              resizeToAvoidBottomPadding: false,
              body: Transform(
                  transform: Matrix4.translationValues(
                      animation.value * width, 0.0, 0.0),
                  child: Container(
                      //height: 350.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xFF77A1D3),
                              const Color(0xFF79CBCA),
                              const Color(0xFFA6FFCB),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          )),
                      child: Form(
                        key: _formKey,
                        child: ListView(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          15.0, 90.0, 0.0, 0.0),
                                      child: Text('UNIMED',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily:
                                                  'PlayfairDisplay Regular',
                                              fontSize: 60.0,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    /* Container(
                                      padding: EdgeInsets.fromLTRB(
                                          16.0, 170.0, 0.0, 0.0),
                                      child: Text('Sigin',
                                          style: TextStyle(
                                              fontSize: 60.0,
                                              fontFamily:
                                                  'PlayfairDisplay Regular',
                                              fontWeight: FontWeight.bold)),
                                    ), */
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          220.0, 175.0, 0.0, 0.0),
                                      child: Text('',
                                          style: TextStyle(
                                              fontSize: 80.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green)),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Container(
                                height: 450.0,
                                child: Card(
                                    color: Color(0x00C3E1AC),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    elevation: 50.0,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          top: 35.0, left: 20.0, right: 20.0),
                                      child: Column(children: <Widget>[
                                        SizedBox(
                                          height: 100.0,
                                        ),
                                        Container(
                                          width: (MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              80.0),
                                          height: 60.0,
                                          child: RaisedButton.icon(
                                            elevation: 15.0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0)),
                                            color: Color.fromRGBO(
                                                59, 89, 152, 1.0),
                                            label: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20.0,
                                                  top: 10.0,
                                                  bottom: 10.0),
                                              child: Text(
                                                "Login as Doctor",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'PlayfairDisplay Regular',
                                                    fontSize: 20.0),
                                              ),
                                            ),
                                            onPressed:  ()
                                            {
 Navigator.of(context).pushReplacement(
                                                  MaterialPageRoute(
                                                    builder: (BuildContext context)
                                                    {
                                                     return DoctorScreen(); 
                                                    }
                                                  )
                                                );
                                            }
                                            ,
                                            icon: Image.network(
                                              'http://www.stickpng.com/assets/images/584ac2d03ac3a570f94a666d.png',
                                              width: 30.0,
                                              height: 30.0,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Container(
                                          width: (MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              80.0),
                                          height: 60.0,
                                          child: RaisedButton.icon(
                                              elevation: 15.0,
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0)),
                                              onPressed: () {
                                                Navigator.of(context).pushReplacement(
                                                  MaterialPageRoute(
                                                    builder: (BuildContext context)
                                                    {
                                                     return LoginScreen(); 
                                                    }
                                                  )
                                                );
                                              },
                                              icon: Image.network(
                                                'https://image.flaticon.com/teams/slug/google.jpg',
                                                width: 30.0,
                                                height: 30.0,
                                              ),
                                              label: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20.0,
                                                    top: 10.0,
                                                    bottom: 10.0),
                                                child: Text(
                                                  "Login as Patient ",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontFamily:
                                                          'PlayfairDisplay Regular',
                                                      fontSize: 20.0),
                                                ),
                                              )),
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        Container(
                                          width: (MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              80.0),
                                          height: 60.0,
                                          child: RaisedButton.icon(
                                            elevation: 15.0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0)),
                                            color: Color.fromRGBO(
                                                199, 21, 133, 1.0),
                                            label: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20.0,
                                                  top: 10.0,
                                                  bottom: 10.0),
                                              child: Text(
                                                "Login as Insurer",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'PlayfairDisplay Regular',
                                                    fontSize: 20.0),
                                              ),
                                            ),
                                            onPressed: ()
                                            {
                                                Navigator.of(context).pushReplacement(
                                                  MaterialPageRoute(
                                                    builder: (BuildContext context)
                                                    {
                                                     return LoginScreen(); 
                                                    }
                                                  )
                                                );
                                            }
                                            ,
                                            icon: Image.network(
                                              'https://www.creativefabrica.com/wp-content/uploads/2018/12/Insurance-icon-by-back1design1-1-580x384.png',
                                              width: 30.0,
                                              height: 30.0,
                                            ),
                                          ),
                                        ),
                                      ]),
                                    )),
                              ),
                            ]),
                      ))));
        });
  }
}
