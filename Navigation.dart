import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

//TextEditingController _field=TextEditingController();
//TextEditingController _check=TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _mediaQuerry= MediaQuery.of(context);
    return Column(
            

      children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              Expanded(
                child: Container(
                 
                        margin: EdgeInsets.all(5.0),
                child: TextField(
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      hintText: ' Search ',
                      suffixIcon: const Icon(
                        Icons.search,
                        size: 30.0,
                      )),
                ),
                        ),
              ),
          
              Container(
                margin: EdgeInsets.all(15.5),
                    width: 100.0,
                  
                    child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange.shade100,
                      
                     ), 
                      onPressed: (){}, child: Text('pick',style: TextStyle(
                        color: Colors.blueGrey.shade600,
                      ),)),
              ),
          
            ],
          ),


      ],
    );
  }
}