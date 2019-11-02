module Findable
  module ClassMethods
  def find_by_name(name)
    self.detect{|a| a.name}
  end
end
end
