import 'package:contact_list_2/contact%20veiw.dart';
import 'package:contact_list_2/model/userModel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Usermodel> users = [
    // Usermodel(
    //   id: 1,
    //   phone: 0123456789,
    //   name: "Sobuj",
    //   email: "sobuj@gmail.com",
    //   profileimage:
    //       "https://img.freepik.com/free-vector/young-man-orange-hoodie_1308-175788.jpg?ga=GA1.1.1086101999.1745650252&semt=ais_hybrid&w=740",
    //   about:
    //       "Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad ",
    // ),

    // Usermodel(
    //   id: 1,
    //   phone: 0123456789,
    //   name: "Sobuj",
    //   email: "sobuj@gmail.com",
    //   profileimage:
    //       "https://img.freepik.com/free-vector/young-man-orange-hoodie_1308-175788.jpg?ga=GA1.1.1086101999.1745650252&semt=ais_hybrid&w=740",
    //   about:
    //       "Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad ",
    // ),

    // Usermodel(
    //   id: 1,
    //   phone: 0123456789,
    //   name: "Sobuj",
    //   email: "sobuj@gmail.com",
    //   profileimage:
    //       "https://img.freepik.com/free-vector/young-man-orange-hoodie_1308-175788.jpg?ga=GA1.1.1086101999.1745650252&semt=ais_hybrid&w=740",
    //   about:
    //       "Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad ",
    // ),

    // Usermodel(
    //   id: 1,
    //   phone: 0123456789,
    //   name: "Sobuj",
    //   email: "sobuj@gmail.com",
    //   profileimage:
    //       "https://img.freepik.com/free-vector/young-man-orange-hoodie_1308-175788.jpg?ga=GA1.1.1086101999.1745650252&semt=ais_hybrid&w=740",
    //   about:
    //       "Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad ",
    // ),

    // Usermodel(
    //   id: 1,
    //   phone: 0123456789,
    //   name: "Sobuj",
    //   email: "sobuj@gmail.com",
    //   profileimage:
    //       "https://img.freepik.com/free-vector/young-man-orange-hoodie_1308-175788.jpg?ga=GA1.1.1086101999.1745650252&semt=ais_hybrid&w=740",
    //   about:
    //       "Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad Then Men is Very bad ",
    // ),
  ];

  String defoldImage =
      "https://cdn-icons-png.flaticon.com/128/4140/4140061.png";

  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController aboutcontroller = TextEditingController();

  UserDataAdd() {
    Usermodel user = Usermodel(
      id: users.length + 1,
      name: namecontroller.text,
      email: emailcontroller.text,
      phone: int.tryParse(phonecontroller.text),
      about: aboutcontroller.text,
      profileimage: defoldImage,
      
      );


      setState(() {
        users.add(user);
      });

namecontroller.clear();
emailcontroller.clear();
phonecontroller.clear();
aboutcontroller.clear();

  }

  Widget UserAdd() {
    return Dialog(
      child: Container(
        height: 420,
        child: ListView(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "User Imfo ADD",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: namecontroller,
                decoration: InputDecoration(hintText: "Name"),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: "Email"),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: phonecontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Phone"),
                maxLength: 11,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: aboutcontroller,
                maxLength: 100,
                decoration: InputDecoration(hintText: "About"),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    color: Colors.greenAccent,
                    onPressed: () {UserDataAdd();Navigator.pop(context);},
                    child: Text("Save user"),
                  ),

                  MaterialButton(
                    color: Colors.greenAccent,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
        backgroundColor: const Color.fromARGB(255, 170, 229, 188),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 08, horizontal: 10),

            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactVeiw(user: users[index]),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 204, 232, 222),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Container(
                      child: Image.network(
                        users[index].profileimage != null
                            ? users[index].profileimage!
                            : defoldImage,
                      ),
                    ),
                    title: Text(users[index].name!),
                    subtitle: Text(users[index].email!),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showDialog(
            context: context,
            builder: (context) {
              return UserAdd();
            },
          );
        },
        child: Icon(Icons.dialpad_sharp),
      ),
    );
  }
}
