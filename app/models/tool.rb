class Tool < ActiveRecord::Base
  belongs_to :user
  has_many :reservations

  has_attached_file :image, :styles => { :medium => "300x300>",
                                          :thumb => "100x100>" },
                                          :storage => :s3,
                                          :bucket => 'chombo',
                                          :url =>':s3_domain_url',
                                          :path => ':class/:attachment/:id_partition/:style/:filename',
                                          :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def self.search(search)
    where("kind || name ILIKE ?", "%#{search}%")
  end

  def self.how_far(tools, user)
    tools.sort_by do |tool|
      Geocoder::Calculations.distance_between([tool.user.latitude,tool.user.longitude],
      [user.latitude,user.longitude]).round(2)
    end
  end


end
