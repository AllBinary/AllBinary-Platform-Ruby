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
        MidletExitProcessorFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MidletExitProcessorFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = MidletExitProcessorFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MidletExitProcessorFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :MIDlet, "javax/microedition/midlet/MIDlet"
autoload :AppletUtil, "org/allbinary/AppletUtil"
autoload :J2MEUtil, "org/allbinary/J2MEUtil"
autoload :Processor, "org/allbinary/canvas/Processor"
autoload :MidletExitProcessor, "org/allbinary/midlet/MidletExitProcessor"

begin
    MidletExitProcessorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

