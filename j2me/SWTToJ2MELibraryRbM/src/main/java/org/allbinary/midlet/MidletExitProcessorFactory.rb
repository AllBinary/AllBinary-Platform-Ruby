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

# require "javax/microedition/midlet/MIDlet"

class MidletExitProcessorFactory
    

    def self.getInstance()
        return MidletExitProcessorFactory.instance
    end
    

    def getExitInstance(midlet)
        if AppletUtil.isAppletLoader(midlet) || J2MEUtil.isJ2ME()
            return Processor.getInstance()
        else
            return MidletExitProcessor.new(midlet)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/AppletUtil"
require "org/allbinary/J2MEUtil"
require "org/allbinary/canvas/Processor"
require "org/allbinary/midlet/MidletExitProcessor"

class MidletExitProcessorFactory
    @@instance = MidletExitProcessorFactory.new()
end

