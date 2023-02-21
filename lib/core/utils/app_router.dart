import 'package:go_router/go_router.dart';
import 'package:tawsel_driver/features/SplashScreen/SplashScreen.dart';
import 'package:tawsel_driver/features/wallet/presentation/views/wallet_view.dart';
import '../../features/Notification/presentation/view/widget/notification.dart';
import '../../features/Profile/Presentation/Views/change_current_password_screen.dart';
import '../../features/SignLog/presentation/views/SignIn.dart';
import '../../features/home/presentation/views/bottom_navigation_bar_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/views/orders_history_view.dart';
import '../../features/order details/Presentation/Views/order_details.dart';
import '../../features/rest password/presentation/views/homescreen.dart';
import '../../features/rest password/presentation/views/newpassword.dart';


abstract class AppRouter {
  static const kBottomNavigationBarPage = '/BottomNavigationBarPage';
  static const kHomePage = '/HomeView';
  static const kOrderDetailsPage = '/OrderDetailsPage';
  static const kProfilePage = '/ProfilePage';
  static const kRestPasswordPage = '/RestPasswordPage';
  static const kSignInPage = '/SignInPage';
  static const kNewPasswordPage = '/NewPasswordPage';
  static const kChangeCurrentPasswordPage = '/ChangeCurrentPasswordPage';
  static const kNotificationPage = '/NotificationPage';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const ChangePassword(),
        /*SplashView()*/
      ),
      GoRoute(
        path: kSignInPage,
        builder: (context, state) => SignIn(),
      ),
      GoRoute(
        path: kBottomNavigationBarPage,
        builder: (context, state) => const BottomNavigationBarView(),
      ),
      GoRoute(
        path: kHomePage,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kOrderDetailsPage,
        builder: (context, state) => const OrderDetails(),
      ),
      // GoRoute(
      //   path: kProfilePage,
      //   builder: (context, state) => const ProfileScreen(),
      // ),
      GoRoute(
        path: kChangeCurrentPasswordPage,
        builder: (context, state) => const ChangePassword(),
      ),
      GoRoute(
        path: kNotificationPage,
        builder: (context, state) => const notification(),
      ),
      GoRoute(
        path: kRestPasswordPage,
        builder: (context, state) => const Homescreen(),
      ),
      GoRoute(
        path: kNewPasswordPage,
        builder: (context, state) => const NewPassword(),
      ),
    ],
  );
}
