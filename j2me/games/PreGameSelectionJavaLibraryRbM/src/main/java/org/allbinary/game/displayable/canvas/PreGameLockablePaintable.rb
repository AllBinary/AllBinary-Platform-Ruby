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
# package org.allbinary.game.displayable.canvas

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/LockablePaintable"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class PreGameLockablePaintable < ::Org::Allbinary::Graphics::Form::LockablePaintable
    attr_accessor :halfWidth, :paintableForm

    def jfields_org_allbinary_game_displayable_canvas_PreGameLockablePaintable
        @halfWidth = nil unless instance_variable_defined?(:@halfWidth)
        @paintableForm = nil unless instance_variable_defined?(:@paintableForm)
    end
    

    def initialize(paintableForm, lockedIndex)
        super(lockedIndex)
        jfields_org_allbinary_game_displayable_canvas_PreGameLockablePaintable
        @paintableForm = paintableForm
        @halfWidth = ::Org::Allbinary::Image::GameFeatureImageCacheFactory.getInstance().getWithKey(::Org::Allbinary::Logic::System::Security::Licensing::LockedResources.getInstance().LOCKED_DEMO_GAME_FEATURE_RESOURCE).getWidth() / 2
    end
    

    def paint(graphics, currentIndex, x, y)
        if ::Org::Allbinary::Logic::System::Security::Licensing::LockedUtil.getInstance().isLocked() && self.getPaintableForm().getSelectedIndex() >= self.getLockedIndex()
            self.getAnimation().paintXY(graphics, self.getPaintableForm().getDx() - @halfWidth, self.getPaintableForm().getDy() + 34)
        end
    end
    java_overload :paint, 4
    

    def getPaintableForm()
        return @paintableForm
    end
    java_overload :getPaintableForm, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :GameFeatureImageCacheFactory, "org/allbinary/image/GameFeatureImageCacheFactory" unless const_defined?(:GameFeatureImageCacheFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LockedResources, "org/allbinary/logic/system/security/licensing/LockedResources" unless const_defined?(:LockedResources, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LockedUtil, "org/allbinary/logic/system/security/licensing/LockedUtil" unless const_defined?(:LockedUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollCurrentSelectionForm, "org/allbinary/graphics/form/ScrollCurrentSelectionForm" unless const_defined?(:ScrollCurrentSelectionForm, false); end; end; end; end

end; end; end; end; end

