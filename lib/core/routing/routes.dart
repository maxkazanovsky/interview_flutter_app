enum AppRoutes {
  welcome('/welcome', 'Welcome'),
  onboarding('/onboarding', 'Onboarding'),
  settings('/settings', 'Settings'),
  preview('/', 'Preview'),
  ;

  const AppRoutes(this.path, this.name);

  final String path;
  final String name;
}
