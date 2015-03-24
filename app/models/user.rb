class User < ActiveRecord::Base
  has_many :tools
  has_many :reservations
  has_many :messages
  has_many :reviews


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

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
    where("kind ILIKE ?", "%#{search}%")
  end

  def reservation_tool
    @reservations.tool_id
  end

  def address
    [street_address, state, zip].compact.join(', ')
  end

  def lat_and_long
    [latitude, longitude].compact.join(', ')
  end

  def how_far?(user, tool)
    Geocoder::Calculations.distance_between([tool.user.lat_and_long],
      [current_user.lat_and_long])
  end

  def rating_total
    @rating
  end

  def rating_amount
    @review.rating.count
  end

  def rating_average
    rating_total / rating_amount
  end


  geocoded_by :address
  after_validation :geocode


end




