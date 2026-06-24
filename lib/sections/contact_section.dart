// sections/contact_section.dart
//
// The CONTACT section displays social/contact links.
//
// Each link is shown as a row with:
//   [Icon]  [Label]  [Value]
//
// We use dart:html (available on Flutter Web with no extra packages)
// to open URLs. On non-web targets this is conditionally ignored.
//
// NOTE FOR STUDENTS:
// dart:html only works on Flutter Web. If you later add mobile support,
// replace the _launchUrl helper with the url_launcher package.

// ignore: avoid_web_libraries_in_flutter
import 'dart:io' as html;
import 'dart:html' as html;
import 'package:flutter/material.dart';
import '../models/portfolio_data.dart';
import '../widgets/section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = MediaQuery.of(context).size.width >= 800;

    return Container(
      color: Colors.blueGrey.shade50,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : 24,
        vertical: 60,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(text: 'Contact'),

          const Text(
            "Let's work together! Reach out via any of the channels below.",
            style: TextStyle(fontSize: 15, color: Colors.black54, height: 1.6),
          ),

          const SizedBox(height: 32),

          // --- Contact Items & Photo ---
          isDesktop
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: _buildPhoto(isDesktop),
                    ), // Photo on the left for desktop
                    const SizedBox(width: 80),
                    Expanded(
                      flex: 2,
                      child: _buildContactList(context),
                    ), // Contact list on the right for desktop
                  ],
                )
              : Column(
                  children: [
                    _buildPhoto(isDesktop), // Photo on top for mobile
                    const SizedBox(height: 40),
                    _buildContactList(
                      context,
                    ), // Contact list below photo for mobile
                  ],
                ),

          const SizedBox(height: 48),

          // --- Footer ---
          const Center(
            child: Text(
              'Built with Flutter Web ❤️',
              style: TextStyle(color: Colors.black38, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }

  // --- Photo Builder ---
  Widget _buildPhoto(bool isDesktop) {
    return Center(
      child: Container(
        width: isDesktop ? 300 : 200,
        height: isDesktop ? 400 : 266,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              'assets/images/image_5.png',
            ), // Path to your photo
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(51),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
      ),
    );
  }

  // --- Contact List Builder ---
  Widget _buildContactList(BuildContext context) {
    return Column(
      children: [
        _buildContactItem(
          icon: Icons.email_outlined,
          label: 'Email',
          value: PortfolioData.email,
          url: 'mailto:${PortfolioData.email}',
        ),
        _buildContactItem(
          icon: Icons.phone_outlined,
          label: 'Phone',
          value: PortfolioData.phone,
          url: 'tel:${PortfolioData.phone}',
        ),
        _buildContactItem(
          icon: Icons.link,
          label: 'LinkedIn',
          value: PortfolioData.linkedin,
          url: 'https://${PortfolioData.linkedin}',
        ),
        _buildContactItem(
          icon: Icons.code,
          label: 'GitHub',
          value: PortfolioData.github,
          url: 'https://${PortfolioData.github}',
        ),
      ],
    );
  }

  // --- Contact Row Builder ---
  Widget _buildContactItem({
    required IconData icon,
    required String label,
    required String value,
    required String url,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        // InkWell adds a ripple tap effect and calls onTap when pressed.
        onTap: () => _launchUrl(url),
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              // Icon
              Icon(icon, color: Colors.blueGrey.shade600, size: 22),
              const SizedBox(width: 16),

              // Label (fixed width so values line up)
              SizedBox(
                width: 80,
                child: Text(
                  label,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
              ),

              // Tappable value
              Expanded(
                child: Text(
                  value,
                  style: TextStyle(
                    color: Colors.blueGrey.shade700,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // --- URL Launcher ---
  // dart:html's window.open() opens a URL in a new browser tab.
  // No external package required for Flutter Web.
  void _launchUrl(String url) {
    // Inside your function:
    html.window.open(url, '_blank');
  }
}
