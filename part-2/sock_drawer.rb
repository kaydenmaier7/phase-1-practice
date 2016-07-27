require_relative 'sock_matcher'
class SockDrawer
  attr_reader :socks, :matcher

  def initialize(args = {})
    @socks = args.fetch(:socks) { Array.new }
    @matcher = args.fetch(:matcher)
  end

  def supply_match_for
    # when it has a matching sock returns a matching sock
    if @socks.match? == true
      @socks.shift
    end
    nil
  end

  def supply_one_pair_of_socks
    #produce an arbitrary pair of matched socks, return that pair, and ensure the two socks of the pair are removed from the collection
    socks.rand(1..4).delete
  end
end
