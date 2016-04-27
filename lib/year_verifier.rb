class YearVerifier
  def bissext?(year)
    return false unless year?(year)
    return true if year % 400 == 0

    if year % 4 == 0 && year % 100 != 0
      true
    else
      false
    end
  end

  private
  def year?(year)
     year.is_a?(Numeric) && year > 0
  end
end