class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} must be implemented by the sub classes"
  end
end
