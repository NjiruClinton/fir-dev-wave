import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wave/models/jobss.dart';

class ApplyJob extends StatelessWidget {
  const ApplyJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Apply Job'),
        ),
        body: SingleChildScrollView(
          child: Menu(),
        ));
  }
}
final user = FirebaseAuth.instance.currentUser!;
class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(right: 20),
                child: Image.asset(
                  'assets/logo.png',
                  height: 150,
                  width: 150,
                ),
              ),
              // profile image
              Container(
                padding: EdgeInsets.only(left: 50, bottom: 20),
                child: CircleAvatar(
                  backgroundImage: NetworkImage("${user.photoURL}"),
                       radius: 25,
                ),
              ),

            ],
          ),
          SizedBox(height: 20),
          Container(
            child: Text("Find your ",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),

          ),
          Container(

            child: Text("Preferred job",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),

          ),
          SizedBox(height: 20),
          //searchbar
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xFdae3dc),
                  ),
                ),
                labelText: "Search job",
                  suffixIcon: Icon(Icons.search)
              ),
            ),
          ),
          SizedBox(height: 20),
          Text("Popular Jobs",
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold),
          ),

          CategoriesScroller(),

          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("Show Recent Jobs",
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w300),

                ),
                Icon(Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 20,
                ),
              ],


            ),
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => JobList()));
    },
          ),

        ],
      ),
    );
  }
}



class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller();
  @override
  Widget build(BuildContext context) {
    final double categoryHeight = MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              Container(
                width: 250,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight - 20,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(color: Color(0xFFedece8), spreadRadius: 1)
                    ]),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF4b4f4b),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(color: Color(0xFF393b3a), spreadRadius: 1)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Text("Senior Developer",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFffffff))),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("\$40K - \$50K",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFffffff))),
                            Text("Full Time",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFffffff))),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Space Tech",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFffffff))),
                            Text("Nairobi, Kenya",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFffffff))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),Container(
                width: 250,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight - 20,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(color: Color(0xFFedece8), spreadRadius: 1)
                    ]),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF4b4f4b),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(color: Color(0xFF393b3a), spreadRadius: 1)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Text("Sales Manager",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFffffff))),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("\$20K - \$30K",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFffffff))),
                            Text("Part Time",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFffffff))),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Boring Company",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFffffff))),
                            Text("Thika, Kenya",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFffffff))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 250,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight - 20,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(color: Color(0xFFedece8), spreadRadius: 1)
                    ]),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF4b4f4b),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(color: Color(0xFF393b3a), spreadRadius: 1)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Text("Receptionist",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFffffff))),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("\$5K - \$10K",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFffffff))),
                            Text("Full Time",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFffffff))),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Gretsa University",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFffffff))),
                            Text("Thika, Kenya",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFffffff))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 250,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight - 20,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(color: Color(0xFFedece8), spreadRadius: 1)
                    ]),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF4b4f4b),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(color: Color(0xFF393b3a), spreadRadius: 1)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Text("Cargo Manager",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFffffff))),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("\$10K - \$20K",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFffffff))),
                            Text("Full Time",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFffffff))),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Ports Auth",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFffffff))),
                            Text("Mombasa, Kenya",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFFffffff))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class RecentJobs extends StatelessWidget {
  const RecentJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
