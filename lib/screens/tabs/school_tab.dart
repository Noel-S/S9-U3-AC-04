import 'package:biography/widgets/history_tile.dart';
import 'package:flutter/material.dart';

class SchoolTab extends StatelessWidget {
  const SchoolTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HistoryTile(
          title: 'Pre-school',
          subtitle: 'Maria Mercedes Guzman Kindergarden',
          date: '2003 - 2004',
          index: 0,
          showstartLine: false,
        ),
        HistoryTile(
          title: 'Elementary school',
          subtitle: 'Benito Juarez Elementary School',
          date: '2004 - 2010',
          index: 1,
        ),
        HistoryTile(
          title: 'Middle school',
          subtitle: 'Pablo Silva Garcia Middle School',
          date: '2010 - 2013',
          index: 2,
        ),
        HistoryTile(
          title: 'High school',
          subtitle: 'High School #17 "University of Colima"',
          date: '2013 - 2016',
          index: 3,
        ),
        HistoryTile(
          title: 'College',
          subtitle: 'Instituto Tecnologico de Colima/nComputacional Systems Engineering',
          date: '2016 - Now.',
          index: 4,
          showEndLine: false,
        ),
        SizedBox(height: 100),
      ],
    );
  }
}
