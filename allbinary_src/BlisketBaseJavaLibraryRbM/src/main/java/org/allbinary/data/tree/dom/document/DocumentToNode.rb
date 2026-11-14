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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:XMLROOT, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>")
        const_set(:XMLROOTSTART, "<?xml")
        const_set(:XMLROOTEND, "?>")
        const_set(:XMLJSPROOTSTART, "<jsp:root")
        const_set(:XMLEND, ">")
        const_set(:XMLJSPROOTENDSTART, "</jsp:root")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DocumentToNode"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:XMLROOT, :XMLROOTSTART, :XMLROOTEND, :XMLJSPROOTSTART, :XMLEND, :XMLJSPROOTENDSTART].include?(name)
        end
        super
    end
end

autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace"

begin
    DocumentToNode.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

