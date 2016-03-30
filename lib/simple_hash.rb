# frozen_string_literal: true
module SimpleHash
  module_function

  # Make a hash from an array of symbols wrapped in a block
  # Suppose you have variables
  #
  #   year = 2016
  #   month = 3
  #   day = 30
  #   hour = 18
  #   minute = 50
  #   second = 23
  #
  # Bulid the hash like this
  #
  #   SimpleHash.h{[:year, :month, :day, :hour, :minute, :second]}
  #
  # This method gets the keys by yieling the block passed in
  # and look up the variable values thourgh the block's binding
  # @param [&list_block] block with an array of keys, e.g. {[:key1, :key2, ...]}
  # @return [Hash] hash with passed-in keys, e.g. {key1: 'key1_value', key2: 'key2_value', ...}
  def h(&list_block)
    variables = yield.map(&:to_s)
    Hash[
      variables.map do |variable|
        [variable.to_sym, list_block.binding.local_variable_get(variable)]
      end
    ]
  end

  # Adds #h method to Object, delegating to SimpleHash::h
  def self.short_cut!
    Object.include(SimpleHash)
  end
end

# Delegates to SimpleHash::h
# @param [&list_block] block with an array of keys, e.g. {[:key1, :key2, ...]}
# @return [Hash] hash with passed-in keys, e.g. {key1: 'key1_value', key2: 'key2_value', ...}
def SimpleHash(&list_block)
  SimpleHash.h(&list_block)
end
