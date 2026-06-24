// sections/experience_section.dart
//
// The EXPERIENCE section shows a vertical timeline of past roles.
//
// TIMELINE TECHNIQUE:
// Each item has a vertical line on the left, a coloured dot, and then
// the text content to the right. We build this manually using a Row:
//
//   [Line + Dot]  |  [Company / Role / Duration / Description]
//
// A real timeline library (like timeline_tile) could do this more elegantly —
// students can replace this with one as a bonus task!

import 'package:flutter/material.dart';
import '../models/portfolio_data.dart';
import '../widgets/section_title.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = MediaQuery.of(context).size.width >= 800;

    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : 24,
        vertical: 60,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(text: 'Experience'),

          // Build one timeline item per experience entry
          ...PortfolioData.experiences.asMap().entries.map((entry) {
            final int index = entry.key;
            final Experience exp = entry.value;
            final bool isLast = index == PortfolioData.experiences.length - 1;
            return _buildTimelineItem(exp, isLast: isLast);
          }),
        ],
      ),
    );
  }

  // ── Single Timeline Item ────────────────────────────────────────────────────
  Widget _buildTimelineItem(Experience exp, {required bool isLast}) {
    return IntrinsicHeight(
      // IntrinsicHeight makes the Row children adopt the height of the tallest child.
      // Without it, the vertical line (which uses double.infinity height) would fail.
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // ── Left column: dot + vertical line ─────────────────────────────
          SizedBox(
            width: 40,
            child: Column(
              children: [
                // Coloured dot marker
                Container(
                  width: 16,
                  height: 16,
                  decoration: const BoxDecoration(
                    color: Colors.blueGrey,
                    shape: BoxShape.circle,
                  ),
                ),
                // Vertical line connecting to the next item (not shown on last item)
                if (!isLast)
                  Expanded(
                    child: Container(width: 2, color: Colors.blueGrey.shade100),
                  ),
              ],
            ),
          ),

          // ── Right column: text content ─────────────────────────────────
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Position title
                  Text(
                    exp.position,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),

                  // Company name
                  Text(
                    exp.company,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blueGrey.shade700,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),

                  // Duration badge
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      exp.duration,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Description
                  Text(
                    exp.description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
