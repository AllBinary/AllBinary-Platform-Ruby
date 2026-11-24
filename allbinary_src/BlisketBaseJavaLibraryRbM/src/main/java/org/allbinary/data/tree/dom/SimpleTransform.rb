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

# require "java/io/StringBufferInputStream"
# require "javax/xml/transform/stream/StreamSource"

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom

class SimpleTransform
    attr_accessor :xsltFilePath, :dataFilePath

    def jfields_org_allbinary_data_tree_dom_SimpleTransform
        @xsltFilePath = nil unless instance_variable_defined?(:@xsltFilePath)
        @dataFilePath = nil unless instance_variable_defined?(:@dataFilePath)
    end
    

    def initialize(xsltFilePath, dataFilePath)
        jfields_org_allbinary_data_tree_dom_SimpleTransform
        @xsltFilePath = xsltFilePath
        @dataFilePath = dataFilePath
    end
    

    # throws Exception
    def transform()
        inputStream = ::Org::Allbinary::Logic::Io::AbFileLocalInputStream.new(::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(@xsltFilePath))
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(::Org::Allbinary::Logic::Io::AbFileLocalInputStream.new(::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(@dataFilePath)))
        result = XslHelper.getInstance().translate(StreamSource.new(inputStream), StreamSource.new(StringBufferInputStream.new(::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(document))))
        return result
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileLocalInputStream, "org/allbinary/logic/io/AbFileLocalInputStream" unless const_defined?(:AbFileLocalInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
autoload :XslHelper, "org/allbinary/data/tree/dom/XslHelper" unless const_defined?(:XslHelper, false)

end; end; end; end; end

