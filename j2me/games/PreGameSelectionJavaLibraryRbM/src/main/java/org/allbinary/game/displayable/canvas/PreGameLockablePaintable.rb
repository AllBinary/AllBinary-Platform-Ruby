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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/form/LockablePaintable"

class PreGameLockablePaintable < LockablePaintable
    attr_accessor :halfWidth, :paintableForm

    def initialize_fields
        @halfWidth = nil
        @paintableForm = nil
    end
    

    def initialize(paintableForm, lockedIndex)
        super(lockedIndex)
        initialize_fields
        @paintableForm = paintableForm
        @halfWidth = GameFeatureImageCacheFactory.getInstance().getWithKey(LockedResources.getInstance().LOCKED_DEMO_GAME_FEATURE_RESOURCE).getWidth() / 2
    end
    

    def paint(graphics, currentIndex, x, y)
        if LockedUtil.getInstance().isLocked() && self.getPaintableForm().getSelectedIndex() >= self.getLockedIndex()
            self.getAnimation().paintXY(graphics, self.getPaintableForm().getDx() - @halfWidth, self.getPaintableForm().getDy() + 34)
        end
    end
    

    def getPaintableForm()
        return @paintableForm
    end
end

require "org/allbinary/image/GameFeatureImageCacheFactory"
require "org/allbinary/logic/system/security/licensing/LockedResources"
require "org/allbinary/logic/system/security/licensing/LockedUtil"
require "org/allbinary/graphics/form/ScrollCurrentSelectionForm"

