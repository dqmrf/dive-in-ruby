module StateHelper

  class State
    attr_reader :error

    def initialize
      @success = true
    end

    def success?
      @success
    end

    def log_error(err = nil, options = {})
      unless self.error
        error = {}
        if err
          error[:type] = err.type
          error[:message] = options[:message] || err.message
        else
          error[:message] = 'Something wrong!'
        end

        set_error(error)
      end
    end

    def log_error_and_raise(err, *args)
      log_error(err, *args)
      raise err
    end

    private

    def set_error(error)
      @error = error
      @success = false
    end
  end

  def state
    @state ||= State.new
  end

end
