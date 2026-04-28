#!/bin/bash
# Setup React Native project structure for ShowSpot

mkdir -p src/{screens,components,services,utils,store,config,theme,hooks}
mkdir -p assets/{images,fonts,icons}
mkdir -p android ios

# Create .gitkeep files to preserve empty directories
touch src/.gitkeep src/screens/.gitkeep src/components/.gitkeep src/services/.gitkeep
touch src/utils/.gitkeep src/store/.gitkeep src/config/.gitkeep src/theme/.gitkeep src/hooks/.gitkeep
touch assets/.gitkeep assets/images/.gitkeep assets/fonts/.gitkeep assets/icons/.gitkeep
touch android/.gitkeep ios/.gitkeep

echo "✓ React Native project structure created successfully!"
