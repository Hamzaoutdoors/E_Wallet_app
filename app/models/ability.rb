class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, [Action, Categoty], author_id: user_id
  end
end
