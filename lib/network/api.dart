class Urls {
  static String baseUrl = "https://jsonplaceholder.typicode.com";

///// Users /////
  static const String getUsers = '/users';
  static const String getSingleUsers = '/users/';
  static const String addUsers = '/users';
  static const String updateUsers = '/users/';
  static const String deleteUsers = '/users/';

///// Posts /////
  static const String getPosts = '/posts';
  static const String getSinglePosts = '/posts/'; //{id}
  static const String addPosts = '/posts';
  static const String updatePosts = '/posts/'; //{id}
  static const String deletePosts = '/posts/'; //{id}

///// Comments /////
  static const String getComments = '/comments';
  static const String getSingleComments = '/comments/'; //{id}
  static const String addComments = '/comments';
  static const String updateComments = '/comments/'; //{id}
  static const String deleteComments = '/comments'; //{id}

///// Photos /////
  static const String getPhotos = '/photos';
  static const String getSinglePhotos = '/photos/'; //{id}
  static const String addPhotos = '/photos';
  static const String updatePhotos = '/photos/'; //{id}
  static const String deletePhotos = '/photos'; //{id}

///// Albums /////
  static const String getAlbums = '/albums';
  static const String getSingleAlbums = '/albums/'; //{id}
  static const String addAlbums = '/albums';
  static const String updateAlbums = '/albums/'; //{id}
  static const String deleteAlbums = '/albums'; //{id}
}
