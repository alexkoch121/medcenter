SELECT Наименование,Количество, Сумма,
     CASE 
	 WHEN SUM ( Сумма) OVER(Order by Сумма DESC)/SUM(Сумма) OVER () <= 0.8 THEN "А"
	 WHEN SUM ( Сумма) OVER ( Order by Сумма DESC)/ SUM ( Сумма) OVER ( ) <=0.9 THEN "B"
	 ELSE "C"
	 END 
FROM SALESanal
ORDER BY Сумма DESC;