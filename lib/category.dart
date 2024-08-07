import 'package:flutter/material.dart';

class categor extends StatelessWidget {
  categor({
    super.key,
    this.name,
    this.photo,
    this.paid,
    this.onTap,
    this.color,
  });
  String? name;
  String? photo;
  String? paid;
  Color? color;
  String? weith;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          color: color!,
        ),
        height: 200,
        width: 180,
        padding: const EdgeInsets.all(10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(photo!),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10),
                width: 150,
                height: 40,
                child: Center(
                  child: Text(
                    paid!,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
