# Setting Up AI_UI as a New Public Repo on PossumX

This guide walks you through creating a **completely new** Git repository for AI_UI on your PossumX GitHub account and making it public.

## Step 1: Create the Repo on GitHub

1. Go to [https://github.com/new](https://github.com/new)
2. **Repository name:** `AI_UI` (or `ai-ui-interface`)
3. **Description:** `The AI interface we need — AI-native desktop shell in Rust`
4. **Visibility:** **Public**
5. **Do NOT** initialize with README, .gitignore, or license (we already have these)
6. Click **Create repository**

## Step 2: Prepare the Local Repo

Open PowerShell and run:

```powershell
# Navigate to AI_UI_Framework
cd C:\Users\hp\Desktop\Asgard\AI_UI_Framework

# Remove from parent Asgard repo (if tracked)
# Run this from Asgard root first if AI_UI_Framework was part of Asgard:
# cd C:\Users\hp\Desktop\Asgard
# git rm -r --cached AI_UI_Framework

# Initialize fresh git repo
git init

# Add all files
git add .

# First commit
git commit -m "Initial commit: AI_UI — The AI Interface We Need"
```

## Step 3: Add Remote and Push

```powershell
# Add your GitHub repo as remote (replace PossumX with your actual username if different)
git remote add origin https://github.com/PossumX/AI_UI.git

# Push to main
git branch -M main
git push -u origin main
```

## Step 4: Set Up the Wiki

1. On your repo page, click **Wiki** in the sidebar
2. Click **Create the first page**
3. Copy content from the `wiki/` folder in this repo:
   - **Home** ← `wiki/Home.md`
   - **Getting-Started** ← `wiki/Getting-Started.md`
   - **Architecture** ← `wiki/Architecture.md`
   - **Configuration** ← `wiki/Configuration.md`
   - **Contributing** ← `wiki/Contributing.md`

**Or** clone the wiki repo and push the files:

```powershell
# Clone the wiki (creates after you add first page manually, or enable wiki in Settings)
git clone https://github.com/PossumX/AI_UI.wiki.git
cd AI_UI.wiki

# Copy our wiki files (adjust paths as needed)
# Then:
git add .
git commit -m "Initial wiki pages"
git push
```

## Step 5: Update Repo Settings (Optional)

- **About** — Add description, website, topics (`rust`, `ai`, `desktop`, `iced`, `claude`)
- **Settings → General** — Enable Issues, Wiki, Discussions as desired

## Done!

Your repo is now live at: **https://github.com/PossumX/AI_UI**
