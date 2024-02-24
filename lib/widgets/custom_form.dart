import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: CustomTextField(
                    text: 'Customer name', hintText: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: CustomTextField(
                    text: 'Customer Email', hintText: 'Type customer email')),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomTextField(
                    text: 'Item name', hintText: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTextField(
                  text: 'Item mount',
                  hintText: 'USD',
                  prefixIcon: Icon(Icons.keyboard_arrow_down)),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                textColor: Color(0xff4EB7F2),
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(
                text: 'Send Money',
                backColor: Color(0xff4EB7F2),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
