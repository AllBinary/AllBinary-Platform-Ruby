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

require "org/allbinary/thread/ABRunnable"

class DemoGameStartupRunnable < ABRunnable
    attr_accessor :logUtil, :demoCanvas

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @demoCanvas = nil
    end
    

    def initialize(demoCanvas)
        super()
        initialize_fields
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
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
    

    def getType()
        return DemoGameStartupRunnable::TYPE
    end

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

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :DemoCanvas, "org/allbinary/game/displayable/canvas/DemoCanvas"

begin
    DemoGameStartupRunnable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

