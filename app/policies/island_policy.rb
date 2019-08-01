class IslandPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all.order(name: :asc)
    end
  end

  def dashboard?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    record.user == user
  end
end
