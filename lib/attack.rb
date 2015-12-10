class Attack

  def basic_attack(player)
    player.deduct_hp(5)
  end

  def poison_attack(player)
    player.deduct_hp(5)
    player.poisoned
  end

  def effects(player)
    if player.poison == true
        player.deduct_hp(3)
        player.psn_counter
    end
  end

end
