import 'package:flutter/material.dart';
import 'package:my_app/pages/add/widgets/custom_form_add.dart';

class CustomActivity extends StatefulWidget {
  const CustomActivity({super.key});

  @override
  State<CustomActivity> createState() => _CustomActivityState();
}

class _CustomActivityState extends State<CustomActivity> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: activityName.length,
        itemBuilder: (context, index) {
          if (activityValue[index] > 0) {
            return Card(
              child: ListTile(
                title: Text(
                  activityName[index],
                ),
                subtitle: Text(
                  activityDescription[index],
                ),
                trailing: Text(
                  'R\$ ${activityValue[index].toStringAsFixed(2)}',
                  style: const TextStyle(color: Colors.green),
                ),
              ),
            );
          }
          if (activityValue[index] < 0) {
            return Card(
              child: ListTile(
                title: Text(
                  activityName[index],
                ),
                subtitle: Text(
                  activityDescription[index],
                ),
                trailing: Text(
                  'R\$ ${activityValue[index].toStringAsFixed(2)}',
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            );
          }
          return null;
        },
      ),
    );
  }
}
