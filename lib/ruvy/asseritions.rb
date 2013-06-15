module Ruvy
  module Asseritions # @private

    private
    def assert_loop
      return if @loop
      raise LoopError, 'You must initialize a loop'
    end
  end
end
