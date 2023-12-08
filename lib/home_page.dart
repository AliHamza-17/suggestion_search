import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suggestion Search'),
      ),
      body: Column(
        children: [
          TypeAheadField<City>(
            suggestionsCallback: (search) =>
                CityService.of(context).find(search),
            builder: (context, controller, focusNode) {
              return TextField(
                  controller: controller,
                  focusNode: focusNode,
                  autofocus: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'City'));
            },
            itemBuilder: (context, city) {
              return ListTile(
                title: Text('France'),
              );
            },
            onSelected: (city) {
              Navigator.of(context).push<void>(
                  // MaterialPageRoute(
                  //   builder: (context) => CityPage(city: city),
                  // ),
              );

            },
          )
        ],
      ),
    );
  }
}

class CityPage {}

class CityService {
  static of(BuildContext context) {}
}

class City {}
