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
# package org.allbinary.thread

require "java/lang/Runnable"

module RunnableInterface
    include Runnable
    

    def isRunning()
        raise NotImplementedError
    end
    

    def setRunning(isRunning)
        raise NotImplementedError
    end
    

    # throws Exception
    def setThread(thread)
        raise NotImplementedError
    end
end

require "java/lang/Thread"

