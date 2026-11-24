# 
# AllBinary Open License Version 1 
# Copyright (c) 2007 AllBinary 
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
require "org/allbinary/input/motion/button/TouchButtonsListBuilder"

module ::Org; module Allbinary; module Input; module Motion; module Button

class EndLevelTouchButtonsBuilder < TouchButtonsListBuilder
    attr_accessor :logUtil

    def jfields_org_allbinary_input_motion_button_EndLevelTouchButtonsBuilder
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        super()
        jfields_org_allbinary_input_motion_button_EndLevelTouchButtonsBuilder
    end
    

    def getList()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
            list.addAllList(BasicTouchButtonsBuilder.new().getList())
            list.addAllList(BuildingScrollTouchButtonsBuilder.new().getList())
            list.addAllList(UpgradeDowngradeTouchButtonsBuilder.new().getList())
            self.addList(list)
            return list
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
            return ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
        end
    end
    java_overload :getList, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :BasicTouchButtonsBuilder, "org/allbinary/input/motion/button/BasicTouchButtonsBuilder" unless const_defined?(:BasicTouchButtonsBuilder, false)
autoload :BuildingScrollTouchButtonsBuilder, "org/allbinary/input/motion/button/BuildingScrollTouchButtonsBuilder" unless const_defined?(:BuildingScrollTouchButtonsBuilder, false)
autoload :UpgradeDowngradeTouchButtonsBuilder, "org/allbinary/input/motion/button/UpgradeDowngradeTouchButtonsBuilder" unless const_defined?(:UpgradeDowngradeTouchButtonsBuilder, false)

end; end; end; end; end

