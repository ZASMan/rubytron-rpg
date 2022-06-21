class Controller

  SUCCESS_RESPONSES = [200, 201].freeze
  VALID_INPUTS = ['move', 'inventory', 'escape', 'attack', 'save and quit'].freeze
  # Post Route, takes user input
  def user_action
    response = evaluate_input(params)
    if SUCCESS_RESPONSES.include?(response['status'])
      {status: 200, response['body'] }
    else
      {status: 400, body: response['body']}
    end
  end

  private
  
  def current_player
    current_user.player
  end

  def evaluate_input(params)
    return {status: 400} unless VALID_INPUTS.include?(params['choice'])
    current_player.send(params['choice'])
  end
end
