class User < ApplicationRecord
end

  def full_name
    "\#{first_name} \#{last_name}"
  end
