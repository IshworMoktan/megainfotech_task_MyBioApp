import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Skills',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              _buildSkillChip('Flutter'),
              _buildSkillChip('Dart'),
              _buildSkillChip('UI/UX Design'),
              _buildSkillChip('API Integration'),
              _buildSkillChip('Bloc'),
              _buildSkillChip('Git'),
              _buildSkillChip('html'),
              _buildSkillChip('css'),
              _buildSkillChip('SQLlite'),
              _buildSkillChip('Database'),
              _buildSkillChip('FlutterAnimation'),
              _buildSkillChip('Firebase'),
              _buildSkillChip('Git'),
              _buildSkillChip('html'),
              _buildSkillChip('css'),
              _buildSkillChip('Agile Development'),
              _buildSkillChip('Playstore Deployment'),
              _buildSkillChip('Appstore Deployment'),
              _buildSkillChip('Prompt Engineering'),

              // Add more skills as needed
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSkillChip(String skill) {
    return Chip(
      label: Text(skill),
      backgroundColor: Color.fromARGB(255, 128, 240, 158),
      labelStyle: TextStyle(
        color: Colors.black,
      ),
    );
  }
}
