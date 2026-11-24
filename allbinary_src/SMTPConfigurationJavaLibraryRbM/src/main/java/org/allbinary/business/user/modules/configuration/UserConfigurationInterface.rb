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
# package org.allbinary.business.user.modules.configuration


module ::Org; module Allbinary; module Business; module User; module Modules; module Configuration

module UserConfigurationInterface
    

    def getUserEmailConfigurationInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setUserEmailConfigurationInterface(userEmailConfigurationInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getTimeCreated()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getTimeLastModified()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setTimeCreated(timeCreated)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setTimeLastModified(timeLastModified)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Business; module TimePackage; module Created; autoload :TimeCreated, "org/allbinary/business/time/created/TimeCreated" unless const_defined?(:TimeCreated, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module TimePackage; module Modified; autoload :TimeLastModified, "org/allbinary/business/time/modified/TimeLastModified" unless const_defined?(:TimeLastModified, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; autoload :UserEmailConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface" unless const_defined?(:UserEmailConfigurationInterface, false); end; end; end; end; end; end; end

end; end; end; end; end; end

