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
# package org.allbinary.graphics.form


module ::Org; module Allbinary; module Graphics; module Form

class CommandCurrentSelectionFormFactory
    

    # throws Exception
    def self.getInstance(title, items, rectangle, formType, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::TouchFeatureFactory.getInstance().TOUCH_ENABLED)
            scrollSelectionForm = CommandCurrentSelectionForm.new(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
            scrollSelectionForm.init(rectangle, formType)
            return scrollSelectionForm
        else
            return ScrollSelectionFormNoneFactory.getInstance()
        end
    end
end

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :TouchFeatureFactory, "org/allbinary/game/configuration/feature/TouchFeatureFactory" unless const_defined?(:TouchFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
autoload :CommandCurrentSelectionForm, "org/allbinary/graphics/form/CommandCurrentSelectionForm" unless const_defined?(:CommandCurrentSelectionForm, false)
autoload :FormType, "org/allbinary/graphics/form/FormType" unless const_defined?(:FormType, false)
autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false)
autoload :ScrollSelectionFormNoneFactory, "org/allbinary/graphics/form/ScrollSelectionFormNoneFactory" unless const_defined?(:ScrollSelectionFormNoneFactory, false)

end; end; end; end

