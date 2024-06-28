
import 'package:get/get.dart';

class Languages extends Translations
{
  @override
  Map<String,Map<String,String>> get keys =>
      {
        'en_US' : {
          'internet_exception' : 'we re unable to show results. \n Please check your data \n connection',
          'general_exception' : 'we are unable to process request \n Please try again.',
          'welcome_back' : 'Welcome \n back',
          'login' : 'Login',
          'email_hint' : 'Email',
          'pass_hint' : 'Password',
        },
        'hn_IN' : {
          'email_hint' : 'ईमेल दर्ज करें'
        },
      };
}