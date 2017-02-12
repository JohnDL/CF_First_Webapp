class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :orders
    
  after_create :send_admin_mail
  def send_admin_mail
    UserMailer.welcome_email(self).deliver
  end    
    
end

