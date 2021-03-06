import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:navigation/unit.dart';

//Converter screen where users can input amounts to convert.
class ConverterRoute extends StatefulWidget {
  //[Category]'s name.
  final String name;

  //[Category]1s color.
  final Color color;

  // Units for this [Category].
  final List<Unit> units;

  /// This [ConverterRoute] requires the name, color, and units to not be null.
  const ConverterRoute({
    @required this.name,
    @required this.color,
    @required this.units,
  })
      : assert(name != null),
        assert(color != null),
        assert(units != null);

  @override
  _ConverterRouteState createState() => _ConverterRouteState();
}

class _ConverterRouteState extends State<ConverterRoute> {
  @override
  Widget build(BuildContext context) {
    // Here is just a placeholder for a list of mock units
    final unitWidgets = widget.units.map((Unit unit) {
      return Container(
        color: widget.color,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme
                  .of(context)
                  .textTheme
                  .subhead,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}