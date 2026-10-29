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
# package org.allbinary.business.init


module InitInfoInterface
    

    def isTesting()
        raise NotImplementedError
    end
    

    def getTesting()
        raise NotImplementedError
    end
    

    def getTestHtmlPath()
        raise NotImplementedError
    end
    

    def getMainPath()
        raise NotImplementedError
    end
    

    def setTesting(value)
        raise NotImplementedError
    end
    

    def setTestHtmlPath(value)
        raise NotImplementedError
    end
    

    def setMainPath(value)
        raise NotImplementedError
    end
    

    # throws Exception
    def isTestingValid(testing)
        raise NotImplementedError
    end
    

    def isTestHtmlPathValid(value)
        raise NotImplementedError
    end
    

    def isMainPathValid(value)
        raise NotImplementedError
    end
end

require "org/allbinary/logic/io/path/AbPath"

