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

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/visitor/Visitor"

module ::Org; module Allbinary; module Game; module Ag; module Ai

class LastKeyAIVisitor < ::Org::Allbinary::Logic::Util::Visitor::Visitor
    attr_accessor :logUtil, :TRUE

    def jfields_org_allbinary_game_ag_ai_LastKeyAIVisitor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @TRUE = ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().TRUE
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_ag_ai_LastKeyAIVisitor
    end
    

    def visit(anyType)
        begin
            basicAI = anyType
            key = basicAI.getLastKey()
            if key != -1
                basicAI.processKeyAI(key)
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.VISIT, e)
        end
        return @TRUE
    end
    java_overload :visit, 1
end

module ::Org; module Allbinary; module Game; module Ai; autoload :BasicAI, "org/allbinary/game/ai/BasicAI" unless const_defined?(:BasicAI, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end

