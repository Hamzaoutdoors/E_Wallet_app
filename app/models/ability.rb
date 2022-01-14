class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, User, id: user.id
    can :manage, Category, author: user
    can :manage, Activity, author: user
    can :manage, ActivityCategory, category_id: { author_id: user.id }
  end
end
