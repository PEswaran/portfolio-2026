import 'package:flutter/material.dart';
import '../theme.dart';
import 'projects_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeroSection(context),
            _buildAboutSection(),
            _buildSkillsSection(),
            _buildExperienceSection(),
            _buildEducationSection(),
            _buildCertificationsSection(),
            _buildContactSection(),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: AppColors.heroGradient,
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 52),
          child: Column(
            children: [
              Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.accent.withValues(alpha: 0.6),
                    width: 2.5,
                  ),
                  color: AppColors.accent.withValues(alpha: 0.15),
                ),
                child: const Center(
                  child: Text(
                    'PE',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 22),
              const Text(
                'Parveen Eswaran',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Full-Stack Engineer | Multi-Tenant SaaS Architect',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white.withValues(alpha: 0.7),
                  letterSpacing: 0.3,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Groton, MA',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withValues(alpha: 0.45),
                ),
              ),
              const SizedBox(height: 30),
              FilledButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ProjectsScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.rocket_launch_rounded, size: 18),
                label: const Text(
                  'Portfolio Highlights',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.accent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAboutSection() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 32, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle('About'),
          const SizedBox(height: 14),
          _card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'I am a Senior Software Engineer with 10+ years of experience designing '
                  'and architecting scalable cloud applications. My work spans secure '
                  'multi-tenant SaaS platforms, AI-enabled products, and cloud-native '
                  'systems built with strong architecture, clear access controls, and '
                  'thoughtful user experiences.',
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.7,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'That includes products like LessonPath Pro, an AI-powered classroom '
                  'accommodation app that gives students controlled, personalized support '
                  'based on their learning needs without giving unrestricted AI access. I do '
                  'my best work where product thinking, responsible AI, and engineering '
                  'discipline need to work together.',
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.7,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Across products like TetherTasks and prior platform work, I have led '
                  'multi-tenant architecture, modernized monolithic systems into '
                  'microservices, improved operational reliability, and built internal tools '
                  'that helped teams move faster. I am a Certified AWS Cloud Practitioner '
                  'and Microsoft Azure AI Associate focused on turning complex ideas into '
                  'production-ready software.',
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.7,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsSection() {
    final skills = {
      'Cloud & AWS': [
        'AWS Amplify',
        'IAM',
        'Cognito',
        'S3',
        'API Gateway',
        'Bedrock',
      ],
      'Azure': [
        'App Services',
        'Functions',
        'Storage',
        'ARM',
        'Azure OpenAI',
      ],
      'Frontend': [
        'Angular',
        'React',
        'Flutter',
        'Streamlit',
        'Bootstrap',
      ],
      'Languages': [
        'JavaScript',
        'TypeScript',
        'HTML5',
        'CSS3',
        'Python',
      ],
      'DevOps': [
        'Jenkins',
        'Docker',
        'Kubernetes',
        'CI/CD',
        'Artifactory',
      ],
      'Tools': [
        'Git',
        'VS Code',
        'Datadog',
        'Agile/Scrum',
        'Jest',
      ],
    };

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 28, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle('Skills'),
          const SizedBox(height: 14),
          ...skills.entries.map(
            (entry) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: _card(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      entry.key,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: AppColors.accent,
                        letterSpacing: 0.8,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: entry.value
                          .map(
                            (skill) => Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.accentSurface,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                skill,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: AppColors.textSecondary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceSection() {
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

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 28, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle('Experience'),
          const SizedBox(height: 14),
          ...experiences.map(
            (exp) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: _card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
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
                            ],
                          ),
                        ),
                      ],
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
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEducationSection() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 28, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle('Education'),
          const SizedBox(height: 14),
          _card(
            child: Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: AppColors.accentSurface,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.school_rounded,
                    color: AppColors.accent,
                    size: 22,
                  ),
                ),
                const SizedBox(width: 14),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Worcester State University',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Bachelor of Science: Computer Science',
                        style: TextStyle(
                          fontSize: 13,
                          color: AppColors.textMuted,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Worcester, MA',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textFaint,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCertificationsSection() {
    final certs = [
      ('AWS Certified Cloud Practitioner', Icons.cloud_outlined, const Color(0xFFD97706)),
      ('Microsoft Azure AI Associate Engineer', Icons.psychology_outlined, const Color(0xFF2563EB)),
      ('Agile Certified Practitioner (PMI-ACP)', Icons.speed_outlined, const Color(0xFF059669)),
      ('Certified Associate in Project Management', Icons.task_alt_outlined, const Color(0xFF7C3AED)),
    ];

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 28, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle('Certifications'),
          const SizedBox(height: 14),
          ...certs.map(
            (cert) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: _card(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                child: Row(
                  children: [
                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        color: cert.$3.withValues(alpha: 0.08),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(cert.$2, color: cert.$3, size: 20),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        cert.$1,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.verified_rounded,
                      color: cert.$3,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactSection() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 28, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle('Contact'),
          const SizedBox(height: 14),
          _card(
            child: Column(
              children: [
                _contactRow(Icons.email_outlined, 'parveeneswaran@outlook.com'),
                const Divider(height: 20),
                _contactRow(Icons.phone_outlined, '(508) 826-0653'),
                const Divider(height: 20),
                _contactRow(Icons.location_on_outlined, 'Groton, MA 01450'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _contactRow(IconData icon, String text) {
    return Row(
      children: [
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: AppColors.accentSurface,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: AppColors.accent, size: 18),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.textSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title.toUpperCase(),
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w800,
        color: AppColors.textFaint,
        letterSpacing: 1.5,
      ),
    );
  }

  Widget _card({
    required Widget child,
    EdgeInsets padding = const EdgeInsets.all(18),
  }) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.divider, width: 1),
      ),
      child: child,
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
