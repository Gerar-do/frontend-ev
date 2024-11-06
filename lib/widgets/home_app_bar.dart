import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget{
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.all(40),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.all(9),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color:Colors.black26,
                    blurRadius: 6,

                  )
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(
                Icons.sort_rounded,
                size: 28,
              ),
            ),
          ),
          const Row(
            children: [
              Text("Home",
              style: TextStyle(
                fontSize: 18,
                fontWeight:FontWeight.w500,
              ),
              )
            ],
          ),
        ],
      ),
    );
  }
}