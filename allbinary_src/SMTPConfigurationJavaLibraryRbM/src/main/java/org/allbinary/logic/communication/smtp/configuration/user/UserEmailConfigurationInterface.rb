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
# package org.allbinary.logic.communication.smtp.configuration.user


module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User

module UserEmailConfigurationInterface
    

    def getUserEmailEventsConfigurationInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setUserEmailEventsConfigurationInterface(emailEventsConfigurationInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; module Event; autoload :UserEmailEventsConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface" unless const_defined?(:UserEmailEventsConfigurationInterface, false); end; end; end; end; end; end; end; end

end; end; end; end; end; end; end

