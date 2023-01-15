import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DetalsPage extends StatefulWidget {
  DetalsPage({Key? key}) : super(key: key);

  @override
  State<DetalsPage> createState() => _DetalsPageState();
}

class _DetalsPageState extends State<DetalsPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    var size=mediaQueryData.size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.search),
                ],
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.white,
                child: const Material(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40)),
                ),
              ),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: size.height*0.078,
                    height: size.height*0.078,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Colors.orange,
                          Colors.orange,
                          Colors.red,
                          Colors.red

                        ],
                        begin: Alignment.topLeft,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: const BoxDecoration(),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"),
                        radius: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text("Philip Maccoy",style: TextStyle(fontSize: size.width*0.05),),
                      Text("Project Manager",style: TextStyle(fontSize: size.width*0.04),),
                    ],
                  ),
                ],
              ),
            ),
            pinned: true,
            leading: const Icon(Icons.density_medium),
            expandedHeight: size.height *0.270,
            backgroundColor: Colors.orange,
            systemOverlayStyle:
                const SystemUiOverlayStyle(statusBarColor: Colors.black12),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 18, top: 12),
                  child: Text(
                    "  My tasks",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18, top: 12),
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Material(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(100),
                      child: const Icon(
                        Icons.date_range,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: 1,
            (context, index) {
              return ListTile(
                title: Column(
                  children: [
                    Column(
                      children: [
                        MyConytener(
                          Colors.redAccent,
                          const Text(
                            "To Do",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const Text("5 tasks now . 1started"),
                          const Icon(
                            Icons.watch_later_outlined,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        MyConytener(
                            Colors.orange,
                            const Text(
                              "In Progress",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const Text("1 task now . 1 started"),
                            const Icon(
                              Icons.wb_sunny_outlined,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          height: 12,
                        ),
                        MyConytener(
                            Colors.blue,
                            const Text(
                              "Done",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const Text("18 task now . 18 completed"),
                            const Icon(
                              Icons.skip_next_sharp,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 3.0,
            childAspectRatio: 0.8,
            children: [
              MyGrid(
                  Colors.teal,
                  const Text(
                    "Medical App",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  const Text(
                    "9 hours progress",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text("25 %",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  0.25),
              MyGrid(
                  Colors.redAccent,
                  const Text(
                    "Sport App",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  const Text("40 hours progress",
                      style: TextStyle(color: Colors.white)),
                  const Text(
                    "75 %",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  0.75),
              MyGrid(
                  Colors.orangeAccent,
                  const Text(
                    "Rent App",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  const Text("18 hours progress",
                      style: TextStyle(color: Colors.white)),
                  const Text("60 %",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  0.60),
              MyGrid(
                  Colors.blueAccent,
                  const Text(
                    "Bank App",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  const Text("18 hours progress",
                      style: TextStyle(color: Colors.white)),
                  const Text("48 %",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  0.48),
            ],
          ),
        ],
      ),
    );
  }
}

Widget MyConytener(Color color, Text text, Text text2, Icon icon){
  return Row(
    children: [
      SizedBox(
        height: 50,
        width: 50,
        child: Material(
          color: color,
          borderRadius: BorderRadius.circular(100),
          child: icon,
        ),
      ),
      const SizedBox(
        width: 12,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [text, text2],
      ),
    ],
  );
}



Widget MyGrid(Color color, Text text, Text text2, Text prisend, double int) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 160,
      height: 240,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(34),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircularPercentIndicator(
            radius: 30,
            center: prisend,
            percent: int,
            backgroundColor: Colors.black12,
            progressColor: Colors.white,
          ),
          const Spacer(),
          text,
          text2,
        ],
      ),
    ),
  );
}
