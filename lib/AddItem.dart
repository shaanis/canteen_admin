import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  var _value = "-1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Padding(
          padding: const EdgeInsets.only(left: 78.0),
          child: Text(
            "Add Items",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 150,
                width: 220,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage('assets/images/verumchor1.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Upload Image',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Text('ITEM NAME',style: TextStyle(fontWeight: FontWeight.w400),),
            SizedBox(height: 10,),
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Biriyani',
                  hintStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(height: 15,),

            Text('CHOOSE CATEGORY',style: TextStyle(fontWeight: FontWeight.w400),),
            SizedBox(height: 10,),
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width:0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 20, bottom: 20)),
                value: _value,
                items: [
                  DropdownMenuItem(
                    child: Text('Popular'),
                    value: '-1',
                  ),
                  DropdownMenuItem(
                    child: Text('Our menu'),
                    value: '1',
                  ),


                ],
                onChanged: (v) {
                  setState(() {
                    _value = v.toString();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
