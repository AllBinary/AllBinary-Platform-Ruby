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

class DiveAndDirectionalTrackingAICompositeVisitorFactory
    

    def getInstance(diveBombAI)
        return ::Org::Allbinary::Logic::Util::Visitor::Visitor.getInstance()
    end
end

module ::Org; module Allbinary; module Logic; module Util; module Visitor; autoload :Visitor, "org/allbinary/logic/util/visitor/Visitor" unless const_defined?(:Visitor, false); end; end; end; end; end
autoload :DiveAndDirectionalTrackingAI, "org/allbinary/game/ag/ai/DiveAndDirectionalTrackingAI" unless const_defined?(:DiveAndDirectionalTrackingAI, false)

end; end; end; end; end

