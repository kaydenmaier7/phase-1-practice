class SockDrawer
  attr_reader :socks, :matcher

  def initialize(args = {})
    @socks = args.fetch(:socks) { Array.new }
    @matcher = args.fetch(:matcher)
  end

  def supply_match_for(sock_to_match)
    @socks.each do |sock|
      if @matcher.match?(sock, sock_to_match)
        return @socks.delete(sock)
      end
    end
      return nil
  end

  def supply_one_pair_of_socks
    # matched_socks = @socks.select {|sock| sock.color == "white"}
    pairs = []

  end

end









