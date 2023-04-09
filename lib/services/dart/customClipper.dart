import 'package:flutter/material.dart';

class BigClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 395;
    final double _yScaling = size.height / 896;
    path.lineTo(195.743 * _xScaling,402.332 * _yScaling);
    path.cubicTo(114.217 * _xScaling,345.532 * _yScaling,31.2786 * _xScaling,378.665 * _yScaling,0 * _xScaling,402.332 * _yScaling,);
    path.cubicTo(0 * _xScaling,402.332 * _yScaling,0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,);
    path.cubicTo(0 * _xScaling,0 * _yScaling,393 * _xScaling,0 * _yScaling,393 * _xScaling,0 * _yScaling,);
    path.cubicTo(393 * _xScaling,0 * _yScaling,393 * _xScaling,402.332 * _yScaling,393 * _xScaling,402.332 * _yScaling,);
    path.cubicTo(383.919 * _xScaling,411.396 * _yScaling,297.651 * _xScaling,473.332 * _yScaling,195.743 * _xScaling,402.332 * _yScaling,);
    path.cubicTo(195.743 * _xScaling,402.332 * _yScaling,195.743 * _xScaling,402.332 * _yScaling,195.743 * _xScaling,402.332 * _yScaling,);
    return path;
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
class ShadowClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(195.743 * _xScaling,402.332 * _yScaling);
    path.cubicTo(113.364 * _xScaling,346.777 * _yScaling,31.2786 * _xScaling,378.665 * _yScaling,0 * _xScaling,402.332 * _yScaling,);
    path.cubicTo(0 * _xScaling,402.332 * _yScaling,0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,);
    path.cubicTo(0 * _xScaling,0 * _yScaling,393 * _xScaling,0 * _yScaling,393 * _xScaling,0 * _yScaling,);
    path.cubicTo(393 * _xScaling,0 * _yScaling,393 * _xScaling,402.332 * _yScaling,393 * _xScaling,402.332 * _yScaling,);
    path.cubicTo(383.919 * _xScaling,411.396 * _yScaling,325 * _xScaling,489.5 * _yScaling,195.743 * _xScaling,402.332 * _yScaling,);
    path.cubicTo(195.743 * _xScaling,402.332 * _yScaling,195.743 * _xScaling,402.332 * _yScaling,195.743 * _xScaling,402.332 * _yScaling,);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}