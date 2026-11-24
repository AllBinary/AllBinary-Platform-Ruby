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
# package org.allbinary.input.automation.module.actions.script.condition.processors.output


module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Actions; module Script; module Condition; module Processors; module Output

class ProfileActionScriptOutputFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(node)
        profileActionScriptOutputInterface = nil
        if ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(ImageActionScriptOutputData::NAME, node.getChildNodes()) != nil
            profileActionScriptOutputInterface = ImageActionScriptOutput.new(node)
        else
            raise StandardError.new("No Such ActionScript Output")
        end
        return profileActionScriptOutputInterface
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :ImageActionScriptOutput, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutput" unless const_defined?(:ImageActionScriptOutput, false)
autoload :ImageActionScriptOutputData, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputData" unless const_defined?(:ImageActionScriptOutputData, false)
autoload :ProfileActionScriptOutputInterface, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ProfileActionScriptOutputInterface" unless const_defined?(:ProfileActionScriptOutputInterface, false)

end; end; end; end; end; end; end; end; end; end

