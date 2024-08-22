abstract class KEndPoints {
  static const String baseUrl = 'http://www.thebusinessquare.com';

  static const String baseUrlPayment = 'https://accept.paymob.com';
  static const String baseUrlStorage = '$baseUrl/images/';
  static const String login = '$baseUrl/api/login';
  static const String register = '$baseUrl/api/register';
  static const String resetPassword = '$baseUrl/api/reset-password';
  static const String emailVerify = '$baseUrl/api/email-verify';
  static const String forgetPassword = '$baseUrl/api/forget-password';
  static const String profile = '$baseUrl/api/profile';
  static const String categories = '$baseUrl/api/categories';
  static const String addPost = '$baseUrl/api/post-create';
  static const String getPosts = '$baseUrl/api/posts';
  static const String getAllPosts = '$baseUrl/api/posts-user';
  static const String search = '$baseUrl/api/search';
  static const String notifications = '$baseUrl/api/notifications';
  static const String country = '$baseUrl/api/country';
  static const String adminPosts = '$baseUrl/api/posts/';
  static const String changePostStatus = '$baseUrl/api/posts';
  static const String deletePost = '$baseUrl/api/post-delete';
  static const String deleteCategory = '$baseUrl/api/category-delete';
  static const String addNewCat = '$baseUrl/api/category-create';
  static const String updateUserStatus = '$baseUrl/api/user-status';
  static const String profileDetails = '$baseUrl/api/profile-details';
  static const String addNickName = '$baseUrl/api/nickname-create';
  static const String addCompany = '$baseUrl/api/company-create';
  static const String nicknames = '$baseUrl/api/nicknames';
  static const String companies = '$baseUrl/api/companies';
  static const String deleteNicknames = '$baseUrl/api/nickname-delete';
  static const String deleteCompany = '$baseUrl/api/company-delete';
  static const String logout = '$baseUrl/api/logout';
  static const String coin = '$baseUrl/api/packages';
  //static const String iFrame = 'https://accept.paymob.com/api/acceptance/iframes/740714?payment_token=';
  static const String iFrame = 'https://accept.paymob.com/api/acceptance/iframes/740715?payment_token=';
  static const String createPayment = '$baseUrl/api/payments';

  /// payment
  static const String authPayment = '$baseUrlPayment/api/auth/tokens';
  static const String orders = '$baseUrlPayment/api/ecommerce/orders';
  static const String paymentKey = '$baseUrlPayment/api/acceptance/payment_keys';

  ///TODO Chat
  static const String getContacts = '$baseUrl/chatify/api/getContacts';
  static const String sendMessage = '$baseUrl/chatify/api/sendMessage';
  static const String fetchMessages = '$baseUrl/chatify/api/fetchMessages';
  static const String get_live_stream = '$baseUrl/api/lives';
  static const String add_user_live_stream = '$baseUrl/api/add-user';

  //---------------------------------------------------
}
