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
# package org.allbinary.logic.communication.smtp


module ::Org; module Allbinary; module Logic; module Communication; module Smtp

class EmailData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:SERVER, "EMAIL_SERVER")
        const_set(:NAME, "EMAIL_NAME")
        const_set(:FROM, "EMAIL_FROM")
        const_set(:TO, "EMAIL_TO")
        const_set(:CC, "EMAIL_CC")
        const_set(:BCC, "EMAIL_BCC")
        const_set(:SUBJECT, "EMAIL_SUBJECT")
        const_set(:CONTENT, "EMAIL_CONTENT")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "EmailData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SERVER, :NAME, :FROM, :TO, :CC, :BCC, :SUBJECT, :CONTENT].include?(name)
        end
        super
    end
end

begin
    EmailData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

