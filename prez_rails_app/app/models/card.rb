class Card < ActiveRecord::Base
  belongs_to :player
  extend CardMethods::ClassMethods
end
