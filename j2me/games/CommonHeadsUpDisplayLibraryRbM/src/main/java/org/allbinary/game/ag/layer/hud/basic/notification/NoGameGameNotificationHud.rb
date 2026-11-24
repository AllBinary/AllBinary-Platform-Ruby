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
# package org.allbinary.game.ag.layer.hud.basic.notification

require "java/lang/JavaOverload"
require "org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic; module Notification

class NoGameGameNotificationHud < GameNotificationHud
    

    def initialize()
        super(::Org::Allbinary::Game::Graphics::Hud::BasicHudFactory.getInstance().TOPCENTER, ::Org::Allbinary::Game::Graphics::Hud::BasicHudFactory.getInstance().HORIZONTAL, 2, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().RED)
        @updateMaxWidth = 40
        @updateMaxHeight = 14
    end
end

module ::Org; module Allbinary; module Game; module Graphics; module Hud; autoload :BasicHudFactory, "org/allbinary/game/graphics/hud/BasicHudFactory" unless const_defined?(:BasicHudFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end

end; end; end; end; end; end; end; end

