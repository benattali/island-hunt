class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    user == record.user
  end

  def create?
    true
  end

  def destroy?
    record.user == user || user.admin
  end

  def new?
    true
  end

  def show?
    true
  end
end
