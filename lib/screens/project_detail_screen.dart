import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/project.dart';
import '../theme.dart';

class ProjectDetailScreen extends StatelessWidget {
  final Project project;

  const ProjectDetailScreen({super.key, required this.project});

  bool get _hideHeaderTitle =>
      project.title == 'TetherTasks' || project.title == 'LessonPath Pro';

  bool get _isLessonPathPro => project.title == 'LessonPath Pro';

  Future<void> _openWebsite() async {
    final website = project.website;
    if (website == null) return;

    final uri = Uri.parse(website);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  Widget _buildLessonPathMark({
    required double emblemHeight,
    required double titleSize,
    required double proSize,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: emblemHeight,
          child: ClipRect(
            child: Align(
              alignment: Alignment.centerLeft,
              widthFactor: 0.36,
              child: Image.asset(
                project.logoAsset!,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'LessonPath',
          style: TextStyle(
            fontSize: titleSize,
            fontWeight: FontWeight.w700,
            height: 1,
            color: const Color(0xFF1E3A72),
          ),
        ),
        Text(
          'Pro',
          style: TextStyle(
            fontSize: proSize,
            fontWeight: FontWeight.w700,
            height: 1,
            color: const Color(0xFF1F9D4D),
          ),
        ),
      ],
    );
  }

  Widget _buildHeaderVisual() {
    if (project.logoAsset != null) {
      if (_isLessonPathPro) {
        return Container(
          width: 132,
          height: 132,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.94),
            borderRadius: BorderRadius.circular(28),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.45),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.14),
                blurRadius: 24,
                offset: const Offset(0, 12),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: _buildLessonPathMark(
              emblemHeight: 50,
              titleSize: 18,
              proSize: 28,
            ),
          ),
        );
      }

      final image = Padding(
        padding: EdgeInsets.all(project.logoNeedsSurface ? 12 : 0),
        child: Image.asset(
          project.logoAsset!,
          fit: BoxFit.contain,
          alignment: Alignment.center,
          filterQuality: FilterQuality.high,
          errorBuilder: (context, error, stackTrace) => Icon(
            project.icon,
            size: 64,
            color: Colors.white.withValues(alpha: 0.2),
          ),
        ),
      );

      if (!project.logoNeedsSurface) {
        return SizedBox(
          width: 120,
          height: 120,
          child: image,
        );
      }

      return Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.94),
          borderRadius: BorderRadius.circular(28),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.45),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.14),
              blurRadius: 24,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: image,
      );
    }

    return Icon(
      project.icon,
      size: 64,
      color: Colors.white.withValues(alpha: 0.2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 180,
            pinned: true,
            backgroundColor: project.color,
            foregroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              title: _hideHeaderTitle
                  ? null
                  : Text(
                      project.title,
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      project.color,
                      project.color.withValues(alpha: 0.7),
                    ],
                  ),
                ),
                child: Center(
                  child: _buildHeaderVisual(),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.subtitle,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: project.color,
                    ),
                  ),
                  if (project.website != null) ...[
                    const SizedBox(height: 8),
                    InkWell(
                      onTap: _openWebsite,
                      borderRadius: BorderRadius.circular(8),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 2,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.language_rounded,
                              size: 18,
                              color: project.color,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              project.website!,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: project.color,
                                decoration: TextDecoration.underline,
                                decorationColor: project.color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  const SizedBox(height: 20),
                  _buildDetailCard(
                    title: 'Overview',
                    icon: Icons.description_outlined,
                    child: Text(
                      project.description,
                      style: const TextStyle(
                        fontSize: 14,
                        height: 1.7,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildDetailCard(
                    title: 'Key Highlights',
                    icon: Icons.star_outline_rounded,
                    child: Column(
                      children: project.highlights
                          .map(
                            (h) => Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 4),
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      color:
                                          project.color.withValues(alpha: 0.1),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Icon(
                                      Icons.check_rounded,
                                      size: 14,
                                      color: project.color,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      h,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        height: 1.5,
                                        color: AppColors.textSecondary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildDetailCard(
                    title: 'Tech Stack',
                    icon: Icons.code_rounded,
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: project.tags
                          .map(
                            (tag) => Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 7,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.accentSurface,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: AppColors.divider,
                                ),
                              ),
                              child: Text(
                                tag,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: project.color,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailCard({
    required String title,
    required IconData icon,
    required Widget child,
  }) {
    return Container(
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
          Row(
            children: [
              Icon(icon, size: 18, color: project.color),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          child,
        ],
      ),
    );
  }
}
