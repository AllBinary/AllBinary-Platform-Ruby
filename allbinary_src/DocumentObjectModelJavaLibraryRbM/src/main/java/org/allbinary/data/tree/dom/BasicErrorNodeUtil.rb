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
# package org.allbinary.data.tree.dom


module ::Org; module Allbinary; module DataPackage; module Tree; module Dom

class BasicErrorNodeUtil
    

    def initialize()
    end
    

    # throws Exception
    def self.get(document, errorText)
        begin
            node = document.createElement(::Org::Allbinary::Business::Error::ErrorData.getInstance().NAME)
            node.appendChild(ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::Error::ErrorData.getInstance().TEXT, errorText))
            return node
        rescue StandardError => e
            raise StandardError.new("Error Node Creation Failure")
        end
    end
end

module ::Org; module Allbinary; module Business; module Error; autoload :ErrorData, "org/allbinary/business/error/ErrorData" unless const_defined?(:ErrorData, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false)

end; end; end; end; end

