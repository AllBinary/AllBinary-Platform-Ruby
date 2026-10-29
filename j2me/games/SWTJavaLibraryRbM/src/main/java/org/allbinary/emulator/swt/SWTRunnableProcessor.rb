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
# package org.allbinary.emulator.swt

require "org/allbinary/emulator/swt/SWTProcessor"

class SWTRunnableProcessor < SWTProcessor
    

    def self.getInstance()
        return SWTRunnableProcessor.instanceR
    end
    

    def initialize()
        super()
    end
    

    def process(display)
        @runnable.run()
    end

    def self.instanceR()
        return defined?(@@instanceR) ? @@instanceR : nil
    end

    def self.instanceR=(value)
        @@instanceR = value
    end
end

require "org/eclipse/swt/widgets/Display"

class SWTRunnableProcessor
    @@instanceR = SWTRunnableProcessor.new()
end

