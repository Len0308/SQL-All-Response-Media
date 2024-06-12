drop table if exists #t1
drop table if exists #t2

select 
[trainer ID]
      ,[starttime]
      ,[endtime]
into #t1
from app  

where [trainer ID]=1234

select 
[trainer ID]
      ,[starttime]
      ,[endtime]
	  into #t2
	  from app
where [trainer ID]=2345

select distinct #t2.[trainer id],#t1.[trainer ID],#t2.[starttime],#t2.[endtime] from #t2 
join #t1 
on (#t2.starttime<=#t1.endtime and #t1.endtime>=#t2.endtime) and 
(#t2.starttime!=#t1.starttime or #t2.endtime!=#t1.endtime)


