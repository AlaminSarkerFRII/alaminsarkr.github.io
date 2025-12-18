# Fix GitHub Pages Double URL Issue

## Problem
You're getting URLs like: `https://alaminsarkerfrii.github.io/alaminsarkr.github.io/`
Instead of: `https://alaminsarkerfrii.github.io/`

## Root Cause
Your GitHub username: `AlaminSarkerFRII`
Your repository name: `alaminsarkr.github.io`

For GitHub Pages user sites, the repository name must exactly match your GitHub username with `.github.io` appended.

## Solution Steps

### Option 1: Rename Your Repository (Recommended)
1. Go to your repository on GitHub: https://github.com/AlaminSarkerFRII/alaminsarkr.github.io
2. Click on "Settings"
3. Under "Repository name", rename it to: `AlaminSarkerFRII.github.io`
4. Click "Rename"

### Option 2: Use GitHub Web Interface
1. Go to: https://github.com/AlaminSarkerFRII/alaminsarkr.github.io/settings
2. Scroll down to "Repository name" section
3. Change `alaminsarkr.github.io` to `AlaminSarkerFRII.github.io`
4. Click "Rename repository"
5. Confirm the rename

### After Renaming
1. Update your local git remote:
```bash
git remote set-url origin https://github.com/AlaminSarkerFRII/AlaminSarkerFRII.github.io.git
```

2. Push to the new repository:
```bash
git push -u origin main
```

3. Enable GitHub Pages:
   - Go to Settings → Pages
   - Source: Deploy from a branch
   - Branch: main
   - Folder: / (root)
   - Click Save

### Result
Your site will be available at: `https://alaminsarkerfrii.github.io/`

## Why This Works
GitHub Pages treats repositories named `[username].github.io` as special user repositories. When the name doesn't match exactly, it treats it as a project repository, which creates the double URL structure.

## Alternative: Project Repository
If you want to keep the current name, you can use it as a project repository, but the URL will remain:
`https://alaminsarkerfrii.github.io/alaminsarkr.github.io/`
