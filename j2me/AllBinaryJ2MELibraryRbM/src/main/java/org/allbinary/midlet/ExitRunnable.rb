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
# package org.allbinary.midlet

# require "javax/microedition/lcdui/NullCanvas"
require "java/lang/Runnable"

class ExitRunnable
    include Runnable
    attr_accessor :logUtil, :commonStrings, :midlet, :processor, :isProgress

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @midlet = nil
        @processor = nil
        @isProgress = nil
    end
    

    def initialize(midlet, processor, isProgress)
        initialize_fields
        @midlet = midlet
        @isProgress = isProgress
        @processor = processor
    end
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START_RUNNABLE, self, @commonStrings.RUN)
            @midlet.destroyAppInRunnable(false, @isProgress)
            @midlet.setDisplay(NullCanvas::NULL_CANVAS)
            @midlet.notifyDestroyed()
            @logUtil.putF(@commonStrings.END_RUNNABLE, self, @commonStrings.RUN)
            @processor.process()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
            begin
                @processor.process()
            rescue StandardError => e2
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
            end
        end
    end
end

require "org/allbinary/canvas/Processor"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/midlet/AllBinaryMidlet"

