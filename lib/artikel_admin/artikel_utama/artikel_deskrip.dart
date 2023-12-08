import 'dart:ui';

import 'package:ujicoba_boemil/constans/colors.dart';
//import 'package:ujicoba_boemil/artikel_utama.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:iconly/iconly.dart';

class DeskripArtikel extends StatelessWidget {
  const DeskripArtikel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset("assets/images/GambarDesk.png"),
          ),
          buttonArrow(context),
          scroll(),
        ],
      ),
    ));
  }

  buttonArrow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Color.fromARGB(255, 233, 30, 219),
              ),
            ),
          ),
        ),
      ),
    );
  }

  scroll() {
    return DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 1.0,
        minChildSize: 0.6,
        builder: (context, scrollController) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20)),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 5,
                          width: 35,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "ARTIKEL 1",
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                              fontSize: 20,
                            ) ??
                        TextStyle(fontSize: 20),
                  ),
                  /* const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Food .60 min",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: SecondaryText),
                  ), */
                  /* const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ArtikelBumilUtama(),
                              ));
                        },
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage("assets/images/Avatar3.png"),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Elena Shelby",
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: mainText),
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: primary,
                        child: Icon(
                          IconlyLight.heart,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "273 Likes",
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: mainText),
                      ),
                    ],
                  ), */
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  Text(
                    "Description",
                    textAlign: TextAlign.center,
                    //style: Theme.of(context).textTheme.bodyText2,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Artikel 1',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: SecondaryText,
                          fontSize: 18,
                        ),
                  ),

                  // SPASI
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  /*Text(
                    "Ingredients",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                   const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) => ingredients(context),
                  ), */
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

//
  ingredients(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFFE3FFF8),
            child: Icon(
              Icons.done,
              size: 15,
              color: primary,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "4 Eggs",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }

  steps(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundColor: mainText,
            radius: 12,
            child: Text("${index + 1}"),
          ),
          Column(
            children: [
              SizedBox(
                width: 270,
                child: Text(
                  "Your recipe has been uploaded, you can see it on your profile. Your recipe has been uploaded, you can see it on your",
                  maxLines: 3,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: mainText),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/Rectangle 219.png",
                height: 155,
                width: 270,
              )
            ],
          )
        ],
      ),
    );
  }
}
