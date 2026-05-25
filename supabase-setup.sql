-- Run this in your Supabase SQL editor (supabase.com → your project → SQL Editor)

create table if not exists freelancers (
  id bigint generated always as identity primary key,
  name text not null,
  upwork_url text,
  platform text default 'Reddit',
  vertical text default 'General',
  stage text default 'Upwork Shortlist',
  score integer,
  karma_score integer,
  account_age text,
  rate numeric(6,2),
  timezone text default 'IST',
  notes text,
  assigned_to text,
  clients text,
  posts_per_week integer,
  joined_date date default current_date,
  created_at timestamptz default now()
);

-- Allow anyone with the anon key to read/write (your team via the app)
alter table freelancers enable row level security;

create policy "Allow all for anon" on freelancers
  for all using (true) with check (true);

-- Optional: seed with a sample row to confirm it's working
insert into freelancers (name, platform, vertical, stage, score, karma_score, account_age, rate, timezone, notes, assigned_to, posts_per_week)
values ('Sample Freelancer', 'Reddit', 'Tech / SaaS', 'Upwork Shortlist', null, 2400, '2 years', 12, 'IST', 'First test entry — delete when ready.', 'You', 5);
