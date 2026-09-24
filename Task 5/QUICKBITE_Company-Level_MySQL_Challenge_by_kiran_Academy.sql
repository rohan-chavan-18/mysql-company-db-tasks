mysql> USE quickbite;
Database changed

mysql> -- ==========================================
mysql> -- LEVEL 1 — Food Detective
mysql> -- ==========================================

mysql> -- Task 1. Find restaurants having rating greater than 4.5.
mysql> SELECT * FROM restaurants WHERE rating > 4.5;

mysql> -- Task 2. Find restaurants whose average order value is less than 300.
mysql> SELECT * FROM restaurants WHERE average_order_value < 300;

mysql> -- Task 3. Find all restaurants located in Pune.
mysql> SELECT * FROM restaurants WHERE city = 'Pune';

mysql> -- Task 4. Find restaurants having more than 20,000 orders.
mysql> SELECT * FROM restaurants WHERE orders > 20000;

mysql> -- Task 5. Find restaurants whose delivery time is greater than 40 minutes.
mysql> SELECT * FROM restaurants WHERE delivery_time > 40;

mysql> -- Task 6. Find restaurants whose rating is between 4.2 and 4.7.
mysql> SELECT * FROM restaurants WHERE rating BETWEEN 4.2 AND 4.7;

mysql> -- Task 7. Find restaurants belonging to South Indian, Italian or Biryani cuisine using IN.
mysql> SELECT * FROM restaurants WHERE cuisine IN ('South Indian', 'Italian', 'Biryani');

mysql> -- Task 8. Find restaurants owned by a person whose name contains 'Patil'.
mysql> SELECT * FROM restaurants WHERE owner LIKE '%Patil%';

mysql> -- Task 9. Find restaurants where brand matches the restaurant name.
mysql> SELECT * FROM restaurants WHERE brand = restaurant_name;

mysql> -- Task 10. Find restaurants having delivery fee less than 30.
mysql> SELECT * FROM restaurants WHERE delivery_fee < 30;


mysql> -- ==========================================
mysql> -- LEVEL 2 — Recommendation Team
mysql> -- ==========================================

mysql> -- Task 11. Find the 5 restaurants with the highest number of orders.
mysql> SELECT * FROM restaurants ORDER BY orders DESC LIMIT 5;

mysql> -- Task 12. Find the 5 restaurants with the lowest average order value.
mysql> SELECT * FROM restaurants ORDER BY average_order_value ASC LIMIT 5;

mysql> -- Task 13. Display restaurants from highest rating to lowest rating.
mysql> SELECT * FROM restaurants ORDER BY rating DESC;

mysql> -- Task 14. Display only unique cuisines using DISTINCT.
mysql> SELECT DISTINCT cuisine FROM restaurants;

mysql> -- Task 15. Display Restaurant and Rating using aliases Restaurant_Name and Customer_Rating.
mysql> SELECT restaurant_name AS Restaurant_Name, rating AS Customer_Rating FROM restaurants;

mysql> -- Task 16. Display restaurant name, owner and brand only.
mysql> SELECT restaurant_name, owner, brand FROM restaurants;

mysql> -- Task 17. Sort restaurants by city and then rating descending.
mysql> SELECT * FROM restaurants ORDER BY city ASC, rating DESC;

mysql> -- Task 18. Find the 5 highest-rated restaurants with more than 10,000 orders.
mysql> SELECT * FROM restaurants WHERE orders > 10000 ORDER BY rating DESC LIMIT 5;

mysql> -- Task 19. Find the 3 most ordered restaurants in Pune.
mysql> SELECT * FROM restaurants WHERE city = 'Pune' ORDER BY orders DESC LIMIT 3;

mysql> -- Task 20. Find the 5 restaurants with the highest delivery fee.
mysql> SELECT * FROM restaurants ORDER BY delivery_fee DESC LIMIT 5;


mysql> -- ==========================================
mysql> -- LEVEL 3 — Find the Hidden Restaurants
mysql> -- ==========================================

mysql> -- Task 21. Find restaurant names starting with S.
mysql> SELECT * FROM restaurants WHERE restaurant_name LIKE 'S%';

mysql> -- Task 22. Find restaurant names ending with 'House'.
mysql> SELECT * FROM restaurants WHERE restaurant_name LIKE '%House';

mysql> -- Task 23. Find restaurant names containing 'Cafe'.
mysql> SELECT * FROM restaurants WHERE restaurant_name LIKE '%Cafe%';

mysql> -- Task 24. Find cuisines containing 'Indian'.
mysql> SELECT * FROM restaurants WHERE cuisine LIKE '%Indian%';

mysql> -- Task 25. Find restaurant names having exactly 5 characters.
mysql> SELECT * FROM restaurants WHERE restaurant_name LIKE '_____';

mysql> -- Task 26. Find owners whose name contains 'Raj'.
mysql> SELECT * FROM restaurants WHERE owner LIKE '%Raj%';

mysql> -- Task 27. Find brands whose name contains 'Foods'.
mysql> SELECT * FROM restaurants WHERE brand LIKE '%Foods%';

mysql> -- Task 28. Find cities whose name starts with 'P'.
mysql> SELECT * FROM restaurants WHERE city LIKE 'P%';


mysql> -- ==========================================
mysql> -- LEVEL 4 — Business Team
mysql> -- ==========================================

mysql> -- Task 29. Find restaurants with average order value greater than 400 AND rating greater than 4.5.
mysql> SELECT * FROM restaurants WHERE average_order_value > 400 AND rating > 4.5;

mysql> -- Task 30. Find restaurants with orders greater than 20,000 OR rating greater than 4.7.
mysql> SELECT * FROM restaurants WHERE orders > 20000 OR rating > 4.7;

mysql> -- Task 31. Find restaurants that are NOT in Pune.
mysql> SELECT * FROM restaurants WHERE city != 'Pune';

mysql> -- Task 32. Find restaurants whose delivery time is between 25 and 40 minutes.
mysql> SELECT * FROM restaurants WHERE delivery_time BETWEEN 25 AND 40;

mysql> -- Task 33. Find restaurants whose average order value is between 300 and 600.
mysql> SELECT * FROM restaurants WHERE average_order_value BETWEEN 300 AND 600;

mysql> -- Task 34. Find restaurants from Pune or Mumbai.
mysql> SELECT * FROM restaurants WHERE city IN ('Pune', 'Mumbai');

mysql> -- Task 35. Find Fast Food restaurants with more than 20,000 orders.
mysql> SELECT * FROM restaurants WHERE cuisine = 'Fast Food' AND orders > 20000;

mysql> -- Task 36. Find restaurants with rating greater than 4.5 and delivery fee below 40.
mysql> SELECT * FROM restaurants WHERE rating > 4.5 AND delivery_fee < 40;

mysql> -- Task 37. Find restaurants in Bengaluru with more than 10,000 orders.
mysql> SELECT * FROM restaurants WHERE city = 'Bengaluru' AND orders > 10000;

mysql> -- Task 38. Find restaurants where owner name is not 'Rahul Jain'.
mysql> SELECT * FROM restaurants WHERE owner != 'Rahul Jain';


mysql> -- ==========================================
mysql> -- LEVEL 5 — Boss Challenges
mysql> -- ==========================================

mysql> -- Challenge 1 — Hidden Gem
mysql> SELECT * FROM restaurants WHERE rating > 4.5 AND orders < 10000;

mysql> -- Challenge 2 — Cheap & Popular
mysql> SELECT * FROM restaurants WHERE average_order_value < 300 AND orders > 20000;

mysql> -- Challenge 3 — Fast Delivery
mysql> SELECT * FROM restaurants WHERE delivery_time < 30 AND rating > 4.3;

mysql> -- Challenge 4 — Trending Restaurants
mysql> SELECT * FROM restaurants WHERE city = 'Mumbai' ORDER BY orders DESC LIMIT 3;

mysql> -- Challenge 5 — Premium Restaurants
mysql> SELECT * FROM restaurants WHERE average_order_value > (SELECT AVG(average_order_value) FROM restaurants);

mysql> -- Challenge 6 — City Spotlight
mysql> SELECT * FROM restaurants WHERE city = 'Pune' ORDER BY orders DESC;

mysql> -- Challenge 7 — Cuisine Report
mysql> SELECT restaurant_name, city, rating, average_order_value FROM restaurants WHERE cuisine = 'South Indian';

mysql> -- Challenge 8 — High Value Partners
mysql> SELECT * FROM restaurants WHERE average_order_value > 500 AND rating >= 4.5;


mysql> -- ==========================================
mysql> -- FINAL BOSS — CEO Challenge
mysql> -- ==========================================
mysql> SELECT restaurant_name, cuisine, city, rating, average_order_value, orders, delivery_fee, owner, brand 
    -> FROM restaurants 
    -> WHERE rating > 4.4 AND orders > 10000 AND average_order_value BETWEEN 300 AND 700 
    -> ORDER BY orders DESC 
    -> LIMIT 5;
