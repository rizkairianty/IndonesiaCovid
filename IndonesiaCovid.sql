Select * from CovidIndonesia..active_case$

Select * from CovidIndonesia..daily_cases$

Select * from CovidIndonesia..daily_casualties$

Select * from CovidIndonesia..daily_recovered$

Select * from CovidIndonesia..total_casualties$

Select * from CovidIndonesia..total_positive_cases$

Select * from CovidIndonesia..total_recovered_cases$

SELECT [Kasus Aktif], City, Total
FROM
(
  SELECT 
      [Kasus Aktif], Aceh, Bali, Banten
 FROM CovidIndonesia..active_case$
) p
UNPIVOT
(
  Total for City IN
  (Aceh, Bali, Banten)
) AS upvt;
