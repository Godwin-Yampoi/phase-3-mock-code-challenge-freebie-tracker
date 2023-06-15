# Freebie model
class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company
  
    def dev
      Dev.find_by(id: self.dev_id)
    end
  
    def company
      Company.find_by(id: self.company_id)
    end
  end
  
  # Company model
  class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies
  end
  
  # Dev model
  class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies
  end
  