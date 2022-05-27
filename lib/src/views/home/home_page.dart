import 'package:flutter/material.dart';

const greenColor = Color.fromARGB(255, 128, 212, 146);
const secondGrey = Color.fromARGB(255, 86, 88, 93);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final backgroundColor = const Color.fromARGB(255, 32, 32, 57);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _body(context),
            ],
          ),
        ),
      ),
    );
  }
}

_body(context) {
  return Container(
    margin: const EdgeInsets.only(left: 8, right: 0, top: 8),
    child: Column(
      children: <Widget>[
        _headerMenu(),
        _firstMessage(context),
        _category(),
        _liveNow(context),
        _popularStreamers(),
        _caregory(context)
      ],
    ),
  );
}

_headerMenu() {
  const profileImage =
      "https://images.unsplash.com/photo-1542751371-adc38448a05e?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170";
  return Container(
    margin: const EdgeInsets.only(
      right: 8,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
        const CircleAvatar(
          backgroundImage: NetworkImage(
            profileImage,
          ),
          radius: 25,
        ),
      ],
    ),
  );
}

_firstMessage(context) {
  return SizedBox(
    width: double.infinity,
    height: MediaQuery.of(context).size.height / 7,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            "Your Favorite",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Streams",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: greenColor,
            ),
          ),
        ]),
  );
}

_category() {
  return SizedBox(
    width: double.infinity,
    height: 50,
    child: Row(
      children: <Widget>[
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _categoryOptions(),
            ],
          ),
        )
      ],
    ),
  );
}

_categoryOptions() {
  return Row(
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(right: 8),
        width: 50,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: greenColor,
        ),
        child: const Center(
          child: Text(
            "All",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(right: 8),
        width: 60,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: secondGrey,
        ),
        child: const Center(
          child: Text("Esport"),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(right: 8),
        width: 70,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: secondGrey,
        ),
        child: const Center(
          child: Text("Channels"),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(right: 8),
        width: 80,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: secondGrey,
        ),
        child: const Center(
          child: Text("Category"),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(right: 8),
        width: 50,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: secondGrey,
        ),
        child: const Center(
          child: Text("Rank"),
        ),
      ),
      Container(
        width: 80,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: secondGrey,
        ),
        child: const Center(
          child: Text("Popular"),
        ),
      ),
    ],
  );
}

_liveNow(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: 330,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 16,
            bottom: 16,
          ),
          child: const Text(
            "Live Now",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          height: 240,
          margin: const EdgeInsets.only(left: 8),
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _liveExample("ESL_CSGO"),
                    _liveExample("STREAM 2"),
                    _liveExample("STREAM 3"),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

_liveExample(titleStream) {
  const live1 =
      "https://images.unsplash.com/photo-1558742619-fd82741daa99?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZXNwb3J0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500";
  return Stack(
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(right: 20, bottom: 8),
        width: 200,
        height: 300,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
          image: const DecorationImage(
            image: NetworkImage(
              live1,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(
          left: 8,
          top: 8,
        ),
        width: 130,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const CircleAvatar(
              backgroundColor: greenColor,
            ),
            Text(titleStream),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 160, left: 8),
        width: 95,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: greenColor,
        ),
        child: const Center(
          child: Text("55.6k views"),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 190, left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text("ESL ProLeague"),
            Text("Counter-Strike Glo..."),
          ],
        ),
      ),
    ],
  );
}

_popularStreamers() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Popular Streamers",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      SizedBox(
        height: 110,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _popularOptions(),
                  _popularOptions(),
                  _popularOptions(),
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );
}

_popularOptions() {
  return Row(
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(left: 0, right: 8),
        width: 185,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: secondGrey,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 8, right: 4),
              child: const CircleAvatar(
                backgroundColor: greenColor,
                radius: 20,
              ),
            ),
            Container(
              width: 130,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "auronplay",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "9.8M followers",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );
}

_caregory(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: 330,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 16,
            bottom: 16,
          ),
          child: const Text(
            "Top Categories",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          height: 240,
          margin: const EdgeInsets.only(left: 8),
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _caregoryOptions(),
                    _caregoryOptions(),
                    _caregoryOptions(),
                    _caregoryOptions(),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

_caregoryOptions() {
  return Container(
    margin: EdgeInsets.only(right: 8),
    width: 150,
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
          image: NetworkImage(
              "https://earlygame.com/uploads/images/_article3x_webp/64750/cs-go-logo-key-art.webp"),
          fit: BoxFit.cover),
    ),
  );
}
