import 'package:flutter/material.dart';
import 'package:onfinance_assignment/utils/styles.dart';

class CryptoBar extends StatelessWidget {
  const CryptoBar({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return ListTile
    (
      leading: const Icon(Icons.currency_bitcoin),
      subtitle: Text('MATIC',style: Styles.subTitle1,),
      title: const Text('₹94.634'),
      trailing: Container
      (
        child: ElevatedButton
        (
          onPressed: (){},
          style: ElevatedButton.styleFrom
          (
            textStyle: Styles.buttonText,
            backgroundColor: const Color.fromRGBO(255,255,255,1),
            shape: RoundedRectangleBorder
            (
              borderRadius: BorderRadius.circular(5)
            ),
            elevation: 15.0,
          ),
          child: Text
          (
            'Discuss',
            style: Styles.buttonText2,
          ),
        ),
      ),
    );
  }
}