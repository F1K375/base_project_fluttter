# AI Coding Guidelines for base_project_flutter

## Project Overview

This is a Flutter base project implementing Clean Architecture with three main layers:

-   **UI Layer** (`lib/ui/`): Pages, components, and routing using GetX
-   **Domain Layer** (`lib/domain/`): Business logic entities and use cases with Freezed models
-   **Data Layer** (`lib/data/`): Repositories, mappers, and API services using Dio

## Architecture Patterns

-   **Data Flow**: UI → Domain → Data → External APIs
-   **Error Handling**: Use `Either<FailureDomain, BaseDomain<T>>` for repository responses
-   **API Responses**: Wrap all responses in `BaseDomain<T>` with status, message, data, and pagination
-   **Dependency Injection**: Use Injectable for service registration (see `lib/config/di/`)

## Key Conventions

### Domain Models

Use Freezed for immutable domain entities:

```dart
@freezed
class ExampleDomain with _$ExampleDomain {
  const factory ExampleDomain({
    required int id,
    required String name,
  }) = _ExampleDomain;

  factory ExampleDomain.fromJson(Map<String, dynamic> json) => _$ExampleDomainFromJson(json);
}
```

-   Generate code with: `flutter pub run build_runner build`
-   Files: `example_domain.dart`, `example_domain.freezed.dart`, `example_domain.g.dart`

### Repositories

-   Extend `RepositorySetting` for error handling
-   Use mappers to convert response models to domain models
-   Example: `lib/data/repositories/example_repository.dart`

### Networking

-   Dio client configured in `lib/config/di/dio_module.dart`
-   LoggingInterceptor added in debug mode for request/response logging
-   Base timeout: 15 seconds

### Storage

-   SharedPreferences with base64-encoded keys (see `PreferenceSetting`)
-   Extend `PreferenceSetting` for custom preferences (e.g., `AccountSharedPreferences`)

### Routing

-   GetX-based routing in `lib/ui/route.dart`
-   Define routes as `GetPage` list

### Theming

-   Custom colors in `lib/config/theme/app_colors.dart`
-   `createMaterialColor()` for generating MaterialColor from hex

## Development Workflow

-   **Install deps**: `flutter pub get`
-   **Generate code**: `flutter pub run build_runner build` (after modifying Freezed models)
-   **Run app**: `flutter run`
-   **Add dependencies**: `flutter pub add <package>` then update DI modules if needed
-   **Update README.md**: When adding new features, changing architecture, or introducing new dependencies, update the README.md to document these changes and maintain accurate project information

## Common Patterns

-   **Mappers**: Convert between response models and domain models (see `lib/data/mappers/`)
-   **Base Classes**: `BaseDomain<T>`, `FailureDomain`, `BaseMapper<T,U>`
-   **Functional Programming**: Use `dartz` for Either types
-   **Components**: Reusable widgets in `lib/ui/components/`

Reference: `lib/main.dart` for app setup, `lib/config/di/module_util.dart` for DI configuration.
