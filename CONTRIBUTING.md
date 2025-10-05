# Contributing Guidelines

Thank you for your interest in contributing to this project! 🎉

## How the New System Works

This project now uses individual contributor files instead of a single `data.json` file. This means:

- **No More Merge Conflicts**: Each contributor creates their own file, eliminating conflicts between pull requests
- **Simple Process**: Just create a JSON file with your information
- **Automatic Build**: GitHub Actions automatically rebuilds the `data.json` file when changes are merged

## File Structure

Your contributor file should be named `contributors/{your-github-username}.json` and follow this format:

```json
{
  "github": "your-github-username",
  "photo": "https://github.com/your-github-username.png",
  "quote": "Your favorite quote here"
}
```

### Fields

- **github** (required): Your GitHub username
- **photo** (optional): URL to your profile photo. If omitted, your GitHub avatar will be used automatically
- **quote** (required): Your favorite quote or a message

## Step-by-Step Guide

1. **Fork the repository** - Click the "Fork" button at the top right
2. **Clone your fork** - `git clone https://github.com/YOUR-USERNAME/first-contribution.git`
3. **Create a branch** - `git checkout -b add-your-name`
4. **Create your file** - Add `contributors/your-username.json` with your information
5. **Commit** - `git add contributors/your-username.json && git commit -m "Add YOUR-NAME to contributors"`
6. **Push** - `git push origin add-your-name`
7. **Create a Pull Request** - Go to GitHub and create a PR from your branch

## What Happens After You Submit?

1. Your PR will be reviewed
2. Once approved and merged, GitHub Actions will automatically run
3. The `data.json` file will be regenerated from all contributor files
4. Your name will appear on the contributors page!

## Need Help?

- Check `contributors/TEMPLATE.json` for an example
- Look at existing files in the `contributors/` directory
- Open an issue if you have questions
- Ask for help in your pull request comments

## Building Locally (Optional)

If you want to test the build process locally:

```bash
npm run build
```

This will regenerate `data.json` from all the contributor files.

---

Happy Contributing! 🚀
