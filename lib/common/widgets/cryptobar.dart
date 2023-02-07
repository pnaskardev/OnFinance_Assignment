import 'package:flutter/material.dart';
import 'package:onfinance_assignment/utils/styles.dart';

class CryptoBar extends StatelessWidget {
  const CryptoBar({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return ClipRRect
    (
      borderRadius: const BorderRadius.only
      (
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15.0)
      ),
      child: Container
      (
        color: Colors.black,
        child: ListTile
        (
          leading: const Icon(Icons.currency_bitcoin),
          subtitle: Text('MATIC',style: Styles.subTitle1,),
          title: const Text('₹94.634'),
          trailing: ElevatedButton
          (
            onPressed: (){},
            style: ElevatedButton.styleFrom
            (
              textStyle: Styles.buttonText,
      
              backgroundColor: Theme.of(context).primaryColor,
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
      ),
    );
  }
}