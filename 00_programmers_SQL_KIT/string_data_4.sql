-- 코드를 입력하세요
SELECT *
FROM (
    SELECT INS.ANIMAL_ID, INS.NAME
    FROM ANIMAL_INS INS, ANIMAL_OUTS OUTS
    WHERE INS.ANIMAL_ID = OUTS.ANIMAL_ID
    ORDER BY MONTHS_BETWEEN(OUTS.DATETIME, INS.DATETIME) DESC
)
WHERE ROWNUM <= 2