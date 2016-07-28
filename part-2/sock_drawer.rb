require_relative 'sock_matcher'

class SockDrawer
  attr_reader :socks, :matcher

  def initialize(args = {})
    @socks = args.fetch(:socks) { [] }
    # @socks = args.fetch(:socks, Array.new)
    @matcher = args.fetch(:matcher)
    # @matcher = args[:matcher]
  end

  def supply_match_for(input_sock)
    # 1. input - the value AND type of the input
    # 2. output - the value AND type of the output AND any external modifications
    # 3. Shit you have to work with -
    # 4. process - steps
    # when it has a matching sock returns a matching sock
    @socks.each do |sock|
      match_found = @matcher.match?(sock, input_sock)
      if match_found
        @socks.delete(sock)
        return sock
      end
    end
    nil
  end

  def supply_one_pair_of_socks
    #produce an arbitrary pair of matched socks, return that pair, and ensure the two socks of the pair are removed from the collection
    socks.rand(1..4).delete
  end
end
