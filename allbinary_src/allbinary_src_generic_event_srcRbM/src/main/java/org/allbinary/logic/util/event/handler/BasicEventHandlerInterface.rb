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
# package org.allbinary.logic.util.event.handler


module ::Org; module Allbinary; module Logic; module Util; module Event; module Handler

module BasicEventHandlerInterface
    

    def addListenerInterface(eventListenerInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def fireEvent(eventObject)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def removeAllListeners()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def removeListener(eventListenerInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface" unless const_defined?(:EventListenerInterface, false); end; end; end; end; end

end; end; end; end; end; end

