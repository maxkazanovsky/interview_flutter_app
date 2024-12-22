# Test app



## Getting Started 🚀

## Generating files

Some packages used in the project require the developer to generate files. To do that, run this
command in the project workspace:

```sh
flutter pub run build_runner build --delete-conflicting-outputs
```

To generate l10n files, run:

```sh
flutter pub global run intl_utils:generate
```

To generate icons:

```sh
dart run flutter_launcher_icons:main
```

