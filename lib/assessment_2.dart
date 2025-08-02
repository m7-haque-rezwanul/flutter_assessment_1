//this is my live exam assessment

import 'package:flutter/material.dart';
class assessment2 extends StatelessWidget {
  const assessment2({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey= GlobalKey<FormState>();
    TextEditingController NameController = TextEditingController();
    TextEditingController AgeController = TextEditingController();
    TextEditingController SalaryController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Employee",
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                              children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                      controller: NameController,
                      decoration: InputDecoration(
                        hintText: "Name",
                      ),
                      validator: (value){
                        if(value==null||value.isEmpty) {
                          return "please enter your name ";
                        }else{
                          return null;
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    keyboardType: TextInputType.number,
                      controller: AgeController,
                      decoration: InputDecoration(
                        hintText: "Age",

                      ),
                      validator: (value){
                        if(value==null||value.isEmpty) {
                          return "please enter your Age ";
                        }else{
                          return null;
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                      keyboardType: TextInputType.number,
                      controller: SalaryController,
                      decoration: InputDecoration(
                        hintText: "Salary",

                      ),
                      validator: (value){
                        if(value==null||value.isEmpty) {
                          return "please enter your salary ";
                        }else{
                          return null;
                        }
                      }
                  ),


                  SizedBox(height: 20,),

                  SizedBox(
                      width: 100,
                      height: 100,
                      child:
                      ElevatedButton(onPressed: (){
                        if(_formKey.currentState!.validate()){
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Employee added"))
                          );
                        }
                      },

                          child: Text("Add Employee",

                          ))),


                              ],
                            ),
                ))

          ],
        ),
      ),


    );
  }
}
