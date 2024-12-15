import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../models/article.dart';

class DioController extends GetxController {
   static const String _baseUrl = 'https://newsapi.org/v2/';
  static const String _apiKey = 'YOUR_API'; //Ganti ke API KEY yang sudah didapat
  static const String _category = 'business';
  static const String _country = 'us'; //us maksudnya United States ya

  RxList<Article> articles = RxList<Article>([]);
  RxBool isLoading = false.obs;

  final dio = Dio(); //membuat object dio

  @override
  void onInit() async {
    await fetchArticles();
    super.onInit();
  }

  Future<void> fetchArticles() async{
    try {
      isLoading.value = true; //set loading state to true
      final response = await dio.get('${_baseUrl}top-headlines?country=$_country&category=$_category&apiKey=$_apiKey');
      
      if (response.statusCode == 200) {
        final jsonData = response.data;
        final articlesResult = Articles.fromJson(jsonData);
        articles.value = articlesResult.articles;
      }else{
        print("Request is failed with status ${response.statusCode}");
      }
    } catch (e) {
      print('An error occured: $e');
    }finally{
      isLoading.value = false; //set status loading to false when it done
    }
  }
}