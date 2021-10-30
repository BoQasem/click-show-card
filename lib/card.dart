import 'package:flutter/material.dart';

class OurCard extends StatefulWidget {
  final String name;
  final String email;
  final String phone;

  const OurCard({Key? key, required this.name, required this.email, required this.phone}) : super(key: key);

  @override
  _OurCardState createState() => _OurCardState();
}

class _OurCardState extends State<OurCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: // First account
      Container(
        width: 350,
        height: 175,
        decoration: const BoxDecoration(
          color: Color(0xFF2196f3),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              // part picture
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      image: const DecorationImage(
                        image: AssetImage("images/picture1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 15),

              // part data
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // name
                  Text(
                    widget.name,
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),

                  // email
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(width: 10),
                      Text(widget.email),
                    ],
                  ),

                  // phone
                  Row(
                    children: [
                      Icon(Icons.call),
                      SizedBox(width: 10),
                      Text(widget.phone),
                    ],
                  ),

                  // foot
                  const SizedBox(height: 35),
                  Row(
                    children: [
                      Image.asset('images/heart.png',
                          width: 23, height: 23),
                      const SizedBox(width: 5),
                      Image.asset('images/heart.png',
                          width: 23, height: 23),
                      const SizedBox(width: 5),
                      Image.asset('images/heart.png',
                          width: 23, height: 23),
                      const SizedBox(width: 20),
                      Image.asset('images/marker.jpeg',
                          width: 23, height: 23),
                      const Text("not boss"),
                      const SizedBox(width: 50),
                      const Icon(Icons.delete),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}