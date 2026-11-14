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
# package org.allbinary.input.motion.button

require "java/lang/Object"

class TouchButtonFactory
    attr_accessor :LIST, :list, :savedList, :saved

    def initialize_fields
        @LIST = BasicArrayListUtil.getInstance().getImmutableInstance()
        @list = @LIST
        @savedList = @LIST
        @saved = false
    end
    

    def self.getInstance()
        return TouchButtonFactory::SINGLETON
    end
    

    def initialize()
        initialize_fields
    end
    

    def defaultList()
        @list = @LIST
        self.toggle(false, @LIST)
    end
    

    def toggle(save, list)
        java_monitor.synchronize do
        if list != BasicArrayListUtil.getInstance().getImmutableInstance()
            @savedList = list
            if !@saved
                @list = @savedList
            end
        else
            if save
                if !@saved
                    @saved = true
                    @savedList = @list
                    @list = @LIST
                else
                end
            else
                @list = @savedList
                @saved = false
            end
        end
        end
    end
    

    # throws Exception
    def setList(list)
        if list == nil
            raise StandardError.new("Null List")
        end
        @list = list
    end
    

    def getList()
        return @list
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, TouchButtonFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TouchButtonFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil"

begin
    TouchButtonFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

