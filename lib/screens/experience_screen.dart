import 'package:flutter/material.dart';
import '../theme.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final experiences = [
      _ExperienceItem(
        company: 'TetherTasks',
        role: 'Full-Stack Engineer | Technical Founder',
        location: 'Remote',
        period: 'Jan 2026 - Present',
        highlights: [
          'Architecting secure multi-tenant SaaS platform from the ground up',
          'Built with React, TypeScript, AWS Amplify, DynamoDB, and Cognito',
          'Role-based access control with tenant isolation by design',
          'Stripe integration for subscription billing',
        ],
      ),
      _ExperienceItem(
        company: 'ZoomInfo',
        role: 'Senior Software Engineer / Technical Team Lead',
        location: 'Waltham, MA',
        period: 'May 2022 - Feb 2025',
        highlights: [
          'Led monolith-to-microservices transition, improving scalability across global teams',
          'Built internal SRE lookup tool, reducing response time by 20-30%',
          'Built Datadog dashboards reducing downtime by 30%',
          'Mentored junior engineers in skill development',
        ],
      ),
      _ExperienceItem(
        company: 'Waters Technologies',
        role: 'Senior Software Engineer',
        location: 'Milford, MA',
        period: 'Apr 2018 - Apr 2022',
        highlights: [
          'Integrated embedded devices with kiosk UIs via event buses on Docker/K8s',
          'Created reusable UI library saving 200+ dev hours/month',
          'Enhanced UX on patented instrument devices',
        ],
      ),
      _ExperienceItem(
        company: 'MIT Lincoln Laboratory',
        role: 'Software Engineer',
        location: 'Lexington, MA',
        period: 'Nov 2015 - Mar 2018',
        highlights: [
          'UI Developer for proprietary data discovery & collaboration tool',
          'Android Developer for mobile planning & estimation tool',
          'Built data visualization & video analytics features',
        ],
      ),
      _ExperienceItem(
        company: 'Small Business Insurance Agency',
        role: 'Web Developer',
        location: 'Worcester, MA',
        period: 'Mar 2010 - Jan 2015',
        highlights: [
          'Built front-end components with AngularJS + .NET REST APIs',
          'Automated insurance application packets, reducing prep time by 30%',
        ],
      ),
    ];

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        backgroundColor: AppColors.heroGradient[0],
        foregroundColor: Colors.white,
        title: const Text(
          'Experience',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: experiences.length,
        itemBuilder: (context, index) {
          final exp = experiences[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: AppColors.card,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppColors.divider, width: 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exp.company,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    exp.role,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.accent,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${exp.location}  \u00b7  ${exp.period}',
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.textFaint,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(height: 1),
                  ),
                  ...exp.highlights.map(
                    (h) => Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 7, right: 10),
                            child: CircleAvatar(
                              radius: 2.5,
                              backgroundColor: AppColors.accent,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              h,
                              style: const TextStyle(
                                fontSize: 13,
                                height: 1.5,
                                color: AppColors.textMuted,
                              ),
                            ),
                          ),
                        ],
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

class _ExperienceItem {
  final String company;
  final String role;
  final String location;
  final String period;
  final List<String> highlights;

  const _ExperienceItem({
    required this.company,
    required this.role,
    required this.location,
    required this.period,
    required this.highlights,
  });
}
