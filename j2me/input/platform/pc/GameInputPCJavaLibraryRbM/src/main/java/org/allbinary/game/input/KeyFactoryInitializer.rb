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
require "org/allbinary/init/Init"

module ::Org; module Allbinary; module Game; module Input

class KeyFactoryInitializer < ::Org::Allbinary::Init::Init
    attr_accessor :logUtil

    def jfields_org_allbinary_game_input_KeyFactoryInitializer
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        super()
        jfields_org_allbinary_game_input_KeyFactoryInitializer
    end
    

    def init()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.INIT)
        ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().initWithRange(0x2D0, 6)
    end
    java_overload :init, 0
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end

end; end; end; end

