module CardMethods

  module ClassMethods

    def good_bad_suicidal
      peeps = ["wolves", "villagers"]
    end

    def bad_guys
      wolves = []
      Card.all.each do |card|
        wolves << card if card.team == "wolves"
      end
      wolves
    end

    def village_people
      villagers = []
      Card.all.each do |card|
        villagers << card if card.team == "villagers"
      end
      villagers
    end

  end

  module InstanceMethods
  end

end
