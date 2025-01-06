import 'package:flutter/material.dart';

class Tables2 extends StatelessWidget {
  const Tables2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      color: Colors.grey,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Name',
                // style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Age',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Role',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Age',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Role',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Sarah')),
                DataCell(Text('19')),
                DataCell(Text('Student')),
                DataCell(Text('19')),
                DataCell(Text('Student')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Janine')),
                DataCell(Text('43')),
                DataCell(Text('Professor')),
                DataCell(Text('19')),
                DataCell(Text('Student')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
                DataCell(Text('19')),
                DataCell(Text('Student')),
              ],
            ),
          ],
        ),
      ),
    )
            // DataTable(
            //   columnSpacing: 10,
            //   columns: const [
            //     DataColumn(label: Expanded(child: Text("Name"))),
            //     DataColumn(label: Expanded(child: Text("Job"))),
            //     DataColumn(label: Expanded(child: Text("Salary"))),
            //   ],
            //   rows: const [
            //     DataRow(cells: [
            //       DataCell(Text("Ayman")),
            //       DataCell(Text("Programmer")),
            //       DataCell(Text("10000")),
            //     ]),
            //     DataRow(cells: [
            //       DataCell(Text("Ayman")),
            //       DataCell(Text("Programmer")),
            //       DataCell(Text("10000")),
            //     ]),
            //     DataRow(cells: [
            //       DataCell(Text("Ayman")),
            //       DataCell(Text("Programmer")),
            //       DataCell(Text("10000")),
            //     ])
            //   ],
            // ),

            ));
  }
}

class Tables1 extends StatelessWidget {
  const Tables1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Table(
                // defaultColumnWidth: const FixedColumnWidth(120),
                border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
                children: const [
                  TableRow(children: [
                    Column(
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Job",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Salary",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text("Saad")],
                    ),
                    Column(
                      children: [Text("Eng")],
                    ),
                    Column(
                      children: [Text("500")],
                    )
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text("Mohamed")],
                    ),
                    Column(
                      children: [Text("Programer")],
                    ),
                    Column(
                      children: [Text("1000")],
                    )
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text("Khalid")],
                    ),
                    Column(
                      children: [Text("Doctor")],
                    ),
                    Column(
                      children: [Text("2000")],
                    )
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
