import 'package:flutter/material.dart';
import 'package:zuri_news/api/api.dart';
import 'package:zuri_news/model/model.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zuri News',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Zuri News'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //late Future<NewsArticle> news;

  Future<NewsArticle>? news;

  // Future<NewsArticle> getNews() async {
  //   news = (await Api().getNews()) as Future<NewsArticle>?;
  //   print(news);
  //   return Api().getNews();
  //   // print(newsData);
  // }
  //launch News Url
  Future<void> _launchNewsUrl(String newsUrl) async {
    var url = Uri.parse(newsUrl);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  //load the data from api before the app is built in initstate -used with 1st FutureBuilder and 1st Api class
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   news = Api().getNews();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      // body: FutureBuilder<NewsArticle>(
      //   future: news,
      //   builder: (context, snapshot) {
      //     print('Future builder:::::::::::::::::::::::${snapshot.data}}');
      //     if (!snapshot.hasData) {
      //       return const Center(
      //         child: CircularProgressIndicator(
      //           color: Colors.blue,
      //         ),
      //       );
      //     }
      //     if (snapshot.hasData) {
      //       return ListView.builder(
      //         itemCount: snapshot.data!.articles!.length,
      //         itemBuilder: (context, index) {
      //           return ListTile(
      //             leading: CircleAvatar(
      //               backgroundColor: Colors.grey,
      //               backgroundImage: NetworkImage(
      //                   snapshot.data!.articles![index].urlToImage == null
      //                       ? ""
      //                       : snapshot.data!.articles![index].urlToImage!),
      //             ),
      //             title: Text(snapshot.data!.articles![index].title == null
      //                 ? ""
      //                 : snapshot.data!.articles![index].title!),
      //             //   title: Text(snapshot.data![index].title!),
      //             subtitle: Text(snapshot.data!.articles![index].author == null
      //                 ? ""
      //                 : snapshot.data!.articles![index].author!),
      //             trailing: IconButton(
      //               icon: const Icon(Icons.launch),
      //               onPressed: (() async {
      //                 final newsUrl = snapshot.data!.articles![index].url!;
      //                 await _launchNewsUrl(newsUrl);
      //               }),
      //             ),
      //           );
      //         },
      //       );
      //     }
      //     return const Center(
      //       child: CircularProgressIndicator(
      //         color: Colors.red,
      //       ),
      //     );
      //   },
      // ),

      //2nd Future Builder - Uncomment 2nd APi Class snippet to see it work
      body: FutureBuilder(
        future: Api().getNews(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
                child: CircularProgressIndicator(
              color: Colors.blue,
            ));
          } else if (snapshot.hasError) {
            return Text(snapshot.data.toString());
          }
          if (snapshot.hasData) {
            //  return Text("${snapshot.data.toString()}");
            return ListView.builder(
              itemCount: snapshot.data!.length,
              //itemCount: news.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      snapshot.data![index].urlToImage == null
                          ? ""
                          : snapshot.data![index].urlToImage!,
                    ),
                  ),
                  title: Text(snapshot.data![index].title == null
                      ? ""
                      : snapshot.data![index].title!),
                  subtitle: Text(snapshot.data![index].author == null
                      ? ""
                      : snapshot.data![index].author!),
                  trailing: IconButton(
                    icon: const Icon(Icons.launch),
                    onPressed: (() {}),
                  ),
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          );
        },
      ),
    );
  }
}
