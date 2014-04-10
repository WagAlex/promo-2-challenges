def pmu_format!(race_array)
  #TODO: modify the given array so that it is PMU-consistent

  race = race_array.reverse!

  pmu = race.map! do |horse|
    "#{race.length - race.index(horse)}-#{horse}!"
  end

end




