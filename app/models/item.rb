class Item < ActiveRecord::Base
  def vote_up!
    self.rating += 1
    self.save
  end

  def vote_down!
    self.rating -= 1
    self.save
  end
end
