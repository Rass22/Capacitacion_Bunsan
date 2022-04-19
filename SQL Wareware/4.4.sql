SELECT percentile_disc(0.5) within group (ORDER BY end_date) FROM assignments WHERE (DATE '2022-03-01', DATE '2022-03-31') OVERLAPS (start_date, end_date)
