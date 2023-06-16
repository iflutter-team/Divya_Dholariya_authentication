import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled/home%20API.dart';
import 'package:untitled/model/photos_Model.dart';
import 'package:untitled/model/post_model.dart';
import 'package:untitled/services/pref_services.dart';
import 'package:untitled/util/pref_resorce.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isload = false;

  //ImageModel? loginUser;
  //List<ImageModel>? alluser;
  ProductModel? productlist;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProductsList();
    //  getLoginUser();
    //getAllUser();
  }

  // Future<void> getImageList() async {
  //   isload=true;
  //   productslist = await HomeScreenApi.getData();
  //
  //   isload=false;
  //   productslist ??=[];
  //   setState(() {});
  // }
  Future<void> getProductsList() async {
    isload = true;
    productlist = await HomeScreenApi.addData();
    isload = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: isload
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
              itemCount: productlist?.products?.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        width: 110,
                        child: Image.network(productlist!
                            .products![index].images!.first
                            .toString()),
                      ),
                      Text(productlist!.products![index].title.toString()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(productlist!.products![index].price.toString()),
                          Text(productlist!.products![index].rating.toString()),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
      // isload?
      //     // Column(
      //     //   children: [
      //     //     ElevatedButton(onPressed: () {
      //     //
      //     //     }, child: Text("Logout"),),
      //     //   ],
      //     // ),
      //
      //     //imagelist == null?
      //          Center(
      //             child: CircularProgressIndicator(),
      //           )
      //         : ListView.builder(
      //             itemCount: productlist?.products!.length,
      //             itemBuilder: (context, index) {
      //              // return Container(
      //              //    height: 200,
      //              //    width: 200,
      //              //    //color: Colors.blue,
      //              //    child: Image.network(productslist![index].url!),
      //              //  );
      //
      //
      //               // return ListTile(
      //               //   leading: Image.network(imagelist![index].url!),
      //               // );
      //               return Text(productlist!.products![index].title!.toString());
      //             },
      //           ),
    );
  }
}
