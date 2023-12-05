import 'package:flutter/material.dart';

class PokemonImageWidget extends StatelessWidget {
  const PokemonImageWidget({
    Key? key,
    required this.child,
    required this.imagePath,
  }) : super(key: key);
  final Widget child;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    late Widget widget;
    widget = Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.orange,
          image: DecorationImage(
            image: NetworkImage(imagePath),
          ),
        ),
        child: child,
      ),
    );
    return widget;
  }
}
