// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// final counterProvider = StateProvider((ref) => 0);
// final ageProvider = StateProvider((ref)=>12);
// class HomeScreen extends ConsumerWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context,WidgetRef ref) {
//     print('build');
//     return  Scaffold(
//       appBar: AppBar(
//         title: Text('LearnProvider'),
//       ),
//       body: Column(
//         children: [
//           Consumer(
//             builder: (BuildContext context, WidgetRef ref, Widget? child) {
//               print('build2');
//              final counter = ref.watch(counterProvider);
//              return Center(
//                child: Text('$counter'),
//              );
//             },
//
//           ),
//           GestureDetector(onTap: (){
//             ref.read(counterProvider.notifier).state--;
//           },child: Text('-')),
//           GestureDetector(onTap: (){
//             ref.read(counterProvider.notifier).state++;
//           },child: Text('+')),
//
//           Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
//             print('build3');
//             return   Text('Age : ${ref.watch(ageProvider)}');
//           },),
//
//           GestureDetector(onTap: (){
//             ref.read(ageProvider.notifier).state--;
//           },child: Text('-')),GestureDetector(onTap: (){
//             ref.read(ageProvider.notifier).state++;
//           },child: Text('+')),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_learn/screen/controller.dart';
import 'package:river_pod_learn/widget/item_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final i = ref.watch(ItemProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(ItemProvider.notifier).addItem();
          });
        },
      ),

      appBar: AppBar(
        title: Text('LearnProvider'),
      ),
      body: Column(
        children: [
         i.searchList.isEmpty?Center(child: Text("no Data available")): Expanded(child: ListView.builder(itemBuilder: (context,index){
            return ItemWidget(title: i.searchList[index].name, isFavourite: i.searchList[index].isFavourite);
          },itemCount: i.searchList.length,
          )),

        ]

      ),
    );
  }
}

