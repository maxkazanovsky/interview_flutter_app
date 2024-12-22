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

## New Features

I have added smooth animations throughout the entire application to ensure the best user experience. 
Additionally, I implemented a parallax effect on the background image, which moves with each new page transition to create a visually appealing effect.
I also added basic validation to the app to ensure that users enter data correctly.


