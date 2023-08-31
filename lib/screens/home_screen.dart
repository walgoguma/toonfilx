import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/services/api_service.dart';
import 'package:image_network/image_network.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModel>> webtoons = ApiService.getTodayToons();

  @override
  Widget build(BuildContext context) {
    print(webtoons);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.lightGreen[600],
        elevation: 2,
        title: const Text("오늘의 웹툰",
            style: TextStyle(
              fontFamily: 'KopubWorld_Dotum',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(child: makeList(snapshot)),
              ],
            );
          }

          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        debugPrint(webtoon.thumb);

        return Text(webtoon.title);
      },
      separatorBuilder: (context, index) => const SizedBox(width: 30),
    );
  }
}
