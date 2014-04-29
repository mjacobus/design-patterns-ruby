class User
  attr_reader :name, :email

  def initialize(name, email)
    @name, @email = name, email
  end
end

class UserDecorator
  def initialize(user)
    @user = user
  end

  def to_json
    { name: @user.name, email: @user.email }.to_json
  end
end
