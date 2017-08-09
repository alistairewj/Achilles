-- 11	Number of non-deceased persons by year of birth and by gender

--HINT DISTRIBUTE_ON_KEY(analysis_id)
select 11 as analysis_id,  CAST(year_of_birth AS VARCHAR(255)) as stratum_1,
  CAST(gender_concept_id AS VARCHAR(255)) as stratum_2,
  null as stratum_3, null as stratum_4, null as stratum_5,
  COUNT_BIG(distinct person_id) as count_value
into @scratchDatabaseSchema@schemaDelim@tempAchillesPrefix_11
from @cdmDatabaseSchema.PERSON
where person_id not in (select person_id from @cdmDatabaseSchema.DEATH)
group by YEAR_OF_BIRTH, gender_concept_id;