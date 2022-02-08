import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  const ContainerHeader({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: GoogleFonts.openSans(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  )),
              Text(
                subtitle,
                style: GoogleFonts.openSans(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.green,
                ),
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 4, color: Colors.green)),
              child: Icon(
                Icons.cancel,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
