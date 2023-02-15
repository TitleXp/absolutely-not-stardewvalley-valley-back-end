class ApplicationRecord < ActiveRecord::Base
  # primary_abstract_class
  self.abstract_class = true # what's the difference between this and line 2?
end
