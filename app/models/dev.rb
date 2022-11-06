class Dev < ActiveRecord::Base
has_many :freebies
has_many :companies, through: :freebies

def received_one?(item_name)
result = self.freebies.find_by(item_name: item_name)
result ? true : false
end
def give_away(dev, freebie)
   if self.freebies.include?(freebie) 
    freebie.update(dev_id: dev.id)
   end
end
end