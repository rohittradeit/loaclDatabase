import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localdatabase/widgets/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var s = true;
  var m = false;
  var l = false;
  var url1 =
      "https://img.freepik.com/free-photo/fresh-coffee-steams-wooden-table-close-up-generative-ai_188544-8923.jpg";
  var url2 =
      "https://media.istockphoto.com/id/1303583671/photo/cup-glass-of-coffee-with-smoke-and-coffee-beans-on-old-wooden-background.jpg?s=612x612&w=0&k=20&c=fAh3m6Hqxz-qeA45Tj2jGARhRiGFhgm80dLVthnvlD8=";
  var url3 =
      "https://images.news18.com/ibnlive/uploads/2022/04/painting-of-filter-coffee.jpg";
bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned.fill(
                            child: Image(
                          image: NetworkImage(s
                              ? url1
                              : m
                                  ? url2
                                  : url3),
                          fit: BoxFit.cover,
                        )),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 35, left: 20, right: 15),
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    isFav = !isFav;
                                    isFav ? Get.snackbar("Favourite", "Added to Favourite",backgroundColor: Colors.white54,duration: const Duration(seconds: 1)) :  Get.snackbar("Favourite", "Remove from Favourite",backgroundColor: Colors.white54,duration: const Duration(seconds: 1));
                                    setState(() {

                                    });
                                  },
                                  child: Container(
                                      height: Get.height * 0.042,
                                      width: Get.width * 0.1,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child:  Icon(Icons.favorite,
                                          color: isFav ? Colors.orange : Colors.white)),
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 30, right: 30, left: 30),
                              height: Get.height * 0.2,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(.6),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(50))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Cappuccino",
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                          SizedBox(
                                            height: Get.height * 0.01,
                                          ),
                                          Text("with Oat Milk",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.white
                                                      .withOpacity(.5),
                                                  decoration:
                                                      TextDecoration.none)),
                                          SizedBox(
                                            height: Get.height * 0.015,
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                              ),
                                              SizedBox(
                                                width: Get.width * 0.015,
                                              ),
                                              Text(
                                                s
                                                    ? "4.2"
                                                    : m
                                                        ? "3.2"
                                                        : "5.0",
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              ),
                                              SizedBox(
                                                width: Get.width * 0.015,
                                              ),
                                              Text(
                                                s
                                                    ? "(4.532)"
                                                    : m
                                                        ? "(2.423)"
                                                        : "(5.753)",
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(.5),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          buildIconContainer(
                                              Icons.coffee, "Coffee"),
                                          SizedBox(
                                            width: Get.width * 0.03,
                                          ),
                                          buildIconContainer(
                                              Icons.water_drop_rounded, "Milk"),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: Get.height * 0.045,
                                        width: Get.width * 0.3,
                                        decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(.9),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            s
                                                ? "Small Roasted"
                                                : m
                                                    ? "Medium Roasted"
                                                    : "Large Roasted",
                                            style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(.6),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                )),
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 20, right: 30),
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Description",
                            style: TextStyle(
                              color: Colors.white.withOpacity(.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          const Text(
                            "A cappuccino is the perfect balance of espresso, steamed milk. This coffee is all about the structure.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          Text(
                            "Size",
                            style: TextStyle(
                              color: Colors.white.withOpacity(.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.001,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildSizeOption("S", s, () {
                                  s = true;
                                  m = false;
                                  l = false;
                                  setState(() {});
                                }),
                                buildSizeOption("M", m, () {
                                  s = false;
                                  m = true;
                                  l = false;
                                  setState(() {});
                                }),
                                buildSizeOption("L", l, () {
                                  s = false;
                                  m = false;
                                  l = true;
                                  setState(() {});
                                }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Expanded(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                color: Colors.white.withOpacity(.6),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const Text(
                                  "\$",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  s
                                      ? "4.20"
                                      : m
                                          ? "5.10"
                                          : "6.20",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Container(
                          height: Get.height * 0.07,
                          width: Get.width * 0.5,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    )),
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
