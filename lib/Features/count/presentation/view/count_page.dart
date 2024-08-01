import 'package:flutter/material.dart';
import 'package:sub7a/Features/count/presentation/view/widgets/count_page_body.dart';
import 'package:sub7a/core/utils/colors.dart';

class CountPage extends StatelessWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: red,
        leading: 
          IconButton(
            onPressed: (){}, 
            icon: const Icon(
              Icons.color_lens,
              color: Colors.white,
              )),
        
      ),

      body: const CountPageBody(),
    );
  }
}