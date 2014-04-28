class BonusDrink
  def self.total_count_for(amount)
    self.calculate(amount, amount)
  end

  def self.calculate(count, empty_bottles)
    return count if empty_bottles < 3

    div, mod = empty_bottles.divmod 3

    return calculate(count + div, mod + div)
  end
end

if $0 == __FILE__ then
  count = BonusDrink.total_count_for ARGV.shift.to_i
  puts count
end
