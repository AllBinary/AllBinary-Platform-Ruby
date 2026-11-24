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
# package org.allbinary.game.ag.ai


module ::Org; module Allbinary; module Game; module Ag; module Ai

class BasicProbabilityAIDataFactory
    

    def getInstance()
        likelyhoodIntegerArray = Array.new(::Javax::Microedition::Lcdui::Canvas::KEY_NUM9 + 1) { Array.new(2, nil) }
        smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
        likelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::UP][0] = smallIntegerSingletonFactory.getAt(0)
        likelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::UP][1] = smallIntegerSingletonFactory.getAt(10)
        likelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::DOWN][0] = smallIntegerSingletonFactory.getAt(10)
        likelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::DOWN][1] = smallIntegerSingletonFactory.getAt(14)
        likelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::LEFT][0] = smallIntegerSingletonFactory.getAt(14)
        likelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::LEFT][1] = smallIntegerSingletonFactory.getAt(18)
        likelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::RIGHT][0] = smallIntegerSingletonFactory.getAt(18)
        likelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::RIGHT][1] = smallIntegerSingletonFactory.getAt(22)
        likelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM7][0] = smallIntegerSingletonFactory.getAt(22)
        likelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM7][1] = smallIntegerSingletonFactory.getAt(26)
        likelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM9][0] = smallIntegerSingletonFactory.getAt(26)
        likelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM9][1] = smallIntegerSingletonFactory.getAt(30)
        likelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM1][0] = smallIntegerSingletonFactory.getAt(30)
        likelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM1][1] = smallIntegerSingletonFactory.getAt(40)
        repeatLikelyhoodIntegerArray = Array.new(::Javax::Microedition::Lcdui::Canvas::KEY_NUM9 + 1, nil)
        repeatLikelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::UP] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::DOWN] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::LEFT] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::RIGHT] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM7] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM9] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM1] = smallIntegerSingletonFactory.getAt(10)
        inputProbability = InputProbability.new(likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, 42, ::Org::Allbinary::TimePackage::NoTimeDelayHelper::SINGLETON)
        return inputProbability.toHashtable()
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :NoTimeDelayHelper, "org/allbinary/time/NoTimeDelayHelper" unless const_defined?(:NoTimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :InputProbability, "org/allbinary/game/ag/ai/InputProbability" unless const_defined?(:InputProbability, false)

end; end; end; end; end

