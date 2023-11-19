import 'package:flutter/material.dart';
import 'package:mybio/widgets/features/longtext.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Projects',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          _buildProjectCard(
            'GreenScan',
            'GreenScan, a cutting-edge plant disease detection application, seamlessly integrates the power of Machine Learning and Flutter technology. This innovative mobile app serves as a vital tool for agriculture enthusiasts, farmers, and researchers, empowering them to identify and combat plant diseases effectively. Leveraging advanced ML algorithms, GreenScan analyzes images of plants, providing users with real-time insights into potential diseases, fostering early detection and proactive measures for crop protection. The intuitive Flutter-based user interface ensures a user-friendly experience, making GreenScan an accessible and efficient solution for safeguarding plant health and promoting sustainable agriculture practices.',
            'https://github.com/IshworMoktan/plant_disease_detector',
          ),
          _buildProjectCard(
            'Bookwishes Club',
            'Bookwishes Club serves as an integral part of the personal development institute, seamlessly blending event management expertise with the vibrancy of a social club. It creates a dynamic platform where individuals can not only attend well-organized events but also actively engage in a community dedicated to personal growth and enrichment. The club fosters an environment that goes beyond conventional event management, focusing on holistic development by curating experiences that inspire learning, networking, and meaningful connections. With a mission to cultivate a culture of continuous improvement, Bookwishes Club becomes a cornerstone in the journey towards personal and professional excellence within the institute.',
            'https://play.google.com/store/apps/details?id=com.osin.bookwishes',
          ),
          _buildProjectCard(
            'Foodora',
            'Foodora, a cutting-edge food ordering application, is meticulously crafted using Flutter and Firebase technologies to deliver an unparalleled culinary experience. This app seamlessly blends the power of Flutter'
                's cross-platform capabilities with the robust backend support of Firebase, creating a dynamic and responsive platform for users to explore, select, and order their favorite meals with ease. Leveraging Flutter'
                's expressive UI toolkit, Foodora ensures a visually appealing and intuitive interface, fostering an engaging user experience. Firebase, with its real-time database and authentication features, empowers Foodora with secure and efficient data management. From menu exploration to order placement and delivery tracking, Foodora revolutionizes the food ordering process, setting new standards in convenience, reliability, and user satisfaction.',
            'https://github.com/IshworMoktan/Foodora-app',
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(String title, String description, String url) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrlString(url)) {
          await launchUrlString(
            url,
          );
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              LongText(
                longText: description,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
