SELECT
  err_id,
  message,
  svc_name,
    CASE
      WHEN LENGTH(message) < 32 THEN 'mid'
      ELSE 'long'
    END AS length_category
  FROM err_tracks
  WHERE severity IN ('Fatal' , 'fatal')
    AND LENGTH(message) >= 30;
