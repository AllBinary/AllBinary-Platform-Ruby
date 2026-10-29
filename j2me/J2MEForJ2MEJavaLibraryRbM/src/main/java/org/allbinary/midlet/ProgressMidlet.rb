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

require "org/allbinary/midlet/AllBinaryMidlet"

#J2MEForJ2ME
class ProgressMidlet < AllBinaryMidlet
    attr_accessor :abeClientInformation

    def initialize_fields
        @abeClientInformation = nil
    end
    

    def initialize(clientInformationFactory)
        super()
        initialize_fields
        self.preInit()
        @abeClientInformation = clientInformationFactory.getInstance()
    end
    

    def preInit()
    end
    

    def exitProgress(isProgress)
        processor = MidletExitProcessorFactory.getInstance().getExitInstance(self)
        begin
            primaryThreadPool = PrimaryThreadPool.getInstance()
            runnable = ExitRunnable.new(self, processor, isProgress)
            primaryThreadPool.runTask(runnable)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "exit", e)
            begin
                processor.process()
            rescue StandardError => e2
                @logUtil.put(@commonStrings.EXCEPTION, self, "exit", e)
            end
        end
    end
end

require "org/allbinary/canvas/Processor"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/ClientInformationFactory"
require "org/allbinary/thread/PrimaryThreadPool"
require "org/allbinary/thread/ThreadPool"
require "org/allbinary/midlet/ExitRunnable"
require "org/allbinary/midlet/MidletExitProcessorFactory"
require "java/lang/Runnable"

