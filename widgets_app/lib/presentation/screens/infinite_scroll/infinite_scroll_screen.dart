import 'package:flutter/material.dart';

class InfiniteScrollSreen extends StatelessWidget {
  static const name = 'infinite_screen';
  const InfiniteScrollSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InfiniteScroll'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          return FadeInImage(
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
            placeholder: AssetImage('assets/image/jar-loading.gif'), 
            image: NetworkImage('https://picsum.photos/id/1/500/300')
            );
        }
      ),
    );
  }
}