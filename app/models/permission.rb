class Permission
  include Guachiman::Permissions
  # include Guachiman::Params

  def initialize user
    if user.nil?
      guest
    elsif user.admin?
      admin
    else
      member
    end
  end

private

  def admin
    allow_all!
  end

  def guest
  end

  def member
    guest
  end
end
