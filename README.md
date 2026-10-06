# Physics Lessons – setup (about 15 minutes, free)

## 1. Supabase
1. Create a free project at supabase.com.
2. SQL Editor → paste `schema.sql` → Run.
3. Authentication → Users → **Add user** → your email + password (this is the admin login). Tick "Auto confirm".
4. Authentication → Sign In / Providers → turn **OFF "Allow new users to sign up"** (important: otherwise anyone could register and edit).
5. Project Settings → API → copy the **Project URL** and **anon public key** into `config.js`.

## 2. Vercel
1. Put this folder on GitHub (or run `npx vercel` in the folder).
2. vercel.com → Add New Project → import it → Framework: **Other** → Deploy.
3. Site is at `your-site.vercel.app`, admin at `your-site.vercel.app/admin`.

Notes: PowerPoint previews use Microsoft's free online viewer (files must be under ~10 MB for best results; Supabase free limit is 50 MB/file). PDFs preview natively and are the most reliable.
