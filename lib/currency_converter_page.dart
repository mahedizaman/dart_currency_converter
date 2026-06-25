import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatelessWidget {
  const CurrencyConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 53, 48, 11),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                "0",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),

                child: TextField(
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    hintText: "Please enter the amount in USD",
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    hintStyle: TextStyle(color: Colors.black87),
                    prefixIconColor: Colors.black87,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.black38,
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black38, width: 2.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: () => {}, child: const Text("Convert")),
            ],
          ),
        ),
      ),
    );
  }
}
