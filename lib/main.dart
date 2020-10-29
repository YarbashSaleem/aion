import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sizeconfig.dart';

void main() => runApp(MaterialApp(
  home: Home()
));
class Home extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          CustomPaint(
            painter:Figure1(),
          ),
          CustomPaint(
            painter:Figure2(),
          ),
          CustomPaint(
            painter: Figure3(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                SizeConfig.blockSizeHorizontal*3,
                SizeConfig.blockSizeVertical*24,
                SizeConfig.blockSizeHorizontal*3,
                SizeConfig.blockSizeVertical*35),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              elevation: 15,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.blue[600],
                        fontSize: 40,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email(Required)'
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password(Required)'
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                          'Forgot Password?',
                      ),
                    ),
                    Align(
                      child: Container(
                        transform: Matrix4.translationValues(100, 40, 0),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.blue[500],
                          child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.angleRight,
                              color:Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.blockSizeVertical*12,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom:12),
                    child: Text(
                      'or Login With',
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  ),
                  RaisedButton.icon(
                      icon: FaIcon(FontAwesomeIcons.facebook,
                        color: Colors.white,
                      ),
                      color: Colors.blue[600],
                      label: Text(
                          'Login with facebook',
                          style: TextStyle(
                            color: Colors.white
                          ),
                      ),
                      onPressed: (){
                        print('hello');
                        },
                  ),
                  RaisedButton.icon(
                      icon:Image(image: AssetImage('assets/google.png'),height: 40,),
                      color: Colors.blue[400],
                      label: Text(
                          'Login with Google',
                          style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      onPressed: (){
                        print('hello');
                      },
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.blockSizeVertical*2,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,30,30,0),
              child: Text(
                  'REGISTER',
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class Figure1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
      paint.color = Colors.blue[400];
      paint.strokeWidth = 20;
      paint.strokeCap = StrokeCap.round;
      paint.style = PaintingStyle.fill;
      Offset center = Offset(500,50);

    canvas.drawCircle(center,400,paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
class Figure2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue[700];
    paint.strokeWidth = 20;
    paint.strokeCap = StrokeCap.round;
    paint.style = PaintingStyle.fill;
    Offset center = Offset(100,100);

    canvas.drawCircle(center,50,paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
class Figure3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue[400];
    paint.strokeWidth = 20;
    paint.strokeCap = StrokeCap.round;
    paint.style = PaintingStyle.fill;
    Offset center = Offset(0,800);

    canvas.drawCircle(center,200,paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}




