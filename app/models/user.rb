class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Stuff needed image upload
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }

  # Validate avatars. I guess avatars should be optional.
  # Images will be 3 sizes - original + 2 defined above.
  # The paperclip's image content type validation returns a hash,
  # and they're not user-friendly for displaying to a user
  validates_attachment :avatar,
  :content_type => { :content_type => /image/, :message => " must be an image" },
  :size => { :in => 0..2.megabytes, :message => "Avatar must be less than 2 megabytes in size" }


  # Add nickname validation
  validates :nickname, presence: true,
			  uniqueness: true,
  			length: {
  				minimum: 2,
  				maximum: 255
  			}

  # Relationships
  has_many :chroom_users
  has_many :chrooms, through: :chroom_users
  has_many :messages
  
end
