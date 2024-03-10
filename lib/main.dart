import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:splitpro/screens/add_expense_screen.dart';
import 'package:splitpro/screens/group_screen.dart';
import 'package:splitpro/screens/group_details_screen.dart';
import 'package:splitpro/screens/manage_budgted_entry_screen.dart';
import 'package:splitpro/screens/add_group_screen.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'models/ModelProvider.dart';
import 'amplifyconfiguration.dart';
import 'screens/onboarding/onboarding-onboarding-1.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _configureAmplify();
  runApp(const MyApp());
}

Future<void> _configureAmplify() async {
  try {
    // Create the API plugin.
    //
    // If `ModelProvider.instance` is not available, try running
    // `amplify codegen models` from the root of your project.
    final api = AmplifyAPI(modelProvider: ModelProvider.instance);

    // Create the Auth plugin.
    final auth = AmplifyAuthCognito();

    // Add the plugins and configure Amplify for your app.
    await Amplify.addPlugins([api, auth]);
    await Amplify.configure(amplifyconfig);

    safePrint('Successfully configured');
  } on Exception catch (e) {
    safePrint('Error configuring Amplify: $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // GoRouter configuration
  static final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => Onboarding1(),
      ),
      GoRoute(
        path: '/manage-budget-entry',
        name: 'manage',
        builder: (context, state) => ManageBudgetEntryScreen(
          budgetEntry: state.extra as BudgetEntry?,
        ),
      ),
      GoRoute(
        path: '/manage-group-entry',
        name: 'manage-group',
        builder: (context, state) => ManageGroupScreen(
          expenseGroup: state.extra as ExpenseGroup?,
        ),
      ),
      GoRoute(
        path: '/group-details',
        name: 'group-details',
        builder: (context, state) => GroupDetailsScreen(
          expenseGroup: state.extra as ExpenseGroup,
        ),
      ),
      GoRoute(
        path: '/add-expense',
        name: 'add-expense',
        builder: (context, state) => AddExpenseScreen(
          expenseGroup: state.extra as ExpenseGroup,
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp.router(
        routerConfig: _router,
        debugShowCheckedModeBanner: false,
        builder: Authenticator.builder(),
      ),
    );
  }
}
