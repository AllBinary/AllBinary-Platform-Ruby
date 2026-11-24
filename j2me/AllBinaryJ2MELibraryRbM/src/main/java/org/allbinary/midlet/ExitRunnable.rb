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

require "java/lang/JavaOverload"
require "java/lang/Runnable"

module ::Org; module Allbinary; module Midlet

class ExitRunnable
    include ::Java::Lang::Runnable
    attr_accessor :logUtil, :commonStrings, :midlet, :processor, :isProgress

    def jfields_org_allbinary_midlet_ExitRunnable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @midlet = nil unless instance_variable_defined?(:@midlet)
        @processor = nil unless instance_variable_defined?(:@processor)
        @isProgress = nil unless instance_variable_defined?(:@isProgress)
    end
    

    def initialize(midlet, processor, isProgress)
        jfields_org_allbinary_midlet_ExitRunnable
        @midlet = midlet
        @isProgress = isProgress
        @processor = processor
    end
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START_RUNNABLE, self, @commonStrings.RUN)
            @midlet.destroyAppInRunnable(false, @isProgress)
            @midlet.setDisplay(::Javax::Microedition::Lcdui::NullCanvas::NULL_CANVAS)
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
    java_overload :run, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :NullCanvas, "javax/microedition/lcdui/NullCanvas" unless const_defined?(:NullCanvas, false); end; end; end
module ::Org; module Allbinary; module Canvas; autoload :Processor, "org/allbinary/canvas/Processor" unless const_defined?(:Processor, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AllBinaryMidlet, "org/allbinary/midlet/AllBinaryMidlet" unless const_defined?(:AllBinaryMidlet, false)

end; end; end

