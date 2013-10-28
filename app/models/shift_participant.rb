class ShiftParticipant < ActiveRecord::Base
  belongs_to :shift
  belongs_to :participant

  attr_accessible :clocked_in_at, :clocked_out_at, :shift_id, :participant_id

  # used for ID swipe forms
  attr_accessible :temp_id_card_number
  attr_accessor :temp_id_card_number

  validates :shift_id, :clocked_in_at, :participant_id, :presence => true

  scope :current, where('clocked_out_at <> NULL')

end