import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var json = [
    {'name': "us", 'type': 'TextField'},
    {'name': "us", 'type': 'RadioButton'}, {'name': "us", 'type': 'TextField'},
    {'name': "us", 'type': 'TextField'}, {'name': "us", 'type': 'CheckBox'}
    // {
    //   'name': 'TextField',
    //   'type': 'TextField',
    // },
    // {
    //   'name': 'TextField',
    //   'type': 'TextField',
    // },
    // {
    //   'name': 'Class',
    //   'type': 'RadioButton',
    // },
    // {
    //   'name': 'Class',
    //   'type': 'RadioButton',
    // },
    // {
    //   'name': 'Country',
    //   'type': 'TextField',
    // },
    // {
    //   'name': 'Country',
    //   'type': 'TextField',
    // },
    // {
    //   'name': 'Fruit',
    //   'type': 'CheckBox',
    // },
    // {
    //   'name': 'Fruit',
    //   'type': 'CheckBox',
    // },
    // {
    //   'name': 'Class',
    //   'type': 'RadioButton',
    // },
    // {
    //   'name': 'Country',
    //   'type': 'TextField',
    // },
    // {
    //   'name': 'Country',
    //   'type': 'TextField',
    // },
    // {
    //   'name': 'Fruit',
    //   'type': 'CheckBox',
    // },
  ];

  List<Widget> list() {
    List<Widget> listw = [];

    for (int i = 0; i < json.length; i++) {
      print(i);
      listw.add(
        Column(
          children: [
            if (json[i]['type'] == 'TextField')
              TextField()
            else if (json[i]['type'] == 'RadioButton')
              Radio(
                value: 'male',
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = val;
                  });
                },
              )
            else if (json[i]['type'] == 'CheckBox')
              Checkbox(
                  value: showValue,
                  onChanged: (valu) {
                    setState(() {
                      this.showValue = !showValue;
                    });
                  }),
          ],
        ),
      );
    }
    return listw;
  }

  bool showValue = false;
  var val;
  String _selectedGender = 'male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            children: [
              ...list(),
              // Container(
              //   child: ListView.builder(
              //       itemCount: json.length,
              //       shrinkWrap: true,
              //       itemBuilder: (context, i) {
              //         return json[i]['type'] == 'RadioButton'
              //             ? Radio(
              //                 value: 'male',
              //                 groupValue: _selectedGender,
              //                 onChanged: (value) {
              //                   setState(() {
              //                     _selectedGender = val;
              //                   });
              //                 },
              //               )
              //             : Text('Empty');
              //       }),
              // )

              // json[0]['type'] == 'TextField'
              //     ? Column(
              //         children: [
              //           Text('TextField'),
              //           TextField(),
              //         ],
              //       )
              //     : Text(''),
              // json[1]['type'] == 'RadioButton'
              //     ? Column(
              //         children: [
              //           Text('Radio Button'),
              //           Radio(
              //             value: 'male',
              //             groupValue: _selectedGender,
              //             onChanged: (value) {
              //               setState(() {
              //                 _selectedGender = val;
              //               });
              //             },
              //           ),
              //         ],
              //       )
              //     : Text(''),
              // json[2]['type'] == 'TextField'
              //     ? Column(
              //         children: [Text('TextField'), TextField()],
              //       )
              //     : Text(''),
              // json[3]['type'] == 'CheckBox'
              //     ? Column(
              //         children: [
              //           Text('CheckBoc'),
              //           Checkbox(
              //               value: showValue,
              //               onChanged: (valu) {
              //                 setState(() {
              //                   this.showValue = !showValue;
              //                 });
              //               }),
              //         ],
              //       )
              //     : Text(''),
            ],
          ),
        ),
      ),
    );
  }
}
