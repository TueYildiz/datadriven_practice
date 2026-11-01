SELECT
  user_id,
  DENSE_RANK() OVER (
    ORDER BY age_bucket DESC
    ) AS rank
  FROM users
  ORDER BY rank, user_id;
