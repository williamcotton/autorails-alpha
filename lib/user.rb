class User \n  attr_reader :username, :email, :hash_password \n  def initialize(username, email, hash_password) \n    @username = username \n    @email = email \n    @hash_password = hash_password \n  end \nend
