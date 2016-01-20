require "nitv/version"

module Nitv
  def self.is_valid?(nit)
    raise Nitv::NitTypeError,   "nit should be a string" unless nit.class == String
    raise Nitv::NitFormatError, "nit format should be xxxxxx-x" unless /^[0-9]+-[0-9k]$/ =~ nit

    nums = nit[0, nit.index("-")].chars
    checker = nit.chars.last == "k" ? 10 : nit.chars.last.to_i

    i = 2
    sum = 0
    nums.reverse_each.map do |n|
      sum += (n.to_i * i)
      i += 1
    end

    result = 11 - ((sum % 11) % 11)
    result == checker
  end

  class NitFormatError < StandardError
  end

  class NitTypeError < StandardError
  end
end
