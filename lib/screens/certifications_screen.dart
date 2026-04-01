import 'package:flutter/material.dart';
import '../theme.dart';

class CertificationsScreen extends StatelessWidget {
  const CertificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final certs = [
      ('AWS Certified Cloud Practitioner', 'lib/assets/aws-certified-cloud-practitioner.png'),
      ('Microsoft Azure AI Associate Engineer', 'lib/assets/MicrsoftAzureAI.png'),
      ('Agile Certified Practitioner (PMI-ACP)', 'lib/assets/pmi-agile-certified-practitioner-pmi-acp.png'),
      ('Certified Associate in Project Management', 'lib/assets/certified-associate-in-project-management-capm.png'),
    ];

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        backgroundColor: AppColors.heroGradient[0],
        foregroundColor: Colors.white,
        title: const Text(
          'Certifications',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: certs.length,
        itemBuilder: (context, index) {
          final cert = certs[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: AppColors.card,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppColors.divider, width: 1),
              ),
              child: Row(
                children: [
                  Image.asset(
                    cert.$2,
                    width: 56,
                    height: 56,
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.high,
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      cert.$1,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
