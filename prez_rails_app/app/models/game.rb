class Game < ActiveRecord::Base
  has_many :players
  has_many :cards, through: :players

  def players
    Player.all
  end

  def skillz
    not_a_werewolf = {1 => "noob - select a card for each player(including middle)",
    2 => "pro - select a card for each player(including middle)",
    3 => "werewolf - select a card for each player(including middle)"}
  end

  def assign_cards(params)
    params[:game][:player_ids].pop
    params[:game][:card_ids].pop

    shuffled = params[:game][:card_ids].shuffle

    shuffled.each do |id|
      card = Card.find(id.to_i)
      card.player_id = params[:game][:player_ids].shift.to_i
      card.save
    end

  end
  # def check_card_count
  #   binding.pry
  #   if skill_lvl == 1 && num_players + 2 == self.cards.count
  #   end

  # end

  # def assing_cards
  #   self.players.each do |player|
  #     Card.
  #

end
