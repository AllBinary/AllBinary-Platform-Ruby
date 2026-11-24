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
# package org.allbinary.input.automation.module.generic.configuration


module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration

module GenericModuleConfigurationInterface
    

    def getSelectedGenericProfile()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setSelectedGenericProfile(selectedGenericProfile)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; autoload :GenericProfile, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile" unless const_defined?(:GenericProfile, false); end; end; end; end; end; end; end; end

end; end; end; end; end; end; end

