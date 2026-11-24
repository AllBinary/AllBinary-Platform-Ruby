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

require "java/lang/JavaOverload"
require "java/lang/Runnable"

module ::Org; module Allbinary; module ThreadPackage

module RunnableInterface
    include ::Java::Lang::Runnable
    

    def isRunning()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isRunning, 0
    

    def setRunning(isRunning)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setRunning, 1
    

    # throws Exception
    def setThread(thread)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setThread, 1
end

require "java/lang/Thread"

end; end; end

