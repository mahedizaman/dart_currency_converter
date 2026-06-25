import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatelessWidget {
  const CurrencyConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                "0",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              TextField(
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  hintText: "Please enter the amount in USD",
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  hintStyle: TextStyle(color: Colors.black87),
                  prefixIconColor: Colors.black87,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black38,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),

              ElevatedButton(onPressed: () => {}, child: const Text("Convert")),
            ],
          ),
        ),
      ),
    );
  }
}
