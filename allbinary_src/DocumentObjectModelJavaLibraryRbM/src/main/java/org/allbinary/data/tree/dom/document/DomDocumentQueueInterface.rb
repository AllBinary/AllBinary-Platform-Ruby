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
# package org.allbinary.data.tree.dom.document


module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document

module DomDocumentQueueInterface
    

    # throws Exception
    def offer(domDocumentMappingInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def remove()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; module Mapping; autoload :DomDocumentMappingInterface, "org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface" unless const_defined?(:DomDocumentMappingInterface, false); end; end; end; end; end; end; end

end; end; end; end; end; end

