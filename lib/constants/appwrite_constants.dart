class AppwriteConstants {
  static const String databaseId = '65e54594d4f02a7e86d2';
  static const String projectId = '65e53069d4fafaa47873';
  static const String endPoint = 'http://localhost/v1';

  static const String usersCollection = '65e54623a22ce431afe9';
  static const String tweetsCollection = '65e546355baa044b1fcf';
  static const String notificationsCollection = '65e54623a22ce431afe9';

  static const String imagesBucket = '65e546515be19f82a929';

  static String imageUrl(String imageId) =>
      '$endPoint/storage/buckets/$imagesBucket/files/$imageId/view?project=$projectId&mode=admin';
}
