// sections/about_section.dart
import 'package:flutter/material.dart';
import '../models/portfolio_data.dart';
import '../widgets/section_title.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = MediaQuery.of(context).size.width >= 800;

    return Container(
      // Clean, premium off-white background canvas
      color: const Color(0xFFF9FAFB),
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : 24,
        vertical: 96, // Balanced vertical space
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Reusable section heading widget
          const SectionTitle(text: 'About Me'),
          const SizedBox(height: 32),

          // ── About Content + Education Layout ─────────────────────────────
          isDesktop
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: _buildAboutText()),
                    const SizedBox(width: 80), // Elegant spacing on desktop
                    Expanded(child: _buildEducation()),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildAboutText(),
                    const SizedBox(height: 48),
                    _buildEducation(),
                  ],
                ),

          const SizedBox(height: 64),

          // ── Skills Heading ───────────────────────────────────────────────
          const Text(
            'Technical Toolbox',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827), // Deep professional navy
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 24),

          _buildSkills(),
        ],
      ),
    );
  }

  // ── About Me Paragraph ───────────────────────────────────────────────────
  Widget _buildAboutText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Who I Am',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF111827),
            letterSpacing: -0.3,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          PortfolioData.aboutMe,
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xFF4B5563), // Slate grey text for premium readability
            height: 1.65, // Comfortable typography leading
          ),
        ),
      ],
    );
  }

  // ── Education Card Panel ─────────────────────────────────────────────────
  Widget _buildEducation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Education',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF111827),
            letterSpacing: -0.3,
          ),
        ),
        const SizedBox(height: 16),

        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF000000).withAlpha(10),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Degree Name
                Text(
                  PortfolioData.degree,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF111827),
                  ),
                ),
                const SizedBox(height: 8),

                // University / Institute Name
                Text(
                  PortfolioData.university,
                  style: const TextStyle(
                    color: Color(0xFF2563EB), // Elegant Royal Blue Accent
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 14),

                // Timeline Frame
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today_outlined,
                      size: 14,
                      color: Color(0xFF9CA3AF),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Graduating Class of ${PortfolioData.graduationYear}',
                      style: const TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // ── Technical Skills Grid/Wrap ───────────────────────────────────────────
  Widget _buildSkills() {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: PortfolioData.skills.map((skill) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFF3F4F6),
            border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 6,
                height: 6,
                decoration: const BoxDecoration(
                  color: Color(0xFF9CA3AF),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                skill.name,
                style: const TextStyle(
                  fontSize: 13.5,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF374151),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
