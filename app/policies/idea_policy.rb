class IdeaPolicy < ApplicationPolicy
  attr_reader :user, :idea

  def initialize(user, idea)
    @user = user
    @idea = idea
  end

  def update?
    user.admin? or idea.user == user
  end

  def destroy?
  	user.admin? or idea.user == user
  end
end