import 'package:api_call_riverpod/dataprovider/data_provider.dart';
import 'package:api_call_riverpod/models/user_models.dart';
import 'package:api_call_riverpod/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final _data=ref.watch(userdataprovider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Demo"),
      ),
      body: _data.when(
        data: (_data){
          List<UserModels> userlist=_data.map((e) => e).toList();
          return Column(children: [
              Expanded(child: ListView.builder(
                itemCount: userlist.length,
                itemBuilder: (_,index){
                  print("Delivery Number: "+userlist[index].deliveryNumber);
                  return InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen(e: userlist[index]))),
                    child: Card(
                      color: Colors.blueAccent,
                      elevation: 4,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        
                        title: Text("Delivery Number: "+userlist[index].deliveryNumber
                        ,style: TextStyle(color: Colors.white)
                        )
                        
                        
                      ),
                  
                    ),
                  );
                }
                )
              
              )
          ],
          );
        }, 
        error: (err,s) =>Text("Error: "+err.toString()),
        loading: ()=>const Center(
          child: CircularProgressIndicator(),
        )
        )

    );
  }
}