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
# package org.allbinary.input.automation.actions.script.condition


module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition

module TimeIntervalActionScriptConditionInterface
    

    def getTimeDelayHelper()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def log()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end

end; end; end; end; end; end; end

