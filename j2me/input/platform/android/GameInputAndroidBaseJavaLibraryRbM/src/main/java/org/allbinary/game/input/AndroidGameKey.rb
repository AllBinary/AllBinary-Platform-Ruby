# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input


class AndroidGameKey < Input
    

    def initialize(keyCode, name)
        super(keyCode, name)
        inputFactory = InputFactory.getInstance()
        inputFactory.inputIntegerArray[self.getId()] = self
    end
    

    def toString()
        return "AndroidGameKey: " + super.to_s
    end
    alias_method :to_s, :toString
    

    def self.getString(keyCode)
        input = InputFactory.getInstance().getInstanceById(keyCode)
        if input != nil
            return input.getName()
        else
            return StringUtil.getInstance().EMPTY_STRING
        end
    end
end

require "org/allbinary/logic/string/StringUtil"

