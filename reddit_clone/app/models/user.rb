class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :session_token, presence: true
    validates :password_digest, presence: true
    validates :password, length: {minimum: 6}, allow_nil: true

    after_initialize :ensure_session_token
    attr_reader :password


    # FIGVAPER

    def self.find_by_credentials(username, password)
        @user = User.find_by(username: username)

        if @user && @user.is_password?(password)
            @user
        else
            nil
        end
    end

    def is_password?(password)
    end

    def generate_session_token
    end

    def password=(password)
    end

    def ensure_session_token
    end

    def reset_session_token!
    end
end