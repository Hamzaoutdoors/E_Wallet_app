class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, Category, author_id: user.id
    can :manage, Activity, author_id: user.id
  end
end
