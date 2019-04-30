-- 33ms
SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';

-- 18ms
SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' and model_code = 'GT-R';

-- 7ms
SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';

-- 233ms
SELECT *
FROM car_models
WHERE year between 2010 and 2015;

-- 55ms
SELECT *
FROM car_models
WHERE year=2010;

CREATE index UX_make_model ON car_models (make_code, model_code);

-- 4ms
SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';

-- 9ms
SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' and model_code = 'GT-R';

-- 4ms
SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';

-- 195ms
SELECT *
FROM car_models
WHERE year between 2010 and 2015;

-- 53ms
SELECT *
FROM car_models
WHERE year=2010;