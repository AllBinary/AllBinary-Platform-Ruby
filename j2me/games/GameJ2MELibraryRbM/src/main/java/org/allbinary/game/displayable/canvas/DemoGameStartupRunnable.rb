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
# package org.allbinary.game.displayable.canvas

require "java/lang/JavaOverload"
require "org/allbinary/thread/ABRunnable"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class DemoGameStartupRunnable < ::Org::Allbinary::ThreadPackage::ABRunnable
    attr_accessor :logUtil, :demoCanvas

    def jfields_org_allbinary_game_displayable_canvas_DemoGameStartupRunnable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @demoCanvas = nil unless instance_variable_defined?(:@demoCanvas)
    end
    

    def initialize(demoCanvas)
        super()
        jfields_org_allbinary_game_displayable_canvas_DemoGameStartupRunnable
        @demoCanvas = demoCanvas
    end
    

    def run()
        begin
            self.setRunning(true)
            @demoCanvas.stopGameDemo()
            @demoCanvas.create()
            @demoCanvas.start()
            self.setRunning(false)
        rescue StandardError => e
            self.setRunning(false)
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
    java_overload :run, 0
    

    def getType()
        return DemoGameStartupRunnable::TYPE
    end
    java_overload :getType, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:TYPE, 4)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DemoGameStartupRunnable"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:TYPE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :DemoCanvas, "org/allbinary/game/displayable/canvas/DemoCanvas" unless const_defined?(:DemoCanvas, false)

begin
    DemoGameStartupRunnable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

