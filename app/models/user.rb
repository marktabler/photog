class User < ActiveRecord::Base

  def self.lookup(auth)
    unless user = User.find_by_email(auth[:info][:email])
      user = User.new(name: auth[:info][:name],
                      email: auth[:info][:email],
                      auth_hash: auth.to_json)
      user.save!
    end
    user
  end

end
