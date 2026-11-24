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
# package org.allbinary.graphics.form.item.validation

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/visitor/Visitor"

module ::Org; module Allbinary; module Graphics; module Form; module Item; module Validation

class TextItemNumberVisitor < ::Org::Allbinary::Logic::Util::Visitor::Visitor
    attr_accessor :logUtil

    def jfields_org_allbinary_graphics_form_item_validation_TextItemNumberVisitor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        super()
        jfields_org_allbinary_graphics_form_item_validation_TextItemNumberVisitor
    end
    

    def visit(anyType)
        value = anyType
        if value.length < 2
            stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
            if stringValidationUtil.isNumber(value)
                return ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().TRUE
            else
                begin
                    ::Org::Allbinary::Game::Input::TextNotificationUtil.getInstance().fireError("Numbers Only")
                rescue StandardError => e
                    commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                    @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.VISIT, e)
                end
                return ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE
            end
        else
            return ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE
        end
    end
    java_overload :visit, 1
end

module ::Org; module Allbinary; module Game; module Input; autoload :TextNotificationUtil, "org/allbinary/game/input/TextNotificationUtil" unless const_defined?(:TextNotificationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end; end

