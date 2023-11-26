import 'package:go_router/go_router.dart';

import '../features/auth/pages/login.dart';
import '../features/auth/pages/register.dart';
import '../features/course/pages/course_page.dart';
import '../features/courses/pages/home_page.dart';

final GoRouter router = GoRouter(
  routes: [
    // top-level route
    GoRoute(
      path: '/',
      builder: (context, state) => const Login(),
      routes: <RouteBase>[
        GoRoute(
            path: 'register', builder: (context, state) => const Register()),
        GoRoute(
            path: 'homepage',
            builder: (context, state) => const HomePage(),
            routes: [
              GoRoute(
                  path: 'coursepage',
                  builder: (context, state) => const CoursePage())
            ]),
      ],
    ),
  ],
);
