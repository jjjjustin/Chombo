class User < ActiveRecord::Base
  has_many :tools


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>",
                                          :thumb => "100x100>" },
                                          :storage => :s3,
                                          :bucket => 'chombo',
                                          :url =>':s3_domain_url',
                                          :path => ':class/:attachment/:id_partition/:style/:filename',
                                          :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end




