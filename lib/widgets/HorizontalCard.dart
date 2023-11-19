import 'package:flutter/material.dart';

class HorizontalCard extends StatefulWidget {
  final String title;
  final Widget body;
  final Color? backgroundColor;
  HorizontalCard(
      {required this.title, required this.body, this.backgroundColor});

  @override
  State<HorizontalCard> createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(40.0),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
