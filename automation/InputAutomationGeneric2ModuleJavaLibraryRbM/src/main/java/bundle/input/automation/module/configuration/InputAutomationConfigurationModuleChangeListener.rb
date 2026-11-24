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
# package bundle.input.automation.module.configuration


module ::Bundle; module Input; module Automation; module ModulePackage; module Configuration

module InputAutomationConfigurationModuleChangeListener
    

    def onAdd(inputAutomationConfigurationChangeEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def onRemove(inputAutomationConfigurationChangeEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Input; module Automation; module Configuration; autoload :InputAutomationConfigurationModuleChangeEvent, "org/allbinary/input/automation/configuration/InputAutomationConfigurationModuleChangeEvent" unless const_defined?(:InputAutomationConfigurationModuleChangeEvent, false); end; end; end; end; end

end; end; end; end; end

