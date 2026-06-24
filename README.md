<<<<<<< HEAD
# Flutter Web Portfolio — Student Starter Project

A beginner-friendly single-page portfolio website built with **Flutter Web**.

---
portfolio link:https://adwaithcs.web.app

## 📁 Project Structure

```
lib/
├── main.dart                        # App entry, AppBar nav, scroll logic
├── models/
│   └── portfolio_data.dart          # ALL content data + model classes
├── sections/
│   ├── hero_section.dart            # Hero: name, intro, CTA buttons
│   ├── about_section.dart           # About: bio, education, skills
│   ├── projects_section.dart        # Projects: responsive card grid
│   ├── experience_section.dart      # Experience: vertical timeline
│   └── contact_section.dart        # Contact: links + footer
└── widgets/
    ├── section_title.dart           # Reusable section heading
    └── project_card.dart            # Reusable project card
```

---

## 🚀 Getting Started

```bash
# Check Flutter Web is enabled
flutter doctor
flutter config --enable-web

# Install dependencies
flutter pub get

# Run in Chrome
flutter run -d chrome

# Build for production
flutter build web
```

---

## 🗺️ How Navigation Works

```
AppBar TextButton  ──► _scrollToSection('about')
                            │
                            └─► Scrollable.ensureVisible(
                                    _sectionKeys['about']!.currentContext!
                                )
```

Each section is wrapped in a `Container` with a `GlobalKey`. The scroll function uses `Scrollable.ensureVisible()` to smoothly animate to the target widget.

---

## 📐 Responsive Breakpoints

| Width | Layout |
|---|---|
| ≥ 800px | Desktop: side-by-side columns, text nav links |
| < 800px | Mobile: stacked columns, icon nav buttons |
| ≥ 1000px | Projects grid: 3 columns |
| ≥ 600px | Projects grid: 2 columns |
| < 600px | Projects grid: 1 column |

---

## ✏️ Personalising the Content

**You only need to edit one file**: `lib/models/portfolio_data.dart`

Change the values in the `PortfolioData` class constants:
- `name`, `title`, `intro`, `aboutMe`
- `degree`, `university`, `graduationYear`
- `email`, `phone`, `linkedin`, `github`
- `skills` list
- `projects` list (add/remove `Project` entries)
- `experiences` list (add/remove `Experience` entries)

---

## 🎨 Student Assignment

The site is intentionally plain. Your job is to **make it look like a real developer portfolio**.

### Required changes:
- [ ] Pick a colour palette and update the `ThemeData` in `main.dart`
- [ ] Replace placeholder Avatar with a real profile image (`NetworkImage` or `AssetImage`)
- [ ] Style the Hero with a gradient background or a full-bleed image
- [ ] Add hover effects to the nav buttons and project cards
- [ ] Improve the Skills section (progress bars? icon logos?)
- [ ] Add a contact form with `TextField` widgets
- [ ] Add smooth fade/slide animations with `AnimatedOpacity` or `TweenAnimationBuilder`

### Bonus:
- [ ] Add a mobile Drawer menu (hamburger) for navigation
- [ ] Add a "dark mode" toggle using `ThemeMode`
- [ ] Use `Google Fonts` package for custom typography
- [ ] Add scroll-triggered reveal animations

### Rules:
- ✅ You **can** change any visual/styling code
- ✅ You **can** add new widgets and animations
- ❌ Do **not** change the `GlobalKey` scroll logic in `main.dart`
- ❌ Do **not** change the model classes in `portfolio_data.dart`

---

## 💡 Key Flutter Web Concepts Used

| Concept | File |
|---|---|
| `SingleChildScrollView` | `main.dart` |
| `GlobalKey` + `Scrollable.ensureVisible` | `main.dart` |
| `MediaQuery` responsive breakpoints | All sections |
| `LayoutBuilder` for grid columns | `projects_section.dart` |
| `url_launcher` for links | `contact_section.dart` |
| Reusable `StatelessWidget` | `widgets/` |
| `Wrap` for chip layouts | `about_section.dart` |
| `IntrinsicHeight` for timeline | `experience_section.dart` |
# Flutter Web Portfolio — Student Starter Project

A beginner-friendly single-page portfolio website built with **Flutter Web**.

---

## 📁 Project Structure

```
lib/
├── main.dart                        # App entry, AppBar nav, scroll logic
├── models/
│   └── portfolio_data.dart          # ALL content data + model classes
├── sections/
│   ├── hero_section.dart            # Hero: name, intro, CTA buttons
│   ├── about_section.dart           # About: bio, education, skills
│   ├── projects_section.dart        # Projects: responsive card grid
│   ├── experience_section.dart      # Experience: vertical timeline
│   └── contact_section.dart        # Contact: links + footer
└── widgets/
    ├── section_title.dart           # Reusable section heading
    └── project_card.dart            # Reusable project card
```

---

## 🚀 Getting Started

```bash
# Check Flutter Web is enabled
flutter doctor
flutter config --enable-web

# Install dependencies
flutter pub get

# Run in Chrome
flutter run -d chrome

# Build for production
flutter build web
```

---

## 🗺️ How Navigation Works

```
AppBar TextButton  ──► _scrollToSection('about')
                            │
                            └─► Scrollable.ensureVisible(
                                    _sectionKeys['about']!.currentContext!
                                )
```

Each section is wrapped in a `Container` with a `GlobalKey`. The scroll function uses `Scrollable.ensureVisible()` to smoothly animate to the target widget.

---

## 📐 Responsive Breakpoints

| Width | Layout |
|---|---|
| ≥ 800px | Desktop: side-by-side columns, text nav links |
| < 800px | Mobile: stacked columns, icon nav buttons |
| ≥ 1000px | Projects grid: 3 columns |
| ≥ 600px | Projects grid: 2 columns |
| < 600px | Projects grid: 1 column |

---

## ✏️ Personalising the Content

**You only need to edit one file**: `lib/models/portfolio_data.dart`

Change the values in the `PortfolioData` class constants:
- `name`, `title`, `intro`, `aboutMe`
- `degree`, `university`, `graduationYear`
- `email`, `phone`, `linkedin`, `github`
- `skills` list
- `projects` list (add/remove `Project` entries)
- `experiences` list (add/remove `Experience` entries)

---

## 🎨 Student Assignment

The site is intentionally plain. Your job is to **make it look like a real developer portfolio**.

### Required changes:
- [ ] Pick a colour palette and update the `ThemeData` in `main.dart`
- [ ] Replace placeholder Avatar with a real profile image (`NetworkImage` or `AssetImage`)
- [ ] Style the Hero with a gradient background or a full-bleed image
- [ ] Add hover effects to the nav buttons and project cards
- [ ] Improve the Skills section (progress bars? icon logos?)
- [ ] Add a contact form with `TextField` widgets
- [ ] Add smooth fade/slide animations with `AnimatedOpacity` or `TweenAnimationBuilder`

### Bonus:
- [ ] Add a mobile Drawer menu (hamburger) for navigation
- [ ] Add a "dark mode" toggle using `ThemeMode`
- [ ] Use `Google Fonts` package for custom typography
- [ ] Add scroll-triggered reveal animations

### Rules:
- ✅ You **can** change any visual/styling code
- ✅ You **can** add new widgets and animations
- ❌ Do **not** change the `GlobalKey` scroll logic in `main.dart`
- ❌ Do **not** change the model classes in `portfolio_data.dart`

---

## 💡 Key Flutter Web Concepts Used

| Concept | File |
|---|---|
| `SingleChildScrollView` | `main.dart` |
| `GlobalKey` + `Scrollable.ensureVisible` | `main.dart` |
| `MediaQuery` responsive breakpoints | All sections |
| `LayoutBuilder` for grid columns | `projects_section.dart` |
| `url_launcher` for links | `contact_section.dart` |
| Reusable `StatelessWidget` | `widgets/` |
| `Wrap` for chip layouts | `about_section.dart` |
| `IntrinsicHeight` for timeline | `experience_section.dart` |
=======
# adwaithcs-portfolio
>>>>>>> dd8362c9e9408c6f2aab584195d0001bf6fa8238
