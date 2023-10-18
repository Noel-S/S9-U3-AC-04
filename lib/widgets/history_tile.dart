import 'package:flutter/material.dart';

class HistoryTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final int index;
  final bool showstartLine;
  final bool showEndLine;

  const HistoryTile({super.key, required this.title, required this.subtitle, required this.date, required this.index, this.showstartLine = true, this.showEndLine = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        SizedBox(
          height: 64,
          child: Stack(
            children: [
              if (showstartLine)
                Positioned(
                  top: 0,
                  left: 19.5,
                  right: 19.5,
                  child: Container(
                    height: 32,
                    width: 2,
                    color: Colors.teal,
                  ),
                ),
              if (showEndLine)
                Positioned(
                  bottom: 0,
                  left: 19.5,
                  right: 19.5,
                  child: Container(
                    height: 32,
                    width: 2,
                    color: Colors.teal,
                  ),
                ),
              Center(
                child: Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  alignment: Alignment.center,
                  child: Text('${index + 1}', style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(child: Text(title, style: Theme.of(context).textTheme.titleMedium)),
                  const SizedBox(width: 16),
                  Text(date, style: Theme.of(context).textTheme.bodySmall?.apply(color: Colors.green.shade800, fontWeightDelta: 4)),
                ],
              ),
              Text(subtitle, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
