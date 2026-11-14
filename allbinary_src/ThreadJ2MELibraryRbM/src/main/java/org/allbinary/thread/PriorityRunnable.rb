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

require "java/lang/Runnable"

module PriorityRunnable
    include Runnable
    

    def getPriority()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isDone()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def reset()
        return super if defined?(super)
        raise NotImplementedError
    end
end

