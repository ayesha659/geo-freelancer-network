# GEO Freelancer Network Dashboard

A shared team dashboard to manage your Reddit/Quora freelancer bench — from Upwork shortlist through to active engagement.

---

## Deploy in 4 steps

### Step 1 — Set up Supabase (your database)

1. Go to https://supabase.com and sign up for free
2. Click **New Project** — give it any name (e.g. "geo-network")
3. Once created, go to **SQL Editor** in the left sidebar
4. Paste the entire contents of `supabase-setup.sql` and click **Run**
5. Go to **Project Settings → API**
6. Copy your **Project URL** and **anon / public** key — you'll need these in Step 3

### Step 2 — Push code to GitHub

1. Go to https://github.com and create a new repository (e.g. "geo-freelancer-network")
2. Upload all files from this folder to that repository
   - Easiest: drag and drop all files into the GitHub web UI
   - Or use Git: `git init && git add . && git commit -m "init" && git remote add origin YOUR_REPO_URL && git push`

### Step 3 — Deploy on Netlify

1. Go to https://netlify.com and sign up / log in
2. Click **Add new site → Import an existing project**
3. Connect your GitHub account and select your repo
4. Build settings will auto-detect from netlify.toml:
   - Build command: `npm run build`
   - Publish directory: `dist`
5. Before clicking Deploy, go to **Environment variables** and add:
   - `VITE_SUPABASE_URL` → your Supabase Project URL
   - `VITE_SUPABASE_ANON_KEY` → your Supabase anon key
6. Click **Deploy site**

Netlify will give you a URL like `https://your-site-name.netlify.app` — share this with your team.

### Step 4 — Share with your team

Send your team the Netlify URL. Anyone with the link can view and edit the dashboard.
All changes sync in real time via Supabase.

---

## Customising

- **Add verticals or stages**: edit the `STAGES` and `VERTICALS` arrays in `src/App.jsx`
- **Custom domain**: add your own domain in Netlify → Domain management
- **Restrict access**: add Netlify password protection (Team plan) or Supabase row-level security rules

