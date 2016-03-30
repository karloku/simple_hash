# frozen_string_literal: true
module SimpleHash
  module_function

  def h(&list_block)
    variables = yield.map(&:to_s)
    Hash[
      variables.map do |variable|
        [variable.to_sym, list_block.binding.local_variable_get(variable)]
      end
    ]
  end

  def self.short_cut!
    Object.include(SimpleHash)
  end
end

def SimpleHash(&list_block)
  SimpleHash.h(&list_block)
end
