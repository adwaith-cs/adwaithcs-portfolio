// sections/projects_section.dart
import 'package:flutter/material.dart';
import '../models/portfolio_data.dart';
import '../widgets/project_card.dart';
import '../widgets/section_title.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isDesktop = screenWidth >= 800;

    return Container(
      // Ultra-clean Slate / Off-white background canvas
      color: const Color(0xFFF8FAFC),
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : 24,
        vertical: 96, // Premium breathing space
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(text: 'Projects'),
          const SizedBox(height: 36),

          // ── Advanced Responsive Grid ─────────────────────────────────────
          // LayoutBuilder listens precisely to parent box constraints to
          // adapt cross-axis alignments beautifully.
          LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount;
              double spacing;

              if (constraints.maxWidth >= 1000) {
                crossAxisCount = 3; // Wide Desktop Grid
                spacing = 28;
              } else if (constraints.maxWidth >= 640) {
                crossAxisCount = 2; // Tablet or Compact Laptop Grid
                spacing = 24;
              } else {
                crossAxisCount = 1; // Native Mobile Column
                spacing = 20;
              }

              return _buildResponsiveGrid(crossAxisCount, spacing);
            },
          ),
        ],
      ),
    );
  }

  // ── Optimized Grid Builder ───────────────────────────────────────────────
  // Replaces slow manual row chunking logic with standard high-performance GridView
  Widget _buildResponsiveGrid(int crossAxisCount, double spacing) {
    final List<Project> projects = PortfolioData.projects;

    return GridView.builder(
      // Allows the grid to size itself to content safely within single-page scrolls
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: spacing,
        crossAxisSpacing: spacing,
        // Enforces a highly stable aesthetic proportion across layout variations
        childAspectRatio: 1.35,
      ),
      itemBuilder: (context, index) {
        return ProjectCard(project: projects[index]);
      },
    );
  }
}
