class User < ActiveRecord::Base
  has_many :categories, dependent: :nullify
has_many :posts, dependent: :destroy
  rolify
   include Authority::UserAbilities
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    def confirm!
    super
    add_role :user
  end
end
