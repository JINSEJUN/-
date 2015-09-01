class User < ActiveRecord::Base
  has_many :replies
  mount_uploader :img, S3uploaderUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
