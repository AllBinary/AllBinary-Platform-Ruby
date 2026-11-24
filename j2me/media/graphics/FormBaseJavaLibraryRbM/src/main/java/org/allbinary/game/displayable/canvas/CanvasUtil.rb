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


module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class CanvasUtil
    

    def initialize()
    end
    

    def self.getKeyName(key)
        commonPhoneStrings = ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance()
        if key == ::Javax::Microedition::Lcdui::Canvas::UP
            return commonPhoneStrings.UP
        elsif key == ::Javax::Microedition::Lcdui::Canvas::DOWN
            return commonPhoneStrings.DOWN
        elsif key == ::Javax::Microedition::Lcdui::Canvas::RIGHT
            return commonPhoneStrings.RIGHT
        elsif key == ::Javax::Microedition::Lcdui::Canvas::LEFT
            return commonPhoneStrings.LEFT
        elsif key == ::Javax::Microedition::Lcdui::Canvas::FIRE
            return commonPhoneStrings.FIRE
        end
        return "UNKNOWN KEY"
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end

end; end; end; end; end

