import 'package:flutter/material.dart';

class NavBarSlideInAnimation extends StatefulWidget {
  final Widget child;

  const NavBarSlideInAnimation({Key? key, required this.child}) : super(key: key);

  @override
  _NavBarSlideInAnimationState createState() => _NavBarSlideInAnimationState();
}

class _NavBarSlideInAnimationState extends State<NavBarSlideInAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 700),
    );

    _animation = Tween<Offset>(
      begin: Offset(0, -1),
      end: Offset.zero,
    ).animate(_animationController);

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
