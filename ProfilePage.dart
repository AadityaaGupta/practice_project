import 'dart:html';

import 'package:flutter/material.dart';
import 'package:newrepo/dashboard.dart';
import 'package:newrepo/user.dart';

class ProfilePage extends StatefulWidget {
  final String data;

  ProfilePage(this.data, {super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int i=1;
  
  List<String> menu=['DashBoard','User','unknown','unknown','unknown','unknown','unknown','unknown','unknown','unknown'];
   
    List<UserDetails> user=[
    UserDetails(sNo:1, name:'redmi 9', deviceDetail:'4G', tokenNo:2),
    UserDetails(sNo:2, name:'Mi 10', deviceDetail:'5G', tokenNo:6),
    UserDetails(sNo:3, name:'oppo', deviceDetail:'4G', tokenNo:8),
    UserDetails(sNo:4, name:'narzo', deviceDetail:'5G', tokenNo:7),
    UserDetails(sNo:5, name:'vivo v21', deviceDetail:'5G', tokenNo:10),

  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Profile Page',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 50.0,
              backgroundColor: Colors.green.shade100,
            ),
          ),
        ),
      ),
      body: Container(
        child: Row(
          children: [
            Container(
              width: 250.0,
              child: Expanded(
                child: ListView.builder(
                    itemCount: menu.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5.0),
                          height: 60.0,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 193, 7),
                              border: Border.all(
                                width: 1.0,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Center(
                            child: Text(menu[index]),
                          ),
                        ),
                        onTap: (){
                          
                         i=index;
                         setState(() {
                           
                         });
                        },
                      );
                    }),
                // ListView(
                //   scrollDirection: Axis.vertical,
                //   children: [
                //
              ),
            ),
            Expanded(
               
               child: getViews(i),
            )
          ]
        ))
     
    );
  }


  Widget getViews(int index) {
    switch(index)
    {
      case 0 :
      return Dashboard();
      
      case 1 :
      return User();

      case 2 :
      return Text('m3');

      case 3 :
      return Text('m4');

      case 4 :
      return Text('m5');

      case 5 :
      return Text('m6');

      case 6 :
      return Text('m7');

      case 7 :
      return Text('m8');

      case 8 :
      return Text('m9');

      case 9 :
      return Text('m10');


      default:
      return Center(child: Text('Sorry not working'));
    }
  }
}

class UserDetails
{
    int? sNo;
   String? Name;
   String? deviceDetail;
   int? tokenNo;
  UserDetails( {required int sNo, required String name, required String deviceDetail, required int tokenNo})
  {
    this.sNo=sNo;
    this.Name=name;
    this.deviceDetail=deviceDetail;
    this.tokenNo=tokenNo;
  }
}

// class User extends StatefulWidget {
//   const User({super.key});

//   @override
//   State<User> createState() => _UserState();
// }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: Container(
//         decoration: BoxDecoration(
//           border: Border.all(
//             width: 3.0,
//             color: Colors.black,
            
//           ),
//           borderRadius: BorderRadius.circular(3.0),
//         ),
//         child: Column(
//           children: [
//             Container(
//               height: 40.0,
//               child: TextField(
//                 style: TextStyle(
//                   fontSize: 30.0,
//                   fontWeight: FontWeight.w900,
//                 ) ,
//                 textAlign: TextAlign.center,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(50.0),

//                   ),
//                   hintText: ' Search ',
//                   suffixIcon: const Icon(Icons.search,
//                   size: 30.0,
//                   ),
                   
                  
//                 ),
                
//               ),
//             ),
//             Container(
//                  child: ListView.builder(
//                    itemCount: user.length ,
//                    itemBuilder: (BuildContext context,int index){
//                    return Container(
//                        height: 40.0,
//                       ,
//                    );
//                  }
                
//                  ),

//             ),
//           ],
//         )
//       ),

//     );
//   }
// }

