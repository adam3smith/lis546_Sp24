library(tidyverse)
billboard

billboard |> pivot_longer(cols = starts_with("wk"), names_to = "week", values_to = "rank", values_drop_na = TRUE)
billboard_longer <- billboard |> 
  pivot_longer(
    cols = starts_with("wk"), 
    names_to = "week", 
    values_to = "rank",
    values_drop_na = TRUE
  ) |> 
  mutate(
    week = parse_number(week)
  )

# Create the line graph from R4D
billboard_longer |> 
  ggplot(aes(x = week, y = rank, group = track))  +
  geom_line(alpha = 0.25) + 
  scale_y_reverse()


# Create additional variables for number one hits and number of variables on chart.
billboard_tops <- billboard_longer |> 
  group_by(track) |>
  mutate(weeks_on_chart = sum(!is.na(rank))) |>
  mutate(weeks_at_one = sum(rank == 1)) 


billboard_tops |> group_by(track, artist, weeks_at_one) |> summarize() |> filter(weeks_at_one >0) |>arrange(desc(weeks_at_one))

billboard_tops |> group_by(track, artist, weeks_on_chart) |> summarize() |> filter(weeks_on_chart >40) |>arrange(desc(weeks_on_chart))


