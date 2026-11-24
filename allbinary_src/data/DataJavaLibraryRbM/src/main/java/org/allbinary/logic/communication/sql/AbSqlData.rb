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
# package org.allbinary.logic.communication.sql


module ::Org; module Allbinary; module Logic; module Communication; module Sql

class AbSqlData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:ANYSINGLECHARACTERMATCH, "_")
        const_set(:ANYMULTICHARACTERMATCH, "%")
        const_set(:MAXNUM, 19)
        const_set(:MINSTRING, 1)
        const_set(:MAXSTRING, 255)
        const_set(:MAXBLOB, 32000)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbSqlData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:ANYSINGLECHARACTERMATCH, :ANYMULTICHARACTERMATCH, :MAXNUM, :MINSTRING, :MAXSTRING, :MAXBLOB].include?(name)
        end
        super
    end
end

begin
    AbSqlData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

