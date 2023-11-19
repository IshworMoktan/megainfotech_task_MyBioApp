import 'package:flutter/material.dart';

class CustomAnimatedIcon extends StatefulWidget {
  const CustomAnimatedIcon({
    Key? key,
    required this.animatedIcon,
  }) : super(key: key);

  final AnimatedIconData animatedIcon;

  @override
  State<CustomAnimatedIcon> createState() => _CustomAnimatedIconState();
}

class _CustomAnimatedIconState extends State<CustomAnimatedIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..forward();
    // ..repeat(reverse: false);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedIcon(
        icon: widget.animatedIcon,
        progress: animation,
        size: 25.0,
        semanticLabel: 'Show menu',
      ),
    );
  }
}
