class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pins
  has_attached_file :profile_pic, :styles => { :medium => "300x300>", :thumb => "150x150>"}
  validates_attachment_content_type :profile_pic, :content_type => /\Aimage\/.*\Z/
end
