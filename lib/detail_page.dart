import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Map<String, dynamic>> list = [
    {
      'image': 'assets/images/peach.png',
      'name': 'Peach',
      'detail': 'Spain',
      'price': '\$3.15',
      'weight': '(kg)',
      'color': Colors.deepOrangeAccent.withOpacity(0.3),
    },
    {
      'image': 'assets/images/basil.png',
      'name': 'Basil',
      'detail': 'Italy',
      'price': '\$1.50',
      'weight': '(pc)',
      'color': Colors.greenAccent.withOpacity(0.3),
    },
    {
      'image': 'assets/images/pumpkin.png',
      'name': 'Pumpkin',
      'detail': 'Ukraine',
      'price': '\$3.50',
      'weight': '(kg)',
      'color': Colors.orange.withOpacity(0.3),
    },
    {
      'image': 'assets/images/tomato.png',
      'name': 'Tomato',
      'detail': 'Holland',
      'price': '\$5.75',
      'weight': '(kg)',
      'color': Colors.red.withOpacity(0.4),
    },
  ];

  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_outlined,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'My Cart',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/girl1.png',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          color: list[index]['color'],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Image.asset(
                            list[index]['image'],
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            list[index]['name'],
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            list[index]['detail'],
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            list[index]['price'],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Counter(),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                list[index]['weight'],
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 17),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.lime.shade800,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Total:',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
                          Text(
                            '\$13.90',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Container(
                            height: 40,
                            width: 110,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                    color: Colors.lime.shade800,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
          ),
          child: InkWell(
            onTap: () {
              setState(
                () {
                  counter++;
                },
              );
            },
            child: Icon(
              Icons.add,
            ),
          ),
        ),
        SizedBox(
          width: 3,
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.green.shade50,
          ),
          child: Center(
            child: Text(
              '$counter',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 3,
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
          ),
          child: InkWell(
            onTap: () {
              if (counter > 1) {
                setState(
                  () {
                    counter--;
                  },
                );
              }
            },
            child: Icon(
              Icons.remove,
            ),
          ),
        ),
      ],
    );
  }
}
