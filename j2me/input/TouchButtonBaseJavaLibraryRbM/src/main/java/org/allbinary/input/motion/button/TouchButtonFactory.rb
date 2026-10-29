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
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListUtil"

class TouchButtonFactory
    SINGLETON = TouchButtonFactory.new()
end

