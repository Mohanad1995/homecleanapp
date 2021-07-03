import 'package:cleanhomeapp/ui/pages/ColorScheme.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transform.translate(
        offset: Offset(0,30),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 15),
              child: Text("Tasks", style: TextStyle(
                fontSize: 26,
                  color: Colors.grey.shade700
              ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 15),
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(20),
                color: Color(0xffdfdeff),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mohanad Alttar', style: TextStyle(
                        color: purple,
                        fontWeight: FontWeight.w700
                    ),),
                    SizedBox(height: 10,),
                    Text('Upkeep Cleaning', style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500
                    ),),
                    SizedBox(height: 5,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.timer, color: purple,),
                        SizedBox(width: 5,),
                        Text("4 pm - 6 pm", style: TextStyle(
                            color: purple,
                            fontSize: 13,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text("Client Rating", style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                        ),),
                        SizedBox(width: 5,),
                        Icon(Icons.star,color: Colors.amberAccent,),
                        Icon(Icons.star,color: Colors.amberAccent,),
                        Icon(Icons.star,color: Colors.amberAccent,),
                        Icon(Icons.star,color: Colors.amberAccent,),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Container(
                      height: 0.5,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.call, color: purple,),
                        SizedBox(width: 5,),
                        Icon(Icons.mail_outline, color: purple,),
                        Expanded(
                          child: Container(),
                        ),
                        Text("\$75", style: TextStyle(
                            color: purple,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    )

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 15),
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(20),
                color: Color(0xffdfdeff),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mohanad Alttar', style: TextStyle(
                        color: purple,
                        fontWeight: FontWeight.w700
                    ),),
                    SizedBox(height: 10,),
                    Text('Upkeep Cleaning', style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500
                    ),),
                    SizedBox(height: 5,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.timer, color: purple,),
                        SizedBox(width: 5,),
                        Text("4 pm - 6 pm", style: TextStyle(
                            color: purple,
                            fontSize: 13,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text("Client Rating", style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                        ),),
                        SizedBox(width: 5,),
                        Icon(Icons.star,color: Colors.amberAccent,),
                        Icon(Icons.star,color: Colors.amberAccent,),
                        Icon(Icons.star,color: Colors.amberAccent,),
                        Icon(Icons.star,color: Colors.amberAccent,),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Container(
                      height: 0.5,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.call, color: purple,),
                        SizedBox(width: 5,),
                        Icon(Icons.mail_outline, color: purple,),
                        Expanded(
                          child: Container(),
                        ),
                        Text("\$75", style: TextStyle(
                            color: purple,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    )

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
