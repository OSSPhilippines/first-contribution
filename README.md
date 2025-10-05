# First Contribution 🎉

Welcome to your first open source contribution! This project is designed for beginners who want to learn how to contribute to open source projects on GitHub.

## 🌟 What is this?

This is a simple project where you can add your name to our contributors list. It's a safe place to practice making your first pull request!

## 🎯 How to Contribute

Follow these simple steps to add yourself to the contributors list:

### Step 1: Fork this Repository

Click the "Fork" button at the top right of this page. This creates a copy of the repository in your GitHub account.

### Step 2: Clone Your Fork

Clone the forked repository to your local machine:

```bash
git clone https://github.com/YOUR-USERNAME/first-contribution.git
cd first-contribution
```

Replace `YOUR-USERNAME` with your GitHub username.

### Step 3: Create a New Branch

Create a new branch for your changes:

```bash
git checkout -b add-your-name
```

Replace `your-name` with your actual name or GitHub username.

### Step 4: Add Your Information

Create a new JSON file in the `contributors/` directory with your GitHub username as the filename. For example, if your username is `johndoe`, create `contributors/johndoe.json`.

**Template:**

```json
{
  "github": "your-github-username",
  "photo": "https://github.com/your-github-username.png",
  "quote": "Your favorite quote here"
}
```

**Important:** 
- **Create a new file** named `contributors/{your-github-username}.json`
- Replace `your-github-username` with your actual GitHub username
- The `photo` field is optional. If you don't provide it, your GitHub avatar will be used automatically
- Make sure your JSON is properly formatted (use the template above)

**Example:**

If your username is `johndoe`, create `contributors/johndoe.json`:

```json
{
  "github": "johndoe",
  "photo": "https://github.com/johndoe.png",
  "quote": "Code is like humor. When you have to explain it, it's bad."
}
```

You can also look at existing files in the `contributors/` directory or use `contributors/TEMPLATE.json` as a reference.

### Step 5: Commit Your Changes

Add and commit your changes:

```bash
git add contributors/your-github-username.json
git commit -m "Add YOUR-NAME to contributors"
```

Replace `your-github-username` with your actual GitHub username.

### Step 6: Push to GitHub

Push your changes to your forked repository:

```bash
git push origin add-your-name
```

### Step 7: Create a Pull Request

1. Go to your forked repository on GitHub
2. Click on "Compare & pull request" button
3. Add a title like "Add [Your Name] to contributors"
4. Write a brief description
5. Click "Create pull request"

## 🎊 That's it!

Congratulations! You've just made your first contribution to open source! Your pull request will be reviewed, and once approved, your name will appear on the contributors page.

## 📝 View the Contributors Page

You can view all contributors at: [https://ossphilippines.github.io/first-contribution/](https://ossphilippines.github.io/first-contribution/)

Or open `index.html` in your browser locally to see the page.

## 💡 Need Help?

If you run into any issues or have questions, feel free to:
- Check out [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines
- Open an issue in this repository
- Ask for help in the pull request comments
- Reach out to the community

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Happy Contributing! 🚀