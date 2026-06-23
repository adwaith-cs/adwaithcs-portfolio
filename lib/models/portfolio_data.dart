// models/portfolio_data.dart
//
// This file holds ALL the data shown on the portfolio website.
// Students: change the values here to personalise the portfolio —
// no need to touch the layout files at all.

// ─── Project Model ────────────────────────────────────────────────────────────
class Project {
  final String title;
  final String description;
  final List<String> technologies;
  final String imageLabel;

  const Project({
    required this.title,
    required this.description,
    required this.technologies,
    required this.imageLabel,
  });
}

// ─── Experience Model ─────────────────────────────────────────────────────────
class Experience {
  final String company;
  final String position;
  final String duration;
  final String description;

  const Experience({
    required this.company,
    required this.position,
    required this.duration,
    required this.description,
  });
}

// ─── Skill Model ──────────────────────────────────────────────────────────────
class Skill {
  final String name;
  final String category;

  const Skill({required this.name, required this.category});
}

// ─── Sample Portfolio Data ────────────────────────────────────────────────────
class PortfolioData {
  // ─── Personal Info ─────────────────────────────────────────────────────────
  static const String name = 'Adwaith C S';
  static const String title =
      'Computer Science Engineer & Full-Stack Developer';

  static const String intro =
      '🚀 Engineering robust cross-platform applications and hardware architectures. '
      'Passionate about systems design, clean code, and building high-impact software solutions.';

  static const String aboutMe =
      "Hi! I'm a B.Tech Computer Science & Engineering student with a deep interest "
      "in full-stack development, database management systems, and hardware design (Verilog/RISC-V). "
      "I love engineering real-world solutions that address critical logistical and social needs. "
      "When I'm not writing Dart or optimizing SQL queries, I'm analyzing intelligent systems or planning technical architectures.";

  // ─── Education ─────────────────────────────────────────────────────────────
  static const String degree = 'B.Tech in Computer Science & Engineering';
  static const String university = 'Vidya Academy of Science and Technology';
  static const String graduationYear = '2027';

  // ─── Contact ───────────────────────────────────────────────────────────────
  static const String email =
      'dev.aneess@gmail.com'; // Keeping your provided fallback email
  static const String phone = '+91 xxxxxxxxxx';
  static const String linkedin = 'linkedin.com/in/aneesan';
  static const String github = 'github.com/erTesla';

  // ─── Skills (Categorized for Clean UI Badges) ─────────────────────────────
  static const List<Skill> skills = [
    // Core Engineering & Languages
    Skill(name: 'Dart & Flutter', category: 'Mobile'),
    Skill(name: 'Verilog HDL', category: 'Hardware'),
    Skill(name: 'RISC-V ISA', category: 'Hardware'),

    // Backend & Databases
    Skill(name: 'Oracle SQL', category: 'Backend'),
    Skill(name: 'Firebase', category: 'Backend'),
    Skill(name: 'REST APIs', category: 'Backend'),

    // Tools & Frameworks
    Skill(name: 'Git & GitHub', category: 'Tools'),
    Skill(name: 'UI Design', category: 'Design'),
  ];

  // ─── Real Projects (Replaced with your actual portfolio builds) ───────────
  static const List<Project> projects = [
    Project(
      title: '🛡️ Guardian Angel',
      description:
          'An advanced emergency distress signal application designed to instantly connect individuals in critical situations with emergency services via dynamic location tracking and integrated communication protocols.',
      technologies: ['Flutter', 'Firebase', 'GPS API'],
      imageLabel: 'GuardianAngel',
    ),
    Project(
      title: '🩸 Blood Donation Manager',
      description:
          'A full-stack logistics platform featuring interactive real-time request tracking, responsive dynamic micro-interactions, and a pulsing urgency indicator UI for critical donor matching.',
      technologies: ['Flutter Web', 'Dart', 'Database Systems'],
      imageLabel: 'BloodDonation',
    ),
    Project(
      title: '💻 RISC-V Processor Core',
      description:
          'Designed and simulated key execution paths, pipeline formatting, and control matrices for a custom RISC-V instruction set processor architecture using hardware description profiles.',
      technologies: ['Verilog', 'Digital Design', 'EDA Tools'],
      imageLabel: 'RISCVProcessor',
    ),
    Project(
      title: '🗄️ Database Management Hub',
      description:
          'An enterprise-grade schema mapping and transaction tracking environment built to handle secure concurrent queries, structured relations, and custom stored procedures.',
      technologies: ['Oracle SQL', 'Relational DB', 'Optimization'],
      imageLabel: 'DatabaseHub',
    ),
  ];

  // ─── Academic Experience / Roles ──────────────────────────────────────────
  static const List<Experience> experiences = [
    Experience(
      company: 'Vidya Academy of Science & Technology',
      position: 'B.Tech Core Project Lead',
      duration: '2025 – Present',
      description:
          ' Spearheading agile project development for full-stack social utility applications. Managing architectural blueprints, system states, and collaborating with cross-functional development cohorts.',
    ),
    Experience(
      company: 'Academic Engineering Labs',
      position: 'Hardware Systems Enthusiast',
      duration: '2024 – 2025',
      description:
          'Modeled instruction execution pathways, simulated structural microarchitectures, and evaluated functional register transfer level (RTL) logic configurations.',
    ),
  ];
}
