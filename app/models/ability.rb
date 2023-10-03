# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Post

    return unless user.present?
    can :manage, [Comment, Post], user_id: user.id

    return unless user.admin?
    can :manage, :all
  end 
end
