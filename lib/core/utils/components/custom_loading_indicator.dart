import 'package:flutter/material.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key, this.progress});
  final double? progress;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        value: progress,
      ),
    );
  }
}
