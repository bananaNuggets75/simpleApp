import 'package:flutter/material.dart';

class PlanningPage extends StatefulWidget {
  @override
  _PlanningPageState createState() => _PlanningPageState();
}

class _PlanningPageState extends State<PlanningPage> {
  String selectedField = 'Field 1';
  String selectedCrop = 'Vegetables';
  double? expectedYield;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planning'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Select Field:'),
            DropdownButton<String>(
              value: selectedField,
              items: <String>['Field 1', 'Field 2', 'Field 3', 'Field 4']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedField = newValue;
                  });
                }
              },
            ),
            SizedBox(height: 20),
            Text('Select Crops:'),
            DropdownButton<String>(
              value: selectedCrop,
              items: <String>[
                'Vegetables', 'Fruits', 'Grains', 'Herbs', 'Ornamental Crops', 'Other Crops'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedCrop = newValue;
                  });
                }
              },
            ),
            SizedBox(height: 20),
            Text('Expected Yield:'),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter expected yield',
              ),
              onChanged: (value) {
                setState(() {
                  expectedYield = double.tryParse(value);
                });
              },
            ),
            SizedBox(height: 20),
            Text('Input Requirements:'),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter fertilizer, water, and other requirements',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle the submit action
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
