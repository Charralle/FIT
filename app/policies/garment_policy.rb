class GarmentPolicy < ApplicationPolicy

  def show?
    update?
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    update?
  end

  def edit_shape?
    update?
  end

  def edit_fabric?
    update?
  end

  def edit_detail?
    update?
  end

  def edit_selected?
    update?
  end


  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      scope.where(user: user)
      # If users can see all restaurants
      # scope.where(user: user) # If users can only see their restaurants
      # scope.where("name LIKE 't%'") # If users can only see restaurants starting with `t`
      # ...
    end
  end
end
