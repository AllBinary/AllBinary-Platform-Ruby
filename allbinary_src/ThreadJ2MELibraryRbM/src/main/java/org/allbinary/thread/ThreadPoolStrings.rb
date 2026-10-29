# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.thread


class ThreadPoolStrings
    attr_accessor :ADD_TASK, :START_TASK, :COMPLETE_TASK

    def initialize_fields
        @ADD_TASK = "addTask"
        @START_TASK = "Started Task: "
        @COMPLETE_TASK = "Completed Task: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ThreadPoolStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class ThreadPoolStrings
    @@instance = ThreadPoolStrings.new()
end

