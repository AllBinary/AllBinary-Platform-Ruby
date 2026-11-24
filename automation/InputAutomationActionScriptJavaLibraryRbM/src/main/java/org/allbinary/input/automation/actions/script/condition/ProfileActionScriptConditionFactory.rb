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


module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition

class ProfileActionScriptConditionFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(node)
        profileActionScriptConditionInterface = nil
        if ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(ColorAtActionScriptConditionData::NAME, node.getChildNodes()) != nil
            profileActionScriptConditionInterface = ColorAtActionScriptCondition.new(node)
        elsif ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(TimeIntervalActionScriptConditionData::NAME, node.getChildNodes()) != nil
            profileActionScriptConditionInterface = TimeIntervalActionScriptCondition.new(node)
        elsif ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(AlwaysActionScriptConditionData::NAME, node.getChildNodes()) != nil
            profileActionScriptConditionInterface = AlwaysActionScriptCondition.new(node)
        end
        return profileActionScriptConditionInterface
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :AlwaysActionScriptCondition, "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptCondition" unless const_defined?(:AlwaysActionScriptCondition, false)
autoload :AlwaysActionScriptConditionData, "org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionData" unless const_defined?(:AlwaysActionScriptConditionData, false)
autoload :ColorAtActionScriptCondition, "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptCondition" unless const_defined?(:ColorAtActionScriptCondition, false)
autoload :ColorAtActionScriptConditionData, "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionData" unless const_defined?(:ColorAtActionScriptConditionData, false)
autoload :ProfileActionScriptConditionInterface, "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface" unless const_defined?(:ProfileActionScriptConditionInterface, false)
autoload :TimeIntervalActionScriptCondition, "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptCondition" unless const_defined?(:TimeIntervalActionScriptCondition, false)
autoload :TimeIntervalActionScriptConditionData, "org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionData" unless const_defined?(:TimeIntervalActionScriptConditionData, false)

end; end; end; end; end; end; end

