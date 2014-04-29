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

  # this is the added funcitonality
  def to_json
    { name: @user.name, email: @user.email }.to_json
  end

  def method_missing(method, *args, &block)
    @user.send(method, *args, &block)
  end
end
