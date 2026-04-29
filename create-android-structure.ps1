# PowerShell script to create Android project structure

$basePath = "android"

# Create all necessary directories
$directories = @(
    "$basePath/gradle/wrapper",
    "$basePath/app/src/main/java/com/showspot",
    "$basePath/app/src/main/res/values",
    "$basePath/app/src/main/res/drawable",
    "$basePath/app/src/debug/java/com/showspot"
)

foreach ($dir in $directories) {
    if (-not (Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force | Out-Null
        Write-Host "Created: $dir"
    }
}

Write-Host "`nAndroid directory structure created successfully!"
Write-Host "Next steps:`n"
Write-Host "1. Run: npm start (Terminal 1)"
Write-Host "2. Run: npm run android (Terminal 2)"
