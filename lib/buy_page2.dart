import 'package:flutter/material.dart';

class BuyPage2 extends StatefulWidget {
  BuyPage2({Key key}) : super(key: key);

  @override
  _BuyPage2State createState() => _BuyPage2State();
}

class _BuyPage2State extends State<BuyPage2>
    with SingleTickerProviderStateMixin {
  Color _mainColor = Color.fromRGBO(47, 101, 101, 1);
  Color _btnColor = Color.fromRGBO(24, 64, 64, 1);

  String _text =
      'Total relaxation is the secret to enjoying sitting meditation. I sit with my spine upright but not rigid and I relax all the muscles in my body.';

  Size ds;

  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    _animation = CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn);

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    ds = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: _mainColor,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(top: 20, right: 20, bottom: 180),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: _mainColor,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 100, left: 60),
                          child: Text(
                            'Trends Chair & Cushions',
                            style: TextStyle(
                              fontFamily: 'VarelaRound',
                              color: _mainColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 20, left: 60, right: 60, bottom: 20),
                          padding: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey[300], width: 1))),
                          child: Text(
                            _text,
                            style: TextStyle(
                              fontFamily: 'VarelaRound',
                              color: _mainColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60, bottom: 20),
                          child: Text(
                            'Total',
                            style: TextStyle(
                              fontFamily: 'VarelaRound',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: _mainColor,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60, bottom: 30),
                          child: Text(
                            '\$ 499',
                            style: TextStyle(
                              fontFamily: 'VarelaRound',
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: _mainColor,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 60, right: 60, bottom: 20),
                            padding: EdgeInsets.all(20),
                            width: double.infinity,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: _btnColor,
                            ),
                            child: Text(
                              'Buy Now',
                              style: TextStyle(
                                fontFamily: 'VarelaRound',
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 25,
              top: 40,
              child: ScaleTransition(
                scale: _animation,
                alignment: Alignment.center,
                child: Container(
                  width: 300,
                  height: 300,
                  child: Image.asset(
                    'images/chair_ecom_img3.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
