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
# package org.allbinary.game.input.mapping

require "java/lang/JavaOverload"
require "org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface"

module ::Org; module Allbinary; module Game; module Input; module Mapping

class MotionInputMappingEventListener
    include ::Org::Allbinary::Game::Input::Mapping::Event::InputMappingEventListenerInterface
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    # throws Exception
    def onInputMappingEvent(inputMappingEvent)
    end
    java_overload :onInputMappingEvent, 1
end

module ::Org; module Allbinary; module Game; module Input; module Mapping; module Event; autoload :InputMappingEvent, "org/allbinary/game/input/mapping/event/InputMappingEvent" unless const_defined?(:InputMappingEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end

end; end; end; end; end

