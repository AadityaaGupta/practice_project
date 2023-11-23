import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

TextEditingController _field=TextEditingController();
TextEditingController _check=TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _mediaQuerry= MediaQuery.of(context);
    return Column(
      children: [

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Expanded(
                  child: Container(
                   width: _mediaQuerry.size.width*0.8, 
                  height: _mediaQuerry.size.height*0.1,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.black,
                      
                    )
                  ),
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

                Expanded(
                  child: Container(
                   height: _mediaQuerry.size.width*0.01,
                  width:_mediaQuerry.size.height*0.01,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Colors.black,
                          
                        )
                      ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                          
                            
                          ),
                          onPressed: (){}, child: Text('pick')),
                  ),
                ),

              ],
            ),
          ),


      ],
    );
  }
}