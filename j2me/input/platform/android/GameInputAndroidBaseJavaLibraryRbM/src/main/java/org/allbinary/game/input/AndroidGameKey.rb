# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/input/Input"

module ::Org; module Allbinary; module Game; module Input

class AndroidGameKey < Input
    

    def initialize(keyCode, name)
        super(keyCode, name)
        inputFactory = InputFactory.getInstance()
        inputFactory.inputIntegerArray[self.getId()] = self
    end
    

    def toString()
        return "AndroidGameKey: " + super.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def self.getString(keyCode)
        input = InputFactory.getInstance().getInstanceById(keyCode)
        if input != nil
            return input.getName()
        else
            return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        end
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false)

end; end; end; end

