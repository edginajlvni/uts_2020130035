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
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                  height: 200,
                  width: 200,
                  image: AssetImage("assets/images/buku.png")),
              SizedBox(
                height: 50,
              ),
              const welcome(),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Text("Email"),
                ],
              ),
              SizedBox(height:10,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 20,
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
                          color: Color.fromARGB(104, 8, 8, 8),
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
}

class welcome extends StatelessWidget {
  const welcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Welcome to Edgina Books Store",
      style: TextStyle(fontSize: 20, fontFamily: 'playbold'),
    );
  }
}
