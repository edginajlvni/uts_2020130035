import 'package:flutter/material.dart';
import 'package:uts_2020130035/HomeScreen.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.location_on), label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
      //   ],
      //   currentIndex: _selectedIndex,
      //   backgroundColor: const Color.fromARGB(207, 232, 255, 254),
      //   selectedItemColor: const Color.fromARGB(255, 0, 81, 255),
      //   onTap: _onItemTap,
      // ),
      backgroundColor: Color.fromARGB(255, 253, 253, 253),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ol.jpg',
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 50,
              ),
              Shop(),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const Text(
                    "email",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'helmet',
                        color: Color.fromARGB(255, 165, 165, 165)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "neko@neko.com",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "password",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'helmet',
                        color: Color.fromARGB(255, 165, 165, 165)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Your Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              InkWell(
                onTap: () {},
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(104, 11, 1, 12),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text("Log In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'averia',
                            )),
                      )),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  Text Shop() {
    return Text(
      "Welcome to Edgina Shop",
      style: TextStyle(fontSize: 20, fontFamily: 'playbold'),
    );
  }
}
