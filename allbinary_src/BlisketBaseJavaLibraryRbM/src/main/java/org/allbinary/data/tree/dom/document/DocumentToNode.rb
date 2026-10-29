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


class DocumentToNode
    

    def initialize()
    end
    

    # throws Exception
    def self.convertDocumentToNodeString(documentString)
        documentString = DocumentToNode.remove(documentString, DocumentToNode::XMLJSPROOTSTART, DocumentToNode::XMLEND)
        documentString = DocumentToNode.remove(documentString, DocumentToNode::XMLJSPROOTENDSTART, DocumentToNode::XMLEND)
        replaceXmlRoot = Replace.new(XMLROOT, StringUtil.getInstance().EMPTY_STRING)
        return replaceXmlRoot.all(documentString)
    end
    

    def self.removeXmlDefinitionFromDocumentString(documentString)
        return DocumentToNode.remove(documentString, XMLROOTSTART, XMLROOTEND)
    end
    

    def self.remove(documentString, start, end_)
        startIndex = 0
        while ((startIndex = (documentString.index(start) || -1))) != -1
            if startIndex >= 0
                endIndex = (documentString.index(end_, startIndex) || -1)
                if endIndex >= 0
                    startString = documentString[0...startIndex]
                    resultString = documentString[endIndex + 1..]
                    return startString + resultString
                end
            end
        end
        return documentString
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/regex/replace/Replace"

class DocumentToNode
    XMLROOT = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
    XMLROOTSTART = "<?xml"
    XMLROOTEND = "?>"
    XMLJSPROOTSTART = "<jsp:root"
    XMLEND = ">"
    XMLJSPROOTENDSTART = "</jsp:root"
end

