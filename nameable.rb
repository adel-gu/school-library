class Nameable
  def correct_name
    rais NotImplementedError "#{self.class} is not implemented"
  end
end