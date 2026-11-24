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


module ::Org; module Allbinary; module Business; module Init

module InitInfoInterface
    

    def isTesting()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getTesting()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getTestHtmlPath()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getMainPath()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setTesting(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setTestHtmlPath(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setMainPath(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def isTestingValid(testing)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isTestHtmlPathValid(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isMainPathValid(value)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end

end; end; end; end

