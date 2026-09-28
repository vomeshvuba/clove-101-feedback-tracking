-- Run this in Supabase SQL Editor after creating public.projects.
-- This allows the current no-login version of the app to share data.
-- Add Supabase Auth before using this for sensitive project information.

create policy "Allow shared project reads"
on public.projects
for select
to anon
using (true);

create policy "Allow shared project inserts"
on public.projects
for insert
to anon
with check (true);

create policy "Allow shared project updates"
on public.projects
for update
to anon
using (true)
with check (true);

create policy "Allow shared project deletes"
on public.projects
for delete
to anon
using (true);
