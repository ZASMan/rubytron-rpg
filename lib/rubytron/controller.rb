module Rubytron
  class Controller

    SUCCESS_RESPONSES = [200, 201].freeze
    # Post Route, takes user input
    def user_action
      response = evaluate_input(params)
      if SUCCESS_RESPONSES.include?(response['status'])
        response['body']
      else
        invalid_input
      end
    end

    private

    def invalid_input

    end

    def evaluate_input(params)

    end
  end
end
