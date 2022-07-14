
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wave/data/presentation/applyjob.dart';
import 'package:wave/data/presentation/dashboard/navbar.dart';
import 'package:wave/models/jobss.dart';
import '../../../bloc/auth_bloc.dart';
import '../sign_in/sign_in.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Getting the user from the FirebaseAuth Instance
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is UnAuthenticated) {
            // Navigate to the sign in screen when the user Signs Out
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => SignIn()),
                  (route) => false,
            );
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: [
                  GestureDetector( child: SizedBox(
                    width: 160.0,
                    height: 160.0,
                    child: Card(
                      color: Colors.black,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset("assets/job.png", width: 64.0,),
                              SizedBox(height: 10.0,),
                              Text("Popular Jobs", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0
                              ),),
                              SizedBox(height: 5.0, ),
                              Text("2 Items", style: TextStyle(
                                  color: Colors.white,
                                      fontWeight: FontWeight.w100,
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sales()));
                  },
                  ),

                 GestureDetector(child: SizedBox(
                    width: 160.0,
                    height: 160.0,
                    child: Card(
                      color: Color.fromARGB(255, 21, 21, 21),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset("assets/inv.png", width: 64.0,),
                              SizedBox(height: 10.0,),
                              Text("Recent Jobs", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                              ),),
                              SizedBox(height: 5.0, ),
                              Text("12 Items", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                   onTap: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => Inv()));
                   },
                 ),

                ],
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}

class Sales extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ApplyJob();
  }
}


class Inv extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Jobs'),
      ),
      body: JobList(),
    );
  }
}

class Ecomm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-commerce'),
      ),
    );
  }
}


