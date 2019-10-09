class Sieve
  attr_reader :limit, :list

  def initialize(limit)
    @limit = limit
    @list = [*2..limit].to_h { |prime| [prime, true] }
  end

  def primes
    return [] if limit < 2

    @primes ||= algorithm.select { |prime, mark| mark == true }.keys
  end

  def algorithm
    list.each { |prime, mark|
      if mark == true
        list.each_key { |number|
          list[number * prime] = false if number * prime <= limit
        }
      end
    }
  end
end


# test part
if $PROGRAM_NAME == __FILE__
  print Sieve.new(16).primes
end
