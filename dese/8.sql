SELECT name, pupils AS 'pupils enrolled' FROM districts
JOIN expenditures ON districts.id= expenditures.district_id