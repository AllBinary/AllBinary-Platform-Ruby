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
# package org.allbinary.input.automation.module.generic.configuration.profile


module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile

module GenericProfileDataWorkerTypeInterface
    

    def getName()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setName(name)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def toString()
        return super if defined?(super)
        raise NotImplementedError
    end
    alias_method :to_s, :toString
    

    # throws Exception
    def toXmlNode(document)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end

end; end; end; end; end; end; end; end

