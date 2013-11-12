class Participant < ActiveRecord::Base
  before_save :reformat_phone, :validate_booth_chair_loyalty

  attr_accessible :andrewid, :has_signed_waiver, :phone_number, :has_signed_hardhat_waiver, :card_number
  attr_reader :card_number

  # used for ID swipe forms
  attr_accessible :temp_id_card_number
  attr_accessor :temp_id_card_number

  validates :andrewid, :presence => true, :uniqueness => true
  validates :has_signed_waiver, :acceptance => {:accept => true}
  validates :phone_number, :length => { :minimum => 10, :maximum => 10}, :numericality => true, :allow_nil => true
  #validates :checkout_id, :length => { :minimum => 9, :maximum => 9}
  
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


  def ldap_reference
    @ldap_reference ||= CarnegieMellonPerson.find_by_andrewid( self.andrewid )
    # Add new attributes to CarnegieMellonPerson attributes before adding 
    # references to them in participant.rb
  end

  def name
    Array.[](ldap_reference["cn"]).flatten.last
  end

  def surname
    ldap_reference["sn"]
  end
  
  def email
    ldap_reference["mail"]
  end

  def department
    ldap_reference["cmuDepartment"]
  end

  def student_class
    ldap_reference["cmuStudentClass"]
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
    andrewid = CarnegieMellonIDCard.search(card_number)
    
    if !andrewid.nil?
      theUser = self.find_by_andrewid(andrewid)
    end
    
    raise NotRegistered unless !theUser.nil?
        
    return theUser
  end

  def self.card_number_to_andrewid(card_number)
    andrewid = CarnegieMellonIDCard.search(card_number)
    
    return andrewid
  end

  private
  def reformat_phone
   phone_number = self.phone_number.to_s 
   phone_number.gsub!(/[^0-9]/,"")
   self.phone_number = phone_number 
  end

  #due to permissions issues with being a booth chair. Only allow booth chairs to be a member of one organization.
  def validate_booth_chair_loyalty
    if ( (self.user.roles.include?(:booth_chair)) && (self.organizations.size > 1) )
      raise BoothChairLoyalty
    end
    return true
  end

end
