class Player
  attr_reader :name, :hp, :dmg, :poison


  DEFAULT_HP = 60

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
    @poison = false
    @psn_counter = 0
  end

  def deduct_hp(damage)
    @dmg = damage
    @hp -= damage
  end

  def poisoned
    @poison = true
  end

  def psn_counter
    if @psn_counter < 2
      @psn_counter += 1
    else
      @poison = false
      @psn_counter = 0
    end
  end


end
