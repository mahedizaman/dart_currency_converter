import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});
  @override
  State<CurrencyConverterPage> createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 9, 14, 33),
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Currency Converter",
            style: TextStyle(
              color: Colors.white38,
              fontWeight: FontWeight(700),
              fontSize: 24,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 53, 48, 11),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                'BDT - ${result.toString()}',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),

                child: TextField(
                  controller: textEditingController,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    hintText: "Please enter the amount in USD",
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    hintStyle: TextStyle(color: Colors.black87),
                    prefixIconColor: Colors.black87,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black38,
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black38, width: 2.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              TextButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 125;
                    print(result);
                  });
                },
                style: TextButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 40, 32, 8),
                  backgroundColor: const Color.fromARGB(255, 203, 243, 249),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                child: Text("Convert"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
