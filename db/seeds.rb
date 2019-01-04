def seed_lines
  data = CSV.open("stations-with-coords.csv", headers: :first_row).map(&:to_h)
  data.each do |row|
    station = Station.find_by(address: row['ADDRESS'])
    lines = row['LINE'].split(',')
    lines.each do |line|
      found_line = Line.find_by(name: line)
      station.lines << found_line
    end
  end
end

seed_lines