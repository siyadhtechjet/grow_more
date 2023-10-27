  import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:grow_more/presentation/screens/add_profile_screen/add_profile_screen.dart';
import 'package:grow_more/presentation/screens/deviate_screen/deviate_screen.dart';
import 'package:grow_more/presentation/screens/explore_screen/explore_scree.dart';
import 'package:grow_more/presentation/screens/job_preference_screen/job_preference_screen.dart';
import 'package:grow_more/presentation/screens/otp_screen/otp_screen.dart';
import 'package:grow_more/presentation/screens/recommend_job_screen/recommend_job_screen.dart';
import 'package:grow_more/presentation/screens/sign_in_screen.dart/sign_in_screen.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';

List<GetPage>onAppRouting(){
    return [
      GetPage(name: '/Splash', page: () =>const SplashScreen(),),
      GetPage(name: '/DeviateScreen', page: () =>const DeviateScreen(),),
      GetPage(name: '/ExploreScreen', page: () =>const ExploreScreen(),),
      GetPage(name: '/SignInScreen', page: () =>const SignInScreen(),),
      GetPage(name: '/OtpScreen', page: () => OtpScreen(),),
      GetPage(name: '/AddProfileScreen', page: () =>const AddProfileScreen(),),
      GetPage(name: '/JobPreferenceScreen', page: () =>const JobPreferenceScreen(),),
      GetPage(name: '/RecommentJobScreen', page: () => RecommentJobScreen(),),
    ];
  }