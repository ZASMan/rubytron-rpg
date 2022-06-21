class BaseAction
  attr_accessor :random_number, :success_numbers, :action_type
  ACTION_TYPES = [].freeze
  DEFAULT_SUCESS_NUMBERS = (0..30).to_a.freeze  

  def initialize(action_type: , bonus_modifier_numbers: [])
    @random_number = (rand() * 100).to_i
    @action_type = action_type
    @success_numbers = if success_numbers == []
                         DEFAULT_SUCCESS_NUMBERS
                       else
                         DEFAUT_SUCCESS_NUMBERS << bonus_modifier_numbers
                       end
  end
  
  # If returns nil, roll was not a success
  # Else it will return the index of the success_numbers array where random_number is present
  def roll
    success_numbers[random_number]
  end
end
