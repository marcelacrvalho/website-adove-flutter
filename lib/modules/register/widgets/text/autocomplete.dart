import 'package:adove/global/utilities/cities.dart';
import 'package:adove/global/utilities/sizes.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class AutocompleteWidget extends StatelessWidget {
  final TextEditingController controllerCity;

  const AutocompleteWidget({Key? key, required this.controllerCity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchField(
      suggestions: Cities.listCities,
        controller: controllerCity,
        maxSuggestionsInViewPort: 3,
        marginColor: Colors.white,
        suggestionStyle: TextStyle(
          fontSize: Sizes.isMobile() ? Sizes.body1Mobile : Sizes.body1Site,
        ),
        searchStyle: TextStyle(
          fontSize: Sizes.isMobile() ? Sizes.body1Mobile : Sizes.body1Site,
          color: Colors.blue,
        ),
        searchInputDecoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7.0)),
          labelStyle: TextStyle(
            fontSize: Sizes.isMobile() ? Sizes.body1Mobile : Sizes.body1Site,
            color: Colors.blue,
          ),
          hintText: 'Onde se localiza seu negócio?',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: Sizes.isMobile() ? Sizes.body2Mobile : Sizes.body2Site,
          ),
        ),
      );
  }
}
