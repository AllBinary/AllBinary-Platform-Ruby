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
# package org.allbinary.graphics.j2me


module ::Org; module Allbinary; module Graphics; module J2me

class StatusFactory
    attr_accessor :logUtil, :SETSTATUS, :STATUS_LABEL

    def jfields_org_allbinary_graphics_j2me_StatusFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @SETSTATUS = "setStatus"
        @STATUS_LABEL = "Status: "
    end

    def initialize
        jfields_org_allbinary_graphics_j2me_StatusFactory
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def setStatusNoLog(status)
        MyFrame.statusJLabel.setText(status)
    end
    

    def setStatus(status)
        self.setStatusNoLog(status)
        @logUtil.putF(@STATUS_LABEL + status, self, @SETSTATUS)
    end

    def self.instance()
        StatusFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        StatusFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = StatusFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StatusFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :MyFrame, "org/allbinary/graphics/j2me/MyFrame" unless const_defined?(:MyFrame, false)

begin
    StatusFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

