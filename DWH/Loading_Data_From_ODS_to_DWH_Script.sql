-----------------------------------------------------------------------------------------
---------------------------- Loading Data from ODS to DWH Script ------------------------



------------------------------------------------------------
-- DimAccount
select a.account_id, a.frequency, a.parseddate, a.year, a.month, a.day 
from dbo.Account a


------------------------------------------------------------
-- DimClient
select c.client_id, c.sex, c.age, c.social, c.first, c.last, c.phone,
	   c.email, c.address_1, c.address_2
from dbo.Client c


------------------------------------------------------------
-- DimDistrict
select d.district_id, d.city, d.state_name, d.state_abbrev, d.region, d.division
from dbo.District d


-----------------------------------------------------------
-- DimLoan
select l.purpose, l.status, l.loan_id, l.location, l.duration,
	   l.fulldate, l.amount
from dbo.Loan l


------------------------------------------------------------
-- DimCard
select c.card_id, c.type, c.fulldate
from dbo.Card c


----------------------------------------------------------
-- DimCRMReviews
select r.RID, r.Date, r.Product
from dbo.CRM_Reviews r


----------------------------------------------------------
-- DimCRMCallCenter
select c.[Complaint ID], c.[Date received], c.phonefinal, c.server
from dbo.CRM_Call_Center c


----------------------------------------------------------
-- DimCRMEvent
select e.[Complaint ID], e.[Date sent to company], e.[Date received], e.[Submitted via],
	   e.Product, e.[Sub-product]
from dbo.CRM_Event e



------------------------------------------------------------
--DimTransaction
select t.["amount"], t.["trans_id"],  t.["bank"] as FromBank, t.["operation"],
		t.["fulltime"] as TranaTime, l.loan_id, c.card_id, d.district_id
from [dbo].[Transaction] t, dbo.Loan l, dbo.Card c, dbo.District d, dbo.Account a, dbo.Disposition dis
where t.["account_id"] = a.account_id
and   d.district_id = a.district_id
and   dis.account_id = a.account_id
and   l.account_id = a.account_id
and   dis.disp_id = c.disp_id


----------------------------------------------------------
-- FactCRM
select e.[Company response to consumer], e.[Timely response?], c.outcome, r.Stars,
	   e.Issue, cl.client_id, r.RID, d.district_id, e.[Complaint ID]
from dbo.CRM_Event e, dbo.CRM_Call_Center c, dbo.CRM_Reviews r, dbo.Client cl, dbo.District d
where d.district_id = r.district_id
and d.district_id = cl.district_id
and cl.client_id = e.Client_ID
and e.[Complaint ID] = c.[Complaint ID]


------------------------------------------------------------