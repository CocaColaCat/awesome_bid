class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 

    can [:show, :index], Product
    can [:destroy, :update], Product, user: user
    if user.employee?
        can :create, Product
    end
  end
end
