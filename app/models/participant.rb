class Participant < ActiveRecord::Base
  attr_accessible :andrewid, :has_signed_waiver, :phone_number, :has_signed_hardhat_waiver, :card_number
  attr_reader :card_number

  validates :andrewid, :presence => true, :uniqueness => true
  validates :has_signed_waiver, :acceptance => {:accept => true}
  validates :phone_number, :length => { :minimum => 10, :maximum => 10}, :numericality => true, :allow_nil => true
  validates :checkout_id, :length => { :minimum => 9, :maximum => 9}, :presence => true
  
  has_many :organizations, :through => :memberships
  has_many :shifts, :through => :shift_participants
  has_many :organizations, :through => :memberships
  has_many :checkouts
  has_many :tools, :through => :checkouts
  has_many :memberships
  has_many :shift_participants
  has_one  :contact_list #this may need to be enabled?

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

  def self.find_by_card card_number
    andrewid = CarnegieMellonIDCard.search card_number
    
    if !andrewid.nil?
      andrewID = self.find_by_andrewid andrewid
    end
    
    raise NotRegistered unless !andrewID.nil?
    
    return andrewID
  end
end
