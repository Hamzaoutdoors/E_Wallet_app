class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, Category, author_id: user.id
    can :manage, Action, author_id: user.id
  end
end
