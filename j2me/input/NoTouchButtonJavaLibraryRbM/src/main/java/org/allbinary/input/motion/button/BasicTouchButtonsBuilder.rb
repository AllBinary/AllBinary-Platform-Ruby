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
# package org.allbinary.input.motion.button

require "java/lang/JavaOverload"
require "org/allbinary/input/motion/button/BaseTouchInput"

module ::Org; module Allbinary; module Input; module Motion; module Button

class BasicTouchButtonsBuilder < BaseTouchInput
    attr_accessor :logUtil

    def jfields_org_allbinary_input_motion_button_BasicTouchButtonsBuilder
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        super()
        jfields_org_allbinary_input_motion_button_BasicTouchButtonsBuilder
    end
    

    def self.getInstance()
        return SINGLETON
    end
    

    def getList()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.GET_LIST)
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
            return list
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.GET_LIST, e)
            return ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
        end
    end
    java_overload :getList, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, BasicTouchButtonsBuilder.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicTouchButtonsBuilder"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end

begin
    BasicTouchButtonsBuilder.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

