import 'package:flutter/material.dart';
import 'package:flutter_project_si5b/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi varCandi;
  const DetailScreen({super.key, required this.varCandi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          // ---------- HEADER -----------
          Stack(
            children: [
              //Gambar Utama
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      varCandi.imageAsset,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 200,
                    ),
                  )),
              //Tombol Back
              Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
              )
            ],
          )
        ],
      ),
    )));
  }
}
