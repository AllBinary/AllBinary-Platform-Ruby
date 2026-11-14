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
# package org.allbinary.game


class GameMode
    attr_accessor :name

    def initialize_fields
        @name = StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(name)
        initialize_fields
        self.setName(name)
    end
    

    def setName(name)
        @name = name
    end
    

    def getName()
        return @name
    end
    

    def toString()
        return self.getName()
    end
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NONE, GameMode.new(StringUtil.getInstance().NULL_STRING))
            const_set(:SERVER, GameMode.new("Server"))
            const_set(:CLIENT, GameMode.new("Client"))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameMode"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NONE, :SERVER, :CLIENT].include?(name)
        end
        super
    end
end

autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    GameMode.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

