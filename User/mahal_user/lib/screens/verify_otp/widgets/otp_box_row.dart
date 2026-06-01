import 'package:flutter/material.dart';

import 'otp_box.dart';

class OtpBoxRow extends StatefulWidget {
  const OtpBoxRow({Key? key}) : super(key: key);

  @override
  State<OtpBoxRow> createState() => _OtpBoxRowState();
}

class _OtpBoxRowState extends State<OtpBoxRow> {
  final List<String> _otpValues = ['', '', '', ''];
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(4, (index) => FocusNode());
  }

  @override
  void dispose() {
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _handleOtpChange(int index, String value) {
    setState(() {
      if (value.isNotEmpty) {
        _otpValues[index] = value;
        // Move to next field if available
        if (index < 3) {
          FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
        }
      } else {
        _otpValues[index] = '';
      }
    });
  }

  void _handleBackspace(int index) {
    setState(() {
      _otpValues[index] = '';
      // Move to previous field if available
      if (index > 0) {
        FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
      }
    });
  }

  String getOtp() {
    return _otpValues.join();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OtpBox(
          focusNode: _focusNodes[0],
          onChanged: (value) => _handleOtpChange(0, value),
          onBackspace: () => _handleBackspace(0),
        ),
        const SizedBox(width: 12),
        OtpBox(
          focusNode: _focusNodes[1],
          onChanged: (value) => _handleOtpChange(1, value),
          onBackspace: () => _handleBackspace(1),
        ),
        const SizedBox(width: 12),
        OtpBox(
          focusNode: _focusNodes[2],
          onChanged: (value) => _handleOtpChange(2, value),
          onBackspace: () => _handleBackspace(2),
        ),
        const SizedBox(width: 12),
        OtpBox(
          focusNode: _focusNodes[3],
          onChanged: (value) => _handleOtpChange(3, value),
          onBackspace: () => _handleBackspace(3),
        ),
      ],
    );
  }
}
