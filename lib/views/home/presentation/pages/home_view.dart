import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_business_square/shared/theme/text_theme.dart';
import 'package:the_business_square/views/home/presentation/cubit/home_cubit.dart';

import '../../data/model/HomeModel.dart';

class HomeView extends StatelessWidget {
    HomeView({super.key});
   List<HomeModel> data=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Repos"),
        centerTitle: true,
      ),
      body: BlocConsumer<HomeCubit, HomeState>(
  listener: (context, state) {
    if(state  is FetchHomeSuccess){

      data=state.homeData;
    }
  },
  builder: (context, state) {
    return   state is Loading
        ? Center(
      child: CircularProgressIndicator(),
    )
        : Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsetsDirectional.only(end: 10),
                  padding: EdgeInsets.all(15),
                  height: 93,
                  width: 292,
                  decoration: BoxDecoration(
                      color: Color(0xffE6E6DC),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(image: NetworkImage(data[index].owner?.avatarUrl??""),fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(data[index].fullName??"",style: KTextStyle.of(context).reBody.copyWith(fontSize: 16),)

                    ],
                  ),
                ),
              ),
            ),
            Text("Git Repo", style: KTextStyle.of(context).appBar),
            Expanded(child: ListView.builder(
              itemCount: data.length,

              itemBuilder: (context, index) => Container(
                margin: EdgeInsetsDirectional.only(bottom:  10),
                padding: EdgeInsets.all(15),
                height: 93,
                width: 292,
                decoration: BoxDecoration(
                    color: Color(0xffE6E6DC),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(image: NetworkImage(data[index].owner?.avatarUrl??""),fit: BoxFit.cover)
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(data[index].fullName??"",style: KTextStyle.of(context).reBody.copyWith(fontSize: 16),)

                  ],
                ),
              ),
            )),
          ],
        ),
      );
  },
),
    );
  }
}
