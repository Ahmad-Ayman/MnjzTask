import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mnjz/core/utils/helpers/extensions.dart';
import 'package:mnjz/features/home/data/models/product_model.dart';

import '../../../../core/utils/components/custom_loading_indicator.dart';
import '../../../../core/utils/components/custom_text.dart';
import '../../../../core/utils/components/custom_text_field.dart';
import '../../../../core/utils/components/error_widget_placeholder.dart';
import '../controllers/home_cubit.dart';
import '../widgets/product_list_item.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  int calculateCrossAxisCount(BuildContext context) {
    // Calculate the cross axis count based on the screen size
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = (screenWidth / 150).floor(); // Adjust as needed
    return crossAxisCount > 0 ? crossAxisCount : 1;
  }

  List<Widget> courses = [
    CircleAvatar(child: Text('AA'),radius: 60,),
    CircleAvatar(child: Text('AA'),radius: 60,),
    CircleAvatar(child: Text('AA'),radius: 60,),
    CircleAvatar(child: Text('AA'),radius: 60,),
    CircleAvatar(child: Text('AA'),radius: 60,),

  ];
@override
  void initState() {
    // TODO: implement initState
  generateListOfIndexes();
  courses.map((e) => buildItem(courses.indexOf(e)));
  for(int i =0 ;i<courses.length ; i++){
    buildItem(i);
  }
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    // Listen to scroll events
    final homeCubit = BlocProvider.of<HomeCubit>(context);

    return Scaffold(

      body: SafeArea(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: routeColumnChildren,
              ),
            ),
          ),
        )
      ),
    );
  }

  List<int> indexesForRoute1 = [];

  List<int> indexesForRoute2 = [];

  List<int> indexesForRoute3 = [];

  List<Widget> routeColumnChildren =[];

  generateListOfIndexes(){
    for(int i=0; i<10;i++) {
      int eq = 1 + (indexesForRoute1.length ) * 3;
      indexesForRoute1.add(eq);
      int eq2 = 2 + (indexesForRoute2.length ) * 3;
      indexesForRoute2.add(eq2);
      int eq3 = 3 + (indexesForRoute3.length ) * 3;
      indexesForRoute3.add(eq3);
    }
  }

  buildItem(index){
    print('index : ${index}');
   if(indexesForRoute1.contains(index)){
     print('I am in route 1');
     routeColumnChildren.add(Align(alignment:Alignment.centerRight,child: SvgPicture.asset('assets/images/route1.svg')));
   }else if (indexesForRoute2.contains(index)){
     print('I am in route 2');
     routeColumnChildren.add(Align(alignment:Alignment.center,child: SvgPicture.asset('assets/images/route2.svg')));
   }else if(indexesForRoute3.contains(index)){
     print('I am in route 3');
     routeColumnChildren.add(Align(alignment:Alignment.centerLeft,child:
     SvgPicture.asset
       ('assets/images/route3.svg')));
   }
  }
}
