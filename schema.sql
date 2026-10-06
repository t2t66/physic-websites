-- Run this once in Supabase → SQL Editor
create table lessons (
  id uuid primary key default gen_random_uuid(),
  title text not null, unit text, description text, notes text,
  file_path text, file_name text,
  created_at timestamptz default now()
);
alter table lessons enable row level security;
create policy "anyone reads"  on lessons for select using (true);
create policy "admin writes"  on lessons for all to authenticated using (true) with check (true);

insert into storage.buckets (id, name, public) values ('lessons','lessons',true);
create policy "admin uploads" on storage.objects for insert to authenticated with check (bucket_id='lessons');
create policy "admin updates" on storage.objects for update to authenticated using (bucket_id='lessons');
create policy "admin deletes" on storage.objects for delete to authenticated using (bucket_id='lessons');
