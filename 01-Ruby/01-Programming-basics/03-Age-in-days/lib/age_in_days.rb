# This "require" line loads the contents of the 'date' file from the standard
# Ruby library, giving you access to the Date class.
require 'date'


def age_in_days(day, month, year)
  birthday = DateTime.new(year, month, day)
  duration = DateTime.now - birthday # Rational
  duration.to_i  # Integer, number of days truncated
end
