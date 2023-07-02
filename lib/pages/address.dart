import 'package:flutter/material.dart';
import 'package:bip39/bip39.dart' as bip39;

class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // String hdPath = "m/44'/60'/0'/0";
    String randomMnemonic = bip39.generateMnemonic();
    String seed = bip39.mnemonicToSeedHex(randomMnemonic);
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          child: Column(children: [
            Text(
              'Mnemonic',
              textScaleFactor: 2,
              selectionColor: Color.fromARGB(255, 100, 42, 42),
            ),
            Container(
              width: 200,
            ),
            Text(
              randomMnemonic,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              seed,
            ),
          ]),
          padding: EdgeInsets.symmetric(
            horizontal: 80,
            vertical: 100,
          ),
        ),
      ),
    );
  }
}
