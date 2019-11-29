class Proverb
  attr_accessor :chain, :qualifier

  def initialize(*args)
    @chain = args
    @qualifier = args.fetch(:qualifier, "")
  end

  def proverb_result
    for i in 1..chain.length - 1 do
      print "For want of a #{chain[i - 1]} the #{chain[i]} was lost.\n"
    end
    print "And all for the want of a #{chain[0]}"
  end
end

if $PROGRAM_NAME == __FILE__
  chain = %w(nail shoe horse rider message battle kingdom)
  proverb = Proverb.new(*chain, qualifier: 'horseshoe')
  proverb.proverb_result
end
