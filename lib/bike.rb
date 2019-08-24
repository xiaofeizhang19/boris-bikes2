class Bike

attr_reader :broken

  def working?
    return true
  end

  def report_broken
    @broken = true
  end

  def fix
    @broken = false
  end

  def broken?
    @broken
  end

end
