class Checkout < ActiveRecord::Base
  attr_accessible :checked_in_at, :checked_out_at, :participant_id, :organization_id, :tool_id
  #before_save :hasParticipantOrOrganization

  # used for ID swipe forms
  attr_accessible :card_number
  attr_accessor :card_number

  validates :tool_id, :numericality => true, :presence => true

  before_save :checked_out_at, :presence => true

  belongs_to :participant
  belongs_to :organization
  belongs_to :tool

  default_scope order('tool_id and checked_out_at DESC')
  scope :old, where('checked_in_at is not null')
  scope :current, where('checked_in_at is null')

  def hasParticipantOrOrganization
    !(self.participant.nil? && self.organization.nil?)
  end

end