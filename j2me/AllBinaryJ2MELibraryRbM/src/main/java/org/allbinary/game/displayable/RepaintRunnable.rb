# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.displayable

require "java/lang/JavaOverload"
require "org/allbinary/thread/ARunnable"

module ::Org; module Allbinary; module Game; module Displayable

class RepaintRunnable < ::Org::Allbinary::ThreadPackage::ARunnable
    attr_accessor :canvas

    def jfields_org_allbinary_game_displayable_RepaintRunnable
        @canvas = nil unless instance_variable_defined?(:@canvas)
    end
    

    def initialize(canvas)
        super()
        jfields_org_allbinary_game_displayable_RepaintRunnable
        @canvas = canvas
    end
    

    def run()
        begin
            @canvas.repaint()
            ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance().process()
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
    java_overload :run, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end

