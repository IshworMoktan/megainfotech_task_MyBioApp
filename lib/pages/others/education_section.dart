import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Education',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          EducationItem(
            degree: 'Bachelor in Computer Application',
            institution: 'DAV college affilated Tribhuvan University',
            year: '2018 - 2023',
            logo:
                'assets/images/university_logo.png', // Add your university logo asset
          ),
          EducationItem(
            degree: '+2 and SEE',
            institution: 'Shree Bajrabarahi Higher Secondary School',
            year: '2003 - 2018',
            logo: 'assets/images/school_logo.png', // Add your school logo asset
          ),
          // Add more EducationItem widgets for additional education entries
        ],
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String degree;
  final String institution;
  final String year;
  final String logo;

  EducationItem(
      {required this.degree,
      required this.institution,
      required this.year,
      required this.logo});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          logo,
          width: 50.0, // Adjust the width as needed
          height: 50.0, // Adjust the height as needed
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                degree,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                institution,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                year,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ],
    );
  }
}
