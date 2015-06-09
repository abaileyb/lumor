class ItemPolicy < ApplicationPolicy
  attr_reader :user, :item

  def initialize(user, item)
    @user = user
    @item = item
  end

  def update?
    user.admin?
  end

  def destroy?
  	user.admin?
  end
end