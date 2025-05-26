# SRocks Music App

## Preview
[📺 Watch Demo Video](https://drive.google.com/file/d/1Ylw6Y3Q3GS0VV9oIoFHGI3dbDxr7GOJ6/view?usp=sharing)


## Project Structure

The project follows MVVM architecture pattern with the following structure:

```
lib/
├── home_screen/          
    ├── model/            # Contains ServiceModel and other data models
    ├── view/             # UI components (home_screen.dart, detail_screen.dart) 
    └── view_model/       # HomeViewModel for business logic
```

## Assets
All image assets are stored in `assets/home/` including:
- Navigation icons (`home_nav.png`, `news_nav.png`, etc.)
- UI elements (`Search.png`, `arrow.png`)
- Background images

## Dependencies

```yaml
dependencies:
  flutter_screenutil: ^5.x.x  # Responsive scaling
  google_fonts: ^4.x.x        # Custom typography (Syne, Lobster)
  provider: ^6.x.x           # State management
  flutter_svg: ^2.x.x        # SVG support
```

## Key Features

### Custom Navigation Bar
- Custom icons with labels 

### Service Cards
- Background images with overlay
- Custom styling and typography
- Navigation to detail screen

### Search Component
- Custom search bar with microphone
- Responsive design
- Focus management

### Responsive Design
- Uses `flutter_screenutil` for scaling
- Consistent spacing and dimensions
- Adaptive layouts

## State Management
- Uses Provider pattern with `HomeViewModel`
- Centralized service data management
- Clean separation of UI and business logic