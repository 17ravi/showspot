const fs = require('fs');
const path = require('path');

const dirs = [
  'src/screens',
  'src/components',
  'src/services',
  'src/utils',
  'src/store',
  'src/config',
  'src/theme',
  'src/hooks',
  'assets/images',
  'assets/fonts',
  'assets/icons',
];

dirs.forEach((dir) => {
  const fullPath = path.join(__dirname, dir);
  if (!fs.existsSync(fullPath)) {
    fs.mkdirSync(fullPath, { recursive: true });
    console.log(`✓ Created ${dir}`);
  }
});

console.log('\n✓ Directory structure created successfully!');
