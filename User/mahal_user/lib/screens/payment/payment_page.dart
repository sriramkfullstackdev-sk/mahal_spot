import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import 'widgets/booking_info_card.dart';
import 'widgets/card_payment_section.dart';
import 'widgets/payment_header.dart';
import 'widgets/payment_method_tile.dart';
import 'widgets/pay_now_button.dart';
import 'widgets/security_note.dart';
import 'widgets/upi_section.dart';

enum PaymentMethod { upi, card, cash }

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  PaymentMethod selectedMethod = PaymentMethod.upi;
  bool showUpiSection = false;
  bool showCardSection = false;

  final TextEditingController upiController = TextEditingController();
  final TextEditingController cardHolderController = TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();

  @override
  void dispose() {
    upiController.dispose();
    cardHolderController.dispose();
    cardNumberController.dispose();
    expiryController.dispose();
    cvvController.dispose();
    super.dispose();
  }

  void updateMethod(PaymentMethod method) {
    setState(() {
      selectedMethod = method;
      showUpiSection = false;
      showCardSection = false;
    });
  }

void handlePayNow() {

  setState(() {

    /// RESET
    showUpiSection = false;
    showCardSection = false;

    /// OPEN BASED ON SELECTED METHOD
    if (selectedMethod == PaymentMethod.upi) {

      showUpiSection = true;

    } else if (selectedMethod == PaymentMethod.card) {

      showCardSection = true;

    } else if (selectedMethod == PaymentMethod.cash) {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Cash payment selected"),
        ),
      );
    }
  });
}

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double contentWidth = width > 500 ? 500 : width;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: contentWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const PaymentHeader(title: 'Payment Details'),
                  const SizedBox(height: 24),
                  const BookingInfoCard(
                    userName: 'Arun Kumar',
                    mahalName: 'Royal Mahal Spot',
                    bookingDate: '20 Jun 2026',
                    initialAmount: '₹12,000',
                    remainingAmount: '₹4,200',
                    totalAmount: '₹16,200',
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Payment Method',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: PaymentMethodTile(
                          title: 'UPI',
                          icon: Icons.qr_code,
                          isSelected: selectedMethod == PaymentMethod.upi,
                          onTap: () => updateMethod(PaymentMethod.upi),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: PaymentMethodTile(
                          title: 'Card',
                          icon: Icons.credit_card,
                          isSelected: selectedMethod == PaymentMethod.card,
                          onTap: () => updateMethod(PaymentMethod.card),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: PaymentMethodTile(
                          title: 'Cash',
                          icon: Icons.money,
                          isSelected: selectedMethod == PaymentMethod.cash,
                          onTap: () => updateMethod(PaymentMethod.cash),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  PayNowButton(onTap: handlePayNow),
                  if (showUpiSection) ...[
                    const SizedBox(height: 28),
                    UpiSection(
                      controller: upiController,
                      onProceed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('UPI Payment started')),
                        );
                      },
                    ),
                  ],
                  if (showCardSection) ...[
                    const SizedBox(height: 28),
                    CardPaymentSection(
                      cardHolderController: cardHolderController,
                      cardNumberController: cardNumberController,
                      expiryController: expiryController,
                      cvvController: cvvController,
                      onProceed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Card Payment started')),
                        );
                      },
                    ),
                  ],
                  const SizedBox(height: 32),
                  const SecurityNote(),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
