class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Category, author_id: user.id
    can :manage, Activity, author_id: user.id
    can :manage, ActivityCategory, category_id: { author_id: user.id }
  end
end
