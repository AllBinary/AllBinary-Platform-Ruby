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
# package org.allbinary.input.automation.module.game

require "java/lang/JavaOverload"
# require "java/awt/image/BufferedImage"
require "org/allbinary/input/automation/module/game/MagicGameObjectInterface"
require "org/allbinary/input/automation/module/game/MeteredGameObject"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Game

class MagicGameObject < MeteredGameObject
    include MagicGameObjectInterface
    attr_accessor :MP_LABEL

    def jfields_org_allbinary_input_automation_module_game_MagicGameObject
        @MP_LABEL = "MP:"
    end
    

    def initialize(bufferedImage, minX, maxX, y)
        super(bufferedImage, minX, maxX, y)
        jfields_org_allbinary_input_automation_module_game_MagicGameObject
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append(@MP_LABEL)
        stringBuffer.append(super.to_s)
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end; end; end; end; end

