import 'package:flutter/material.dart';
import 'package:my_app/pages/add/widgets/custom_form_add.dart';

class CustomActivity extends StatefulWidget {
  const CustomActivity({super.key});

  @override
  State<CustomActivity> createState() => _CustomActivityState();
}

class _CustomActivityState extends State<CustomActivity> {
  final List<Activity> _activity = [];
  void newActivity(Activity item) {
    setState(() {
      _activity.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: _activity.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(59, 0, 0, 0)),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 10),
                ],
              ),
              child: ListTile(
                title: Text(_activity[index].nameForm),
                subtitle: Text(_activity[index].descriptionForm),
                trailing: Text(
                    'R\$ ${_activity[index].valueForm.toStringAsFixed(2)}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
