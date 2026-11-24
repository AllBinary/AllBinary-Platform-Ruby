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
require "org/allbinary/midlet/AllBinaryMidlet"

module ::Org; module Allbinary; module Midlet

#AndroidToJ2ME
class ProgressMidlet < AllBinaryMidlet
    attr_accessor :abeClientInformation

    def jfields_org_allbinary_midlet_ProgressMidlet
        @abeClientInformation = nil unless instance_variable_defined?(:@abeClientInformation)
    end
    

    def initialize(clientInformationFactory)
        super()
        jfields_org_allbinary_midlet_ProgressMidlet
        ::Org::Allbinary::Globals::Globals.getInstance().init(::Org::Allbinary::TsUtil.getInstance().getClassClassLoader(self), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        self.preInit()
        @abeClientInformation = clientInformationFactory.getInstance()
    end
    

    def preInit()
    end
    java_overload :preInit, 0
    

    def exitProgress(isProgress)
        processor = MidletExitProcessorFactory.getInstance().getExitInstance(self)
        begin
            primaryThreadPool = ::Org::Allbinary::ThreadPackage::PrimaryThreadPool.getInstance()
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
    java_overload :exitProgress, 1
end

module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Canvas; autoload :Processor, "org/allbinary/canvas/Processor" unless const_defined?(:Processor, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :Globals, "org/allbinary/globals/Globals" unless const_defined?(:Globals, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ClientInformationFactory, "org/allbinary/logic/system/security/licensing/ClientInformationFactory" unless const_defined?(:ClientInformationFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :PrimaryThreadPool, "org/allbinary/thread/PrimaryThreadPool" unless const_defined?(:PrimaryThreadPool, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :ThreadPool, "org/allbinary/thread/ThreadPool" unless const_defined?(:ThreadPool, false); end; end; end
autoload :ExitRunnable, "org/allbinary/midlet/ExitRunnable" unless const_defined?(:ExitRunnable, false)
autoload :MidletExitProcessorFactory, "org/allbinary/midlet/MidletExitProcessorFactory" unless const_defined?(:MidletExitProcessorFactory, false)
require "java/lang/Runnable"

end; end; end

