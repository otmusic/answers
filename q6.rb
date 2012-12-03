-----------------------------------------------------Part1--------------------------------------------------------
class User < ActiveRecord::Base
  def change_login(new_login)
    login = new_login
    login.save!
  end
end
-----------------------------------------------------Part2--------------------------------------------------------
class User
  attr_accessor :buyer
  def add_to_cart(product_id, quantity)
    buyer.add_to_cart(product_id, quantity)
  end
end
------------------------------------------------------------------------------------------------------------------
