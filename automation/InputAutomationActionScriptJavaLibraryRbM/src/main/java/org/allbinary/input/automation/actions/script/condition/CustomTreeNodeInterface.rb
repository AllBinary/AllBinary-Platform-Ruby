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
# package org.allbinary.input.automation.actions.script.condition

require "java/lang/JavaOverload"
# require "javax/swing/JPopupMenu"
# require "javax/swing/tree/MutableTreeNode"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition

module CustomTreeNodeInterface
    include MutableTreeNode
    

    def getJPopupMenu()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getJPopupMenu, 0
end

end; end; end; end; end; end; end

