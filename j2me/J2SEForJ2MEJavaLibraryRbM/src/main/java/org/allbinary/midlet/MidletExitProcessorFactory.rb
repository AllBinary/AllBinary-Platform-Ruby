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


module ::Org; module Allbinary; module Midlet

class MidletExitProcessorFactory
    

    def self.getInstance()
        return @@instance
    end
    

    def getExitInstance(midlet)
        if ::Org::Allbinary::AppletUtil.isAppletLoader(midlet) || ::Org::Allbinary::J2MEUtil.isJ2ME()
            return ::Org::Allbinary::Canvas::Processor.getInstance()
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

module ::Javax; module Microedition; module Midlet; autoload :MIDlet, "javax/microedition/midlet/MIDlet" unless const_defined?(:MIDlet, false); end; end; end
module ::Org; module Allbinary; autoload :AppletUtil, "org/allbinary/AppletUtil" unless const_defined?(:AppletUtil, false); end; end
module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Canvas; autoload :Processor, "org/allbinary/canvas/Processor" unless const_defined?(:Processor, false); end; end; end
autoload :MidletExitProcessor, "org/allbinary/midlet/MidletExitProcessor" unless const_defined?(:MidletExitProcessor, false)

begin
    MidletExitProcessorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

