class User < ActiveRecord::Base
    
    ROLES = %w[admin employee guest]

	before_save { self.email = email.downcase }
	before_create :create_remember_token

	has_many :assets ,dependent: :destroy
	has_many :projects ,dependent: :destroy
    has_many :samples ,dependent: :destroy
    has_many :experiment_details ,dependent: :destroy
    has_many :data_sets ,dependent: :destroy
    has_many :data_processings ,dependent: :destroy
    has_many :publications ,dependent: :destroy

	validates :first_name, length: { maximum: 45 },presence: true
	validates :last_name, length: { maximum: 45 },presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },uniqueness: { case_sensitive: false }
    has_secure_password
	validates :password, length: { minimum: 6 },presence: true
    validates_confirmation_of :password ,presence: true
	validates :role, presence: true

    
	def User.new_remember_token
        SecureRandom.urlsafe_base64
    end

	def User.digest(token)
        Digest::SHA1.hexdigest(token.to_s)
    end
    def is_admin?
        self.role == "admin"
    end


  private

	def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end

end
