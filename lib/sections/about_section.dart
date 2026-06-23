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
      color: const Color(
        0xFFFAFAFA,
      ), // Crisp off-white premium canvas background
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : 24,
        vertical: 80, // Slightly expanded vertical breathing room
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Reusable section heading widget
          const SectionTitle(text: 'About Me'),
          const SizedBox(height: 24),

          // ── About + Education row/column ────────────────────────────────
          isDesktop
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: _buildAboutText()),
                    const SizedBox(
                      width: 80,
                    ), // Increased spacing for desktop layout
                    Expanded(child: _buildEducation()),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildAboutText(),
                    const SizedBox(height: 40),
                    _buildEducation(),
                  ],
                ),

          const SizedBox(height: 56),

          // ── Skills Heading ──────────────────────────────────────────────────
          const Text(
            'Technical Toolbox',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A1A2E), // Sharp modern heading color
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 20),

          _buildSkills(),
        ],
      ),
    );
  }

  // ── About Me paragraph ─────────────────────────────────────────────────────
  Widget _buildAboutText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Who I Am',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1A1A2E),
          ),
        ),
        const SizedBox(height: 14),
        Text(
          PortfolioData.aboutMe,
          style: const TextStyle(
            fontSize: 15.5,
            color: Colors.redAccent, // Softer on the eyes than absolute black
            height: 1.75, // Comfortable baseline text line-height
          ),
        ),
      ],
    );
  }

  // ── Education block ────────────────────────────────────────────────────────
  Widget _buildEducation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Education',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1A1A2E),
          ),
        ),
        const SizedBox(height: 14),

        // FIXED/UPGRADED: Replaced the basic card layout with a clean minimalist outline panel
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFEFEFEF), width: 1.5),
            boxShadow: [
              BoxShadow(
                color: Colors.green.withAlpha(77),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Degree name
                Text(
                  PortfolioData.degree,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A1A2E),
                  ),
                ),
                const SizedBox(height: 8),

                // University name
                Text(
                  PortfolioData.university,
                  style: const TextStyle(
                    color: Color(0xFF3797EF), // Highlight accent blue color
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 6),

                // Graduation year
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today_outlined,
                      size: 14,
                      color: Colors.black38,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Graduating Class of ${PortfolioData.graduationYear}',
                      style: const TextStyle(
                        color: Colors.black45,
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

  // ── Skills Wrap ────────────────────────────────────────────────────────────
  Widget _buildSkills() {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: PortfolioData.skills.map((skill) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            // Modern translucent badge layout
            color: const Color(0xFF3797EF).withAlpha(56),
            border: Border.all(
              color: const Color(0xFF3797EF).withAlpha(90),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(30), // Pill styling
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Category active blue dot indicator
              Container(
                width: 7,
                height: 7,
                decoration: const BoxDecoration(
                  color: Color(0xFF3797EF),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                skill.name,
                style: const TextStyle(
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1A1A2E),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
