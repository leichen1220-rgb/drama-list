-- 我的劇單 v6.4 資料庫升級
-- 1) 新增「同看」與「看完日期」欄位
-- 2) 把舊 OTT 內容搬進備註，再清空 OTT
-- 可重複執行；已搬過的 OTT 不會重複追加。
begin;

alter table public.dramas
  add column if not exists co_watch boolean,
  add column if not exists finished_date date;

update public.dramas
set notes = case
  when notes is null or btrim(notes) = '' then 'OTT：' || btrim(ott)
  when position('OTT：' || btrim(ott) in notes) = 0 then notes || E'\nOTT：' || btrim(ott)
  else notes
end
where ott is not null and btrim(ott) <> '';

update public.dramas
set ott = null
where ott is not null and btrim(ott) <> '';

commit;
