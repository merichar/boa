class Participant < ActiveRecord::Base
  before_save :reformat_phone

  # :card_number used for ID swipe forms
  attr_accessible :andrewid, :has_signed_waiver, :phone_number, :has_signed_hardhat_waiver, :card_number
  attr_reader :card_number

  validates :andrewid, :presence => true, :uniqueness => true
  validates :has_signed_waiver, :acceptance => {:accept => true}
  validates_format_of :phone_number, :with => /^\(?\d{3}\)?[-. ]?\d{3}[-.]?\d{4}$/, :message => "should be 10 digits (area code needed) and delimited with dashes only", :allow_blank => true

  has_many :organizations, :through => :memberships
  has_many :shifts, :through => :shift_participants
  # has_many :organizations, :through => :memberships
  has_many :checkouts, dependent: :destroy
  has_many :tools, :through => :checkouts
  has_many :memberships, dependent: :destroy
  has_many :shift_participants, dependent: :destroy
  has_one  :contact_list #this may need to be enabled?
  belongs_to :user, dependent: :destroy

  scope :search, lambda { |term| where('andrewid LIKE ?', "#{term}%") }
  
  def name
    cached_name
  end

  def surname
    cached_surname
  end

  def email
    cached_email
  end

  def department
    cached_department
  end

  def student_class
    cached_student_class
  end

  def card_number=( card_number )
    @card_number = card_number
  end

  def card_number
    @card_number
  end

  #error handling here does not work?
  class NotRegistered < Exception
  end

  class BoothChairLoyalty < Exception
  end

  def self.find_by_card(card_number)
    andrewid = self.get_andrewid(card_number)

    if !andrewid.nil?
      theUser = self.find_by_andrewid(andrewid)
    end

    raise NotRegistered unless !theUser.nil?

    return theUser
  end

  private
  
  def self.get_andrewid(card_number)
    andrewid = CarnegieMellonIDCard.search(card_number)

    return andrewid
  end

  def cached_name
    if DateTime.now - 14.days > cache_updated
      update_cache
    end
    
    read_attribute(:cached_name)
  end
  
  def cached_name=(val)
    write_attribute :cached_name, val
  end
  
  def cached_surname
    if DateTime.now - 14.days > cache_updated
      update_cache
    end
    
    read_attribute(:cached_surname)
  end
  
  def cached_surname=(val)
    write_attribute :cached_surname, val
  end
  
  def cached_email
    if DateTime.now - 14.days > cache_updated
      update_cache
    end
    
    read_attribute(:cached_email)
  end
  
  def cached_email=(val)
    write_attribute :cached_email, val
  end
  
  def cached_department
    if DateTime.now - 14.days > cache_updated
      update_cache
    end
    
    read_attribute(:cached_department)
  end
  
  def cached_department=(val)
    write_attribute :cached_department, val
  end
  
  def cached_student_class
    if DateTime.now - 14.days > cache_updated
      self.update_cache
    end
    
    read_attribute(:cached_student_class)
  end
  
  def cached_student_class=(val)
    write_attribute :cached_student_class, val
  end
  
  def cache_updated
    if read_attribute(:cache_updated).nil?
      update_cache
    end
    
    read_attribute(:cache_updated)
  end
  
  def cache_updated=(val)
    write_attribute :cache_updated, val
  end
  
  def update_cache
    ldap_reference ||= CarnegieMellonPerson.find_by_andrewid( self.andrewid )
    
    write_attribute :cached_name, Array.[](ldap_reference["cn"]).flatten.last
    write_attribute :cached_surname, ldap_reference["sn"]
    write_attribute :cached_email, ldap_reference["mail"]
    write_attribute :cached_department, ldap_reference["cmuDepartment"]
    write_attribute :cached_student_class, ldap_reference["cmuStudentClass"]
    write_attribute :cache_updated, DateTime.now

    self.save!
  end
  
  def reformat_phone
    phone_number = self.phone_number.to_s
    phone_number.gsub!(/[^0-9]/,"")
    self.phone_number = phone_number
  end
end
