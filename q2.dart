import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileDashboard());
}

class ProfileDashboard extends StatelessWidget {
  const ProfileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('User Profile')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150',
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Ayan Khan',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Active',
                        style: TextStyle(
                          color: Color.fromARGB(255, 175, 165, 76),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Edit Profile'),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    TextField(decoration: InputDecoration(labelText: 'Email')),
                    const SizedBox(height: 20),
                    TextField(decoration: InputDecoration(labelText: 'Phone')),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(labelText: 'Address'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Save Changes'),
                  ),
                  OutlinedButton(onPressed: () {}, child: const Text('Logout')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
