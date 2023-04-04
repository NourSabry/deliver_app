import 'package:flutter/material.dart';
 
class CitySection extends StatelessWidget {
  const CitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(Icons.location_pin),
      trailing: Text("تغيير "),
      title: Text("طنطا - منطقة الاستاد"),
      minLeadingWidth: -10,
    );
  }
}
