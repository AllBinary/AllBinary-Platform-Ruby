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
# package org.allbinary.logic.system.security.licensing

require "java/lang/JavaOverload"

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

class LicensingException < StandardError

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_system_security_licensing_LicensingException_0(*args)
        when 1 then jnew_org_allbinary_logic_system_security_licensing_LicensingException_1(*args)
        else raise ArgumentError, "No constructor of LicensingException takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_system_security_licensing_LicensingException_0()
        LicensingException.superclass.instance_method(:initialize).bind(self).call()
    end
    

    def jnew_org_allbinary_logic_system_security_licensing_LicensingException_1(msg)
        LicensingException.superclass.instance_method(:initialize).bind(self).call(msg)
    end

    def self.serialVersionUID()
        LicensingException.java_static_fields unless @java_static_fields_started
        return defined?(@@serialVersionUID) ? @@serialVersionUID : nil
    end

    def self.serialVersionUID=(value)
        LicensingException.java_static_fields unless @java_static_fields_started
        @@serialVersionUID = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@serialVersionUID = 1
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LicensingException"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    LicensingException.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

