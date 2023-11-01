  import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:grow_more/presentation/screens/add_profile_screen/add_profile_screen.dart';
import 'package:grow_more/presentation/screens/applied_candidate_profile_screen/applied_candidate_profile_screen.dart';
import 'package:grow_more/presentation/screens/deviate_screen/deviate_screen.dart';
import 'package:grow_more/presentation/screens/explore_screen/explore_scree.dart';
import 'package:grow_more/presentation/screens/functional_area_screen/functional_area_screen.dart';
import 'package:grow_more/presentation/screens/job_description_screen.dart/job_description_screen.dart';
import 'package:grow_more/presentation/screens/job_preference_screen/job_preference_screen.dart';
import 'package:grow_more/presentation/screens/otp_screen/otp_screen.dart';
import 'package:grow_more/presentation/screens/recommend_job_screen/recommend_job_screen.dart';
import 'package:grow_more/presentation/screens/recruiter_explore_screen/recruiter_explore_screen.dart';
import 'package:grow_more/presentation/screens/recruiter_job_response_screen/recruiter_job_response_screen.dart';
import 'package:grow_more/presentation/screens/recruiter_job_screen/recruiter_job_screen.dart';
import 'package:grow_more/presentation/screens/recruiter_jobdetails_Screen/recruiter_jobdetails_Screen.dart';
import 'package:grow_more/presentation/screens/recruiter_otp_screen/recruiter_otp_screen.dart';
import 'package:grow_more/presentation/screens/recruiter_profile_screen/recruiter_profile_screen.dart';
import 'package:grow_more/presentation/screens/recruiter_signin_screen/recruiter_signin_screen.dart';
import 'package:grow_more/presentation/screens/resume_screen/resume_screen.dart';
import 'package:grow_more/presentation/screens/sign_in_screen.dart/sign_in_screen.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';

List<GetPage>onAppRouting(){
    return [
      GetPage(name: '/Splash', page: () =>const SplashScreen(),),
      GetPage(name: '/DeviateScreen', page: () =>const DeviateScreen(),),
      GetPage(name: '/ExploreScreen', page: () =>const ExploreScreen(),),
      GetPage(name: '/SignInScreen', page: () => SignInScreen(),),
      GetPage(name: '/OtpScreen', page: () => OtpScreen(),),
      GetPage(name: '/AddProfileScreen', page: () =>const AddProfileScreen(),),
      GetPage(name: '/JobPreferenceScreen', page: () =>const JobPreferenceScreen(),),
      GetPage(name: '/RecommentJobScreen', page: () => RecommentJobScreen(),),
      GetPage(name: '/JobDescriptionScreen', page: () => const JobDescriptionScreen(),),
      GetPage(name: '/FunctionalAreaScreen', page: () => const FunctionalAreaScreen(),),
      GetPage(name: '/RecruiterExploreScreen', page: () => const RecruiterExploreScreen(),),
      GetPage(name: '/RecruiterSignInScreen', page: () =>  RecruiterSignInScreen(),),
      GetPage(name: '/RecruiterOtpScreen', page: () =>  RecruiterOtpScreen(),),
      GetPage(name: '/RecruiterJobDetailScreen', page: () => const RecruiterJobDetailScreen(),),
      GetPage(name: '/RecruiterJobScreen', page: () => const RecruiterJobScreen(),),
      GetPage(name: '/RecruiterJobResponsesScreen', page: () => const RecruiterJobResponsesScreen(),),
      GetPage(name: '/AppliedCandidateProfileScreen', page: () => const AppliedCandidateProfileScreen(),),
      GetPage(name: '/ResumeScreen', page: () => const ResumeScreen(),),
      GetPage(name: '/RecruiterProfileScreen', page: () => const RecruiterProfileScreen(),),
    ];
  }