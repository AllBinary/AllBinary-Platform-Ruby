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
# package org.allbinary.logic.control.validate

require "org/allbinary/logic/control/validate/ValidatorBaseInterface"

class ValidatorBase
    include ValidatorBaseInterface
    

    def self.getInstance()
        return ValidatorBase.instance
    end
    

    def initialize()
    end
    

    def isValid()
        return BooleanFactory.getInstance().TRUE
    end
    

    def validationInfo()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    def toHashtable()
        return StdUtil.getInstance().NULL_TABLE
    end
    

    def toList()
        return BasicArrayListUtil.getInstance().getImmutableInstance()
    end

    def self.instance()
        ValidatorBase.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ValidatorBase.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ValidatorBase.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ValidatorBase"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"

begin
    ValidatorBase.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

