
import 'package:flutter/material.dart';
class FormScreen extends StatefulWidget {


  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
 /* String _name;
  String _email;
  String _password;
  String _phoneNumber;*/
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/image7.jpg"),
                  fit: BoxFit.fill,
                )
              ),
            ),
          ),
             title:Row(
                 children: [
                   Text('Dance Competition',
                     style: TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold,),
                   ),
                 ]
                ),
                backgroundColor: Colors.pink,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
              ),
              )),

        body:SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
           SizedBox(
             height: 10,
           ),
          Center(
            child: Form(

              child: Column(
                key: _formKey,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    alignment: Alignment.center,
                    child: TextFormField(
                     // autovalidate: true,
                      validator: (String value){
                      if(value.isEmpty){
                        return 'UserName cannot be empty';
                      }
                      return null;
                      },
                      onSaved: (String value){

                        //_name = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: " Please Enter Your Name:"),

                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
            Center(
              child: Form(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      alignment: Alignment.center,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: " Enter Email Id: (Optional)"),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
                Center(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          alignment: Alignment.center,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: " Password"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                child: Form(
                 child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      alignment: Alignment.center,
                      child: TextFormField(
                        //controller: visitorNameCtrl,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText:"Phone Number"),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Form(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      alignment: Alignment.center,
                      child: TextFormField(
                        //controller: visitorNameCtrl,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText:"Address"),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Container(
                    padding: EdgeInsets.only(
                      left: 7,
                      right: 7,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButton(
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      hint: Text('Select Your Countory'),
                     onChanged: (String newVal){

                     },
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Container(
                    padding: EdgeInsets.only(
                      left: 7,
                      right: 7,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButton(
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      hint: Text('Select Your State'),
                      onChanged: (String newVal){

                      },

                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Container(
                    padding: EdgeInsets.only(
                      left: 7,
                      right: 7,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButton(
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      // value: country_id,
                      hint: Text('Select Your City'),
                      onChanged: (String newVal){

                      },

                    )),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(

                child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      RaisedButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        textColor: Colors.white,
                        child: Text("Back"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      RaisedButton(
                        color: Colors.blue[900],
                        onPressed: () {
                        /* if(! _formKey.currentState.validate()){
                           return;
                         }
                         _formKey.currentState.save();
                         print(_name);*/

                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        textColor: Colors.white,
                        child: Text("Submit"),
                      ),
                    ]))
          ]
        )));

  }
}
