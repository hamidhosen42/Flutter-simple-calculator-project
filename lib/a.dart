import 'package:flutter/material.dart';
class A extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Profile Page")),
        elevation: 40,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.red],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.orange],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            "https://media-exp1.licdn.com/dms/image/C5603AQFTrWnOmRsJJA/profile-displayphoto-shrink_400_400/0/1611235295439?e=1637798400&v=beta&t=2S3RNNzvACuqmh_uKZ-iKGJ48swdZnOUxX2c3iHTY5g"),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15,
                          child: Icon(Icons.edit),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Hamid Hosen",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Chittagong,Bangladesh",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Photo",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("123",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Followers",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("1234",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Following",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("12345",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.white],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Text("User Information",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Divider(),
                  ListTile(
                    title: Text("User Name", style: TextStyle(fontSize: 20)),
                    subtitle: Text("hamid42", style: TextStyle(fontSize: 15)),
                    leading: Icon(
                      Icons.account_box,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    title: Text("Location", style: TextStyle(fontSize: 20)),
                    subtitle: Text("Chittagong,Bangladesh",
                        style: TextStyle(fontSize: 15)),
                    leading: Icon(
                      Icons.location_on,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    title: Text("Email", style: TextStyle(fontSize: 20)),
                    subtitle: Text("hamidhosen8444@gmail.com",
                        style: TextStyle(fontSize: 15)),
                    leading: Icon(
                      Icons.email,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    title: Text("Phone", style: TextStyle(fontSize: 20)),
                    subtitle:
                        Text("01858570337", style: TextStyle(fontSize: 15)),
                    leading: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    title: Text("Favourite", style: TextStyle(fontSize: 20)),
                    subtitle: Text("Condding,Game,Book Reading",
                        style: TextStyle(fontSize: 15)),
                    leading: Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    title: Text("About Me", style: TextStyle(fontSize: 20)),
                    subtitle: Text(
                        "East Delta University. \nComputer science and engineering. \nI am currently working as flutter developer. \n",
                        style: TextStyle(fontSize: 15)),
                    leading: Icon(
                      Icons.info,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}