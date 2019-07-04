import 'package:flutter/material.dart';

class RefreshButton extends StatelessWidget {
final Function switchHandler;

RefreshButton(this.switchHandler);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: switchHandler,
      child: Icon(
        Icons.refresh,
        color: Colors.white,
        size: 25,
      ),
    );
  }
}
