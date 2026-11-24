#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/input/Input"

module ::Org; module Allbinary; module Game; module Input

class J2MEGameKey < Input
    

    def initialize(key, keyName)
        super(key, keyName)
        id = self.getId()
        if id >= 0
            inputFactory = InputFactory.getInstance()
            inputFactory.add(id, self)
        end
    end
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("J2MEGameKey: ").append(super.to_s).to_s
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

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false)

end; end; end; end

