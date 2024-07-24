import 'package:flutter/material.dart';
import 'package:sweet_store/cart.dart';

class Global {
  static ValueNotifier<int> x1 = ValueNotifier(0);
}

class product extends StatelessWidget {
  product({
    super.key,
  });

  ValueNotifier<int> x2 = ValueNotifier(200);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.pink[200],
            ),
            child: Image.asset(
              "image/Rectangle 9.png",
              height: 100,
              width: 50,
            ),
            height: 370,
            width: double.infinity,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Donuts",
                      style: TextStyle(fontSize: 32),
                    ),
                    Text("800 g", style: TextStyle(fontSize: 16)),

                    Container(
                        child: ValueListenableBuilder(
                            valueListenable: x2,
                            builder: (contex, value1, child) {
                              return Center(
                                child: Text(
                                  '$value1',
                                  style: TextStyle(fontSize: 24),
                                ),
                              );
                            })),
                    // Text('200\$', style: TextStyle(fontSize: 16))
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  margin: EdgeInsets.all(16),
                  height: 80,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ValueListenableBuilder(
                            valueListenable: Global.x1,
                            builder: (context, value, child) {
                              return Center(
                                  child: IconButton(
                                      onPressed: () {
                                        Global.x1.value++;
                                      },
                                      icon: Icon(
                                        Icons.add,
                                      )));
                            }),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ValueListenableBuilder(
                            valueListenable: Global.x1,
                            builder: (context, value, child) {
                              return Center(
                                  child: (IconButton(
                                onPressed: () {
                                  if (Global.x1.value > 0) Global.x1.value--;
                                },
                                icon: Icon(Icons.remove),
                              )));
                            }),
                      ),
                      Row(
                        children: [
                          Container(
                              child: ValueListenableBuilder(
                                  valueListenable: Global.x1,
                                  builder: (context, value, child) {
                                    return Center(
                                      child: Text(
                                        '$value',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                    );
                                  })),
                          Text(
                            'spaces',
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Description',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.w100),
                ),
                Text(
                  'dyhcscoifduskowugikhd,xjukfgf yergssidldfdrihdc.xklifdjhjdjdjjjknuhf hfufjd   hrfhfu bhdj jjehgejkhkehf kweowsjkd jkhed,dske kehkkd,eifej jkjuiuf4eyjhcdlifuroh ',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    margin: EdgeInsets.all(16),
                    height: 60,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink[200],
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => cart()));
                      },
                      child: Text(
                        'Add to cart',
                        style: TextStyle(fontSize: 24),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
