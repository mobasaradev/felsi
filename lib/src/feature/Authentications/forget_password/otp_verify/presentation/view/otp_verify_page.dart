import 'package:felsi/src/core/service/routes/routes.dart';
import 'package:felsi/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OTPVerifyPage extends StatefulWidget {
  const OTPVerifyPage({super.key});

  @override
  State<OTPVerifyPage> createState() => _OTPVerifyPageState();
}

class _OTPVerifyPageState extends State<OTPVerifyPage> {
  final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());

  void _submitOtp() {
    String otp = _controllers.map((controller) => controller.text).join();
    context.pushNamed(Routes.createPassword);
    // Handle OTP submission logic here
    print('Entered OTP: $otp');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify OTP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Enter the 6-digit OTP sent to your email:',
                style: context.textStyle.body16Regular,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: TextField(
                      controller: _controllers[index],
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: const InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder(),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitOtp,
              child: const Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}
