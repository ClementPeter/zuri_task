import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:zuri_news/model/model.dart';
import 'dart:convert';
import 'package:zuri_news/utils/error.dart';

//Try this out - works with 1ST Future Builder
// class Api {
//   Future<NewsArticle> getNews() async {
//     try {
//       final response = await http.get(Uri.parse(
//           "https://newsapi.org/v2/everything?q=tesla&from=2022-12-27&sortBy=publishedAt&apiKey=0b77311fbbdc4605a599dc487655f65c"));

//       // print('Status Code:::::::::::::::::::::::::::${response.statusCode}}');

//       if (response.statusCode == 200) {
//         final json = jsonDecode(response.body);
//         // print('Success:::::::::::::::::::::::::::${response.body.length}}');
//         // return newsArticleFromJson(json); // This wont work...Fr I.....
//         return NewsArticle.fromJson(json);
//       } else {
//         print('Not 200:::::::::::::::::::::::::::${response.body}}');
//         print(
//             'Error from JSON:::::::::::::::::::::::::::${response.statusCode}}');
//         throw Errorx(message: "Url Error");
//       }
//     } on SocketException {
//       throw Errorx(message: 'No Internet Connection');
//     } catch (error) {
//       throw Errorx(message: "Unknown Error::::::::::::::::::::$error");
//     }
//     // return null;
//   }
// }

//Try this out - works with 2ND Future Builder
class Api {
  Future<List<Article>?> getNews() async {
    try {
      //Change the Date incase API refuse to bring results
      final response = await http.get(Uri.parse(
          "https://newsapi.org/v2/everything?q=tesla&from=2022-12-27&sortBy=publishedAt&apiKey=0b77311fbbdc4605a599dc487655f65c"));
      if (response.statusCode == 200) {
        final Iterable json = jsonDecode(response.body)["articles"];
        print('JSON :::::::::::::::::::::::::::$json');
        return json.map((article) => Article.fromJson(article)).toList();
      } else {
        print(response.body);
        print('Error:::::::::::::::::::::::::::${response.body}}');
        throw Errorx(message: "Url Error");
      }
    } on SocketException {
      throw Errorx(message: 'No Internet Connection');
    } catch (error) {
      throw Errorx(message: "Unknown Error");
    }
    // return null;
  }
}
