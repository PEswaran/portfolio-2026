import 'package:flutter/material.dart';

class Project {
  final String title;
  final String subtitle;
  final String description;
  final List<String> highlights;
  final List<String> tags;
  final IconData icon;
  final String? logoAsset;
  final bool logoNeedsSurface;
  final String? website;
  final Color color;

  const Project({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.highlights,
    required this.tags,
    required this.icon,
    this.logoAsset,
    this.logoNeedsSurface = false,
    this.website,
    required this.color,
  });
}

const List<Project> portfolioProjects = [
  Project(
    title: 'TetherTasks',
    subtitle: 'Multi-Tenant Task Management Platform',
    description:
        'A full-stack SaaS platform for operators who run multiple companies. '
        'TetherTasks lets consultants, agencies, franchise operators, and serial entrepreneurs '
        'manage organizations, workspaces, task boards, and team execution from a single login. '
        'Built on AWS with role-based access control, data isolation, and tiered subscription plans.',
    highlights: [
      'Multi-tenant hierarchy: Tenant > Org > Workspace > Board > Task',
      'Role-based access with 5 distinct roles and Cognito auth',
      'Kanban boards with drag-and-drop task management',
      '8 AWS Lambda functions for backend mutations',
      'Stripe integration for subscription billing',
      'Real-time notifications and audit logging',
    ],
    tags: ['React', 'TypeScript', 'AWS Amplify', 'DynamoDB', 'Cognito', 'Lambda'],
    icon: Icons.dashboard_rounded,
    logoAsset: 'lib/assets/tethertasks_logo.png',
    logoNeedsSurface: true,
    website: 'https://www.tethertasks.com',
    color: Color(0xFF7B5E57),
  ),
  Project(
    title: 'LessonPath Pro',
    subtitle: 'AI-Powered Differentiated Learning Platform',
    description:
        'An EdTech platform that leverages AI to create personalized learning paths for students. '
        'Built with Flutter for cross-platform delivery and integrated with AWS Bedrock for '
        'intelligent content recommendations and adaptive assessments.',
    highlights: [
      'AI-driven personalized learning paths',
      'Real-time progress tracking dashboards',
      'AWS Amplify backend with Cognito auth',
      'Cross-platform Flutter application',
    ],
    tags: ['Flutter', 'AWS Bedrock', 'Amplify', 'AI/ML', 'EdTech'],
    icon: Icons.school_rounded,
    logoAsset: 'lib/assets/lessonpathpro_logo.png',
    website: 'http://amzn-lessonpathpro-bucket.s3-website-us-east-1.amazonaws.com',
    color: Color(0xFF5D6D7E),
  ),
  Project(
    title: 'Microservices Migration',
    subtitle: 'Monolith to Microservices Architecture',
    description:
        'Led the architectural transition of a large-scale monolithic application to a '
        'microservices-based system at ZoomInfo. Improved scalability and reliability while '
        'coordinating development efforts across global teams.',
    highlights: [
      'Decomposed monolith into domain services',
      'Docker & Kubernetes deployment pipeline',
      'Datadog monitoring dashboards',
      'Reduced downtime by 30%',
    ],
    tags: ['Microservices', 'Docker', 'Kubernetes', 'CI/CD', 'Datadog'],
    icon: Icons.hub_rounded,
    color: Color(0xFF4F6F6C),
  ),
  Project(
    title: 'SRE Lookup Tool',
    subtitle: 'Internal Platform Plugin for Customer Support',
    description:
        'Built an internal lookup tool as a platform plugin at ZoomInfo, enabling Site Reliability '
        'Engineers to resolve customer inquiries faster and streamline access to product associations.',
    highlights: [
      'Platform plugin architecture',
      'Reduced SRE response time by 20-30%',
      'Streamlined product association lookup',
      'Integrated with internal tooling ecosystem',
    ],
    tags: ['Angular', 'TypeScript', 'Platform Engineering', 'SRE'],
    icon: Icons.search_rounded,
    color: Color(0xFF8A6F4D),
  ),
  Project(
    title: 'Kiosk Application',
    subtitle: 'Embedded Device UI for Scientific Instruments',
    description:
        'Enhanced user experience on patented instrument devices at Waters Technologies through '
        'new feature implementations and a kiosk application. Integrated embedded device code '
        'with front-end kiosk devices using event buses.',
    highlights: [
      'Embedded device integration via event buses',
      'Docker & Kubernetes infrastructure',
      'Reusable in-house UI component library',
      'Saved 200+ dev hours/month with shared components',
    ],
    tags: ['Angular', 'Docker', 'Embedded', 'Kiosk', 'IoT'],
    icon: Icons.precision_manufacturing_rounded,
    color: Color(0xFF6B5B7A),
  ),
  Project(
    title: 'Data Discovery Tool',
    subtitle: 'Proprietary Collaboration & Analytics Platform',
    description:
        'Developed a proprietary data discovery and collaboration tool at MIT Lincoln Laboratory. '
        'Built with modern web technologies focusing on video analytics and data visualization '
        'to produce production-quality outputs.',
    highlights: [
      'Data discovery & collaboration features',
      'Video analytics integration',
      'Built with AngularJS, jQuery, HTML/CSS',
      'Production-quality analytical outputs',
    ],
    tags: ['AngularJS', 'jQuery', 'Analytics', 'Data Viz'],
    icon: Icons.analytics_rounded,
    color: Color(0xFF4E6A78),
  ),
];
