import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Login page widgets test', (WidgetTester tester) async {
    // Build our LoginPage widget.
    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    // Verify that email and password TextField widgets are rendered.
    expect(find.byKey(Key('emailField')), findsOneWidget);
    expect(find.byKey(Key('passwordField')), findsOneWidget);

    // Enter text into the email and password fields.
    await tester.enterText(find.byKey(Key('emailField')), 'test@example.com');
    await tester.enterText(find.byKey(Key('passwordField')), 'password123');

    // Tap the login button.
    await tester.tap(find.text('Login'));
    await tester.pump();

    // Verify that after tapping the login button, the login logic is executed.
    // Replace this expectation with the actual logic verification.
    final state = tester.state<_LoginPageState>(find.byType(LoginPage));
    expect(state.loginFunctionCalled, true);
    ;
  });
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool loginFunctionCalled = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Login')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                key: Key('emailField'),
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                key: Key('passwordField'),
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                  loginFunctionCalled = true;
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
