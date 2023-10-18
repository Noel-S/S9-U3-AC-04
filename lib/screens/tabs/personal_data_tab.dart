import 'package:flutter/material.dart';

class PersonalDataTab extends StatelessWidget {
  const PersonalDataTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
          leading: Icon(Icons.person_rounded, color: Colors.teal),
          title: Text('Name'),
          subtitle: Text('Noel Isaac Silva Velasco'),
        ),
        ListTile(
          leading: Icon(Icons.cake_rounded, color: Colors.teal),
          title: Text('Birthday'),
          subtitle: Text('January 1st, 1998'),
        ),
        ListTile(
          leading: Icon(Icons.location_on_rounded, color: Colors.teal),
          title: Text('Address'),
          subtitle: Text('227 Ayuntamiento Av, Villa de Alvarez, Colima'),
        ),
        ListTile(
          leading: Icon(Icons.phone_rounded, color: Colors.teal),
          title: Text('Phone'),
          subtitle: Text('312-209-1461'),
        ),
        ListTile(
          leading: Icon(Icons.email_rounded, color: Colors.teal),
          title: Text('Email'),
          subtitle: Text('hola@noel-s.com'),
        ),
      ],
    );
  }
}
