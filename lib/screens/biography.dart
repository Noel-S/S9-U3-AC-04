import 'package:biography/screens/tabs/best_moments_tab.dart';
import 'package:biography/screens/tabs/personal_data_tab.dart';
import 'package:biography/screens/tabs/school_tab.dart';
import 'package:flutter/material.dart';

class Biography extends StatefulWidget {
  const Biography({super.key});

  @override
  State<Biography> createState() => _BiographyState();
}

class _BiographyState extends State<Biography> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    margin: const EdgeInsets.only(bottom: 90),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      'https://a0.muscache.com/im/pictures/user/14dc4c2a-4f45-402d-861f-a81c04b3f70c.jpg?im_w=240',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                collapseMode: CollapseMode.parallax,
                title: const Text('Biography', style: TextStyle(color: Colors.black)),
                centerTitle: true,
                titlePadding: const EdgeInsetsDirectional.only(bottom: 90),
              ),
              bottom: const TabBar(
                labelPadding: EdgeInsets.all(0),
                tabs: [
                  Tab(text: 'Personal Data', icon: Icon(Icons.person_2_rounded)),
                  Tab(text: 'Experiences', icon: Icon(Icons.star_rounded)),
                  Tab(text: 'School', icon: Icon(Icons.school_rounded)),
                ],
              ),
            ),
            const SliverFillRemaining(
              hasScrollBody: true,
              child: SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TabBarView(children: [
                    PersonalDataTab(),
                    BestMomentsTab(),
                    SchoolTab(),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
