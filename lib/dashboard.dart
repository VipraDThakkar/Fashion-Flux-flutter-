import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  static final data =["Men","T-Shirt","Jeans","Shoes"];
  String initial = data.first.toString();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Fashion Flux"),
        actions: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.person)),
              IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
            ],
          ),
        ],
         // bottom:TabBar(tabs: [
           // DropdownButton(
           //   value: initial,
           //   items: data.map((String items){
           //     return DropdownMenuItem(
           //       value: items,
           //    child: Text("$items"),
           //    // child:  OnHover(
           //    //  builder:(isHovered){
           //    //    return Text("$items")
           //    //  }
           //    //  )
           //     );
           //     }).toList(),
           //   onChanged: (String? value) {
           //     setState(() {
           //       initial=value!;
           //     });
           //   },
           // )
          //])

      ),
    ));
  }
}
