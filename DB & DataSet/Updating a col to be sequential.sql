
select * from Dbo.CRM_Reviews order by RID

declare @x int = 1
while @x <= 480
begin 
	update dbo.CRM_Reviews 
	set RID = @x, @x = @x + 1
end


update r
set r.RID = r.c
from(select RID,ROW_NUMBER()over(order by m.Date) c
	 from dbo.CRM_Reviews m )r


declare @k int = 0 
update dbo.CRM_Reviews 
set RID = @k, @k = @k + 1


-- deleting dublicates

with cte as(
select [Complaint ID] , ROW_NUMBER() over (partition by [Complaint ID] order by [Complaint ID]) ro
from dbo.CRM_Call_Center)
delete from cte 
where ro >1

