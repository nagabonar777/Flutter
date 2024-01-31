import 'package:flutter/material.dart';

class TugasRowColumn extends StatelessWidget {
 TugasRowColumn({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  width: 400,
                  height: 80,
                  color: Colors.grey,
                  alignment: Alignment.center,
                  child: Text(
                    "H O M E",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    
                    child: Container(
                      width: 120,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 118, 120, 246),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        color: Color.fromARGB(255, 244, 68, 3),
                      child: Image.asset("assets/img/logo.png", fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 120, 
                    height: 100, 
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 118, 120, 246),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: double.infinity, 
                    height: double.infinity, 
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                      color: Color.fromARGB(255, 247, 68, 2),
                      child: Image.asset("assets/img/logo.png", fit: BoxFit.cover,),
                    ),
                  ),
    
                ],
              ),
          //Container1
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 100,
                  width: 380,
                  color: Colors.grey,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),          
                        child: Container(
                            padding: EdgeInsets.all(5),
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                            child: Container(
                              height: 100,
                              width: 40,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.brown,
                                 borderRadius: BorderRadius.circular(10),
                              ),
                             child: Image.asset("assets/img/logo.png", fit: BoxFit.cover,),
                            )),
                      ),
                      Container(
                          padding: EdgeInsets.all(20),
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                              'Lorem ipsum dolor sit amet, consectur adlipscing elip',
                              maxLines: 4, 
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                    ],
                  ),
                ),
              ),
              //Container 2
             Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 100,
                  width: 380,
                  color: Colors.grey,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            padding: EdgeInsets.all(5),
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              height: 100,
                              width: 40,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            child: Image.asset("assets/img/logo.png", fit: BoxFit.cover,),
                            )),
                      ),
    
                       Container(
                          padding: EdgeInsets.all(20),
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                              'Lorem ipsum dolor sit amet, consectur adlipscing elip',
                              maxLines: 4, 
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                          
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}