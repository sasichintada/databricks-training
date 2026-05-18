-- Q1: starting numbers
SELECT id, REGEXP_SUBSTR(mixed_value,'^[0-9]+') AS result FROM regex_practice;

-- Q2: ending numbers
SELECT id, REGEXP_SUBSTR(mixed_value,'[0-9]+$') AS result FROM regex_practice;

-- Q3: first character
SELECT id, LEFT(mixed_value,1) AS result FROM regex_practice;

-- Q4: last character
SELECT id, RIGHT(mixed_value,1) AS result FROM regex_practice;

-- Q5: exactly two digits anywhere
SELECT id, REGEXP_SUBSTR(mixed_value,'[0-9]{2}') AS result FROM regex_practice;

-- Q6: single digit
SELECT id, REGEXP_SUBSTR(mixed_value,'[0-9]') AS result FROM regex_practice;

-- Q7: country code from phone
SELECT id, REGEXP_SUBSTR(phone,'^[+]?([0-9]+)') AS result FROM regex_practice;

-- Q8: digits between letters
SELECT id, REGEXP_SUBSTR(mixed_value,'[A-Za-z]+([0-9]+)[A-Za-z]+') AS result FROM regex_practice;

-- Q9: email before @
SELECT id, SUBSTRING_INDEX(email,'@',1) AS result FROM regex_practice;

-- Q10: after @
SELECT id, SUBSTRING(email,LOCATE('@',email)+1) AS result FROM regex_practice;

-- Q11: domain name
SELECT id, SUBSTRING_INDEX(email,'@',-1) AS result FROM regex_practice;

-- Q12: after last dot
SELECT id, SUBSTRING_INDEX(email,'.',-1) AS result FROM regex_practice;

-- Q13: alphabet sequence
SELECT id, REGEXP_SUBSTR(mixed_value,'[A-Za-z]+') AS result FROM regex_practice;

-- Q14: numeric sequence
SELECT id, REGEXP_SUBSTR(mixed_value,'[0-9]+') AS result FROM regex_practice;

-- Q15: first 3 chars
SELECT id, LEFT(full_text,3) AS result FROM regex_practice;

-- Q16: last 2 chars
SELECT id, RIGHT(full_text,2) AS result FROM regex_practice;

-- Q17: number between prefix and underscore
SELECT id, REGEXP_SUBSTR(full_text,'[0-9]+') AS result FROM regex_practice;

-- Q18: last country code
SELECT id, SUBSTRING_INDEX(full_text,'_',-1) AS result FROM regex_practice;

-- Q19: text between underscores
SELECT id, REGEXP_SUBSTR(full_text,'_[A-Z]+_') AS result FROM regex_practice;

-- Q20: digits after +
SELECT id, REGEXP_SUBSTR(phone,'[0-9]+') AS result FROM regex_practice;