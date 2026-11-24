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

class TextItemVisitor < ::Org::Allbinary::Logic::Util::Visitor::Visitor
    

    def initialize()
        super()
    end
    

    def visit(anyType)
        value = anyType
        if value.length < 2
            return ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().TRUE
        else
            return ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE
        end
    end
    java_overload :visit, 1
end

module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end

end; end; end; end; end; end

