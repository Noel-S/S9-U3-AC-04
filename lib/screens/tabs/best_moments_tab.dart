import 'package:flutter/material.dart';

class BestMomentsTab extends StatelessWidget {
  const BestMomentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
          leading: Icon(Icons.star_rounded, color: Colors.amber),
          title: Text('Solo Travel Adventure'),
          subtitle: Text('I embarked on an exhilarating solo travel adventure, exploring different parts of the world on my terms. This allowed me to discover new cultures, make spontaneous decisions, and gain a deep sense of independence and self-discovery.'),
        ),
        ListTile(
          leading: Icon(Icons.star_rounded, color: Colors.amber),
          title: Text('Career Achievement'),
          subtitle: Text('I dedicated myself to my career and achieved a high level of success and recognition in my chosen field. Climbing the corporate ladder, starting my own business, or pursuing a passion project were all defining moments in my professional life.'),
        ),
        ListTile(
          leading: Icon(Icons.star_rounded, color: Colors.amber),
          title: Text('Personal Growth Retreat'),
          subtitle: Text('I took time for personal growth and self-discovery by attending retreats, workshops, or immersive experiences. These opportunities allowed me to reflect on my life, set goals, and develop a deeper understanding of myself.'),
        ),
        ListTile(
          leading: Icon(Icons.star_rounded, color: Colors.amber),
          title: Text('Exploring Hobbies and Passions'),
          subtitle: Text('As a single individual, I had the freedom to explore my hobbies and passions to the fullest. Whether it was becoming a skilled musician, mastering a new sport, or delving into the arts, I dedicated time and energy to what I loved.'),
        ),
        ListTile(
          leading: Icon(Icons.star_rounded, color: Colors.amber),
          title: Text('Building a Strong Support Network'),
          subtitle: Text('While single, I focused on building strong and meaningful relationships with friends and family. These connections provided emotional support, camaraderie, and a sense of belonging throughout life\'s ups and downs.'),
        ),
      ],
    );
  }
}
