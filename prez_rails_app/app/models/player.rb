class Player < ActiveRecord::Base
  belongs_to :game
  has_one :card
end
