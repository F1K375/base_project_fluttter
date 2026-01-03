# base_project_flutter

A Flutter base project implementing Clean Architecture, designed as a starting point for scalable mobile applications. This project demonstrates best practices for Flutter development with a focus on maintainability, testability, and separation of concerns.

Feel free to use and share base practices for Flutter development.

## Features

-   **Clean Architecture**: Organized into three layers (UI, Domain, Data) for better separation of concerns
-   **State Management**: GetX for routing and reactive state management
-   **Networking**: Dio HTTP client with logging interceptor for API requests
-   **Data Persistence**: SharedPreferences with secure key encoding
-   **Immutable Models**: Freezed for generating immutable data classes with JSON serialization
-   **Dependency Injection**: Injectable for managing dependencies
-   **Functional Programming**: Dartz for Either-based error handling
-   **Custom Theming**: Flexible color system with MaterialColor generation

## Architecture

The project follows Clean Architecture principles:

-   **UI Layer** (`lib/ui/`): Pages, components, and routing logic
-   **Domain Layer** (`lib/domain/`): Business logic, entities, and use cases
-   **Data Layer** (`lib/data/`): Repositories, data sources, and API services

Data flows from UI → Domain → Data → External APIs, ensuring unidirectional flow and testability.

## Project Structure

```
lib/
├── config/           # Configuration files (DI, themes, interceptors)
├── data/             # Data layer (repositories, mappers, models, remotes)
├── domain/           # Domain layer (entities, failures, business logic)
├── ui/               # UI layer (pages, components, routing)
└── utils/            # Utility classes and helpers
```

## Getting Started

### Prerequisites

-   Flutter SDK (>=2.17.6 <3.0.0)
-   Dart SDK (>=2.17.6 <3.0.0)

### Installation

1. Clone the repository:

    ```bash
    git clone <repository-url>
    cd base_project_flutter
    ```

2. Install dependencies:

    ```bash
    flutter pub get
    ```

3. Generate code for Freezed models:

    ```bash
    flutter pub run build_runner build
    ```

4. Run the app:
    ```bash
    flutter run
    ```

### Development Workflow

-   **Code Generation**: Run `flutter pub run build_runner build` after modifying Freezed models
-   **Adding Dependencies**: Use `flutter pub add <package>` and update DI modules in `lib/config/di/`
-   **Testing**: Run `flutter test` for unit tests
-   **Building**: Use `flutter build apk` or `flutter build ios` for production builds

## Dependencies

### Core Dependencies

-   **flutter**: UI framework
-   **get**: Routing and state management
-   **dio**: HTTP client
-   **freezed_annotation**: Immutable data classes
-   **injectable**: Dependency injection
-   **shared_preferences**: Local data storage
-   **dartz**: Functional programming utilities

### Development Dependencies

-   **build_runner**: Code generation
-   **json_serializable**: JSON serialization
-   **flutter_test**: Testing framework

## Usage

### Creating a New Feature

1. **Domain Layer**: Define entities in `lib/domain/` using Freezed
2. **Data Layer**: Create repositories, mappers, and API services in `lib/data/`
3. **UI Layer**: Implement pages and components in `lib/ui/`
4. **DI**: Register dependencies in `lib/config/di/`

### Example: Adding a New API Endpoint

1. Create response model in `lib/data/models/response/`
2. Create domain model in `lib/domain/` with Freezed
3. Implement mapper in `lib/data/mappers/`
4. Add repository method in `lib/data/repositories/`
5. Register service in DI module

## Contributing

Contributions are welcome! Please follow these guidelines:

1. Follow the Clean Architecture principles
2. Use Freezed for data models
3. Write tests for new features
4. Update documentation as needed
5. Ensure code formatting with `flutter format`

## Resources

-   [Flutter Documentation](https://docs.flutter.dev/)
-   [GetX Documentation](https://pub.dev/packages/get)
-   [Dio Documentation](https://pub.dev/packages/dio)
-   [Freezed Documentation](https://pub.dev/packages/freezed_annotation)

For help getting started with Flutter development, view the [online documentation](https://docs.flutter.dev/), which offers tutorials, samples, guidance on mobile development, and a full API reference.
