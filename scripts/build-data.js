const fs = require('fs');
const path = require('path');

const contributorsDir = path.join(__dirname, '..', 'contributors');
const outputFile = path.join(__dirname, '..', 'data.json');

// Read all JSON files from contributors directory
function buildContributorsData() {
  try {
    const files = fs.readdirSync(contributorsDir);
    const contributors = [];

    files.forEach(file => {
      // Skip TEMPLATE.json and non-JSON files
      if (file === 'TEMPLATE.json' || !file.endsWith('.json')) {
        return;
      }

      try {
        const filePath = path.join(contributorsDir, file);
        const content = fs.readFileSync(filePath, 'utf8');
        const contributor = JSON.parse(content);
        
        // Validate that the contributor has required fields
        if (contributor.github && contributor.quote) {
          contributors.push(contributor);
        } else {
          console.warn(`Warning: ${file} is missing required fields (github or quote)`);
        }
      } catch (error) {
        console.error(`Error reading ${file}:`, error.message);
      }
    });

    // Sort contributors by github username for consistency
    contributors.sort((a, b) => a.github.localeCompare(b.github));

    // Write the aggregated data to data.json
    fs.writeFileSync(outputFile, JSON.stringify(contributors, null, 2));
    console.log(`✅ Successfully built data.json with ${contributors.length} contributors`);
  } catch (error) {
    console.error('❌ Error building contributors data:', error.message);
    process.exit(1);
  }
}

buildContributorsData();
