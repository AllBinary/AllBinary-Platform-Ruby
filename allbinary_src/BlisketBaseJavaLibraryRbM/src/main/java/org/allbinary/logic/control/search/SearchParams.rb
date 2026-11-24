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
# package org.allbinary.logic.control.search

# require "java/util/Set"
# require "javax/servlet/http/HttpServletRequest"

module ::Org; module Allbinary; module Logic; module ControlPackage; module Search

class SearchParams
    attr_accessor :columnsAndSearchValues, :order, :sortBy, :listLength, :startPage, :endPage

    def jfields_org_allbinary_logic_control_search_SearchParams
        @columnsAndSearchValues = nil unless instance_variable_defined?(:@columnsAndSearchValues)
        @order = nil unless instance_variable_defined?(:@order)
        @sortBy = nil unless instance_variable_defined?(:@sortBy)
        @listLength = nil unless instance_variable_defined?(:@listLength)
        @startPage = nil unless instance_variable_defined?(:@startPage)
        @endPage = nil unless instance_variable_defined?(:@endPage)
    end
    

    def initialize(request)
        jfields_org_allbinary_logic_control_search_SearchParams
        @columnsAndSearchValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        self.setLength(request.getParameter(SearchData::LENGTH))
        self.setOrder(request.getParameter(SearchData::ORDER))
        page = request.getParameter(SearchData::PAGE)
        self.setStartPage(page)
        self.setEndPage(page)
        self.setSortBy(request.getParameter(SearchData::SORTBY))
        index = 0
        columnName = request.getParameter((SearchData::COLUMNNAME).to_s + "[0]")
        columnValue = request.getParameter((SearchData::COLUMNVALUE).to_s + "[0]")
        while columnName != nil
            self.add(columnName, columnValue)
            index += 1
            columnName = request.getParameter((SearchData::COLUMNNAME).to_s + "[" + (index).to_s + "]")
            columnValue = request.getParameter((SearchData::COLUMNVALUE).to_s + "[" + (index).to_s + "]")
        end
    end
    

    def add(column, value)
        @columnsAndSearchValues.put(column, value)
    end
    

    def setOrder(value)
        @order = value
    end
    

    def setSortBy(value)
        @sortBy = value
    end
    

    def setLength(value)
        @listLength = value
    end
    

    def setStartPage(value)
        @startPage = value
    end
    

    def setEndPage(value)
        @endPage = value
    end
    

    def get()
        return @columnsAndSearchValues
    end
    

    def getOrder()
        return @order
    end
    

    def getSortBy()
        return @sortBy
    end
    

    def getLength()
        return @listLength
    end
    

    def getLengthInt()
        if @listLength != nil
            return @listLength
        else
            return 0
        end
    end
    

    def getStartPage()
        return @startPage
    end
    

    def getEndPage()
        return @endPage
    end
    

    def getStartPageInt()
        if @startPage != nil
            return @startPage
        else
            return 0
        end
    end
    

    def getEndPageInt()
        if @endPage != nil
            return @endPage
        else
            return 0
        end
    end
    

    # throws Exception
    def getParamsNode(document)
        paramsNode = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, SearchData::PARAMS, SearchData::PARAMS)
        paramsNode.appendChild(self.getFieldsNode(document))
        paramsNode.appendChild(self.getOrderNode(document))
        paramsNode.appendChild(self.getSortByNode(document))
        paramsNode.appendChild(self.getLengthNode(document))
        return paramsNode
    end
    

    # throws Exception
    def getFieldsNode(document)
        fieldsNode = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, SearchData::FIELDS, @columnsAndSearchValues.size().to_s)
        set = @columnsAndSearchValues.keySet()
        searchValueArray = set.toArray()
        size = searchValueArray.length
        (0...size).each do |index|
            key = searchValueArray[index]
            searchValue = @columnsAndSearchValues.get(key)
            fieldsNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, SearchData::FIELD, key, ::Org::Allbinary::DataPackage::Tree::Dom::ToDomHelper.convertNull(searchValue)))
        end
        return fieldsNode
    end
    

    # throws Exception
    def getOrderNode(document)
        return ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, SearchData::ORDER, ::Org::Allbinary::DataPackage::Tree::Dom::ToDomHelper.convertNull(self.getOrder()))
    end
    

    # throws Exception
    def getSortByNode(document)
        return ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, SearchData::SORTBY, ::Org::Allbinary::DataPackage::Tree::Dom::ToDomHelper.convertNull(self.getSortBy()))
    end
    

    # throws Exception
    def getLengthNode(document)
        return ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, SearchData::LENGTH, ::Org::Allbinary::DataPackage::Tree::Dom::ToDomHelper.convertNull(self.getLength()))
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ToDomHelper, "org/allbinary/data/tree/dom/ToDomHelper" unless const_defined?(:ToDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :SearchData, "org/allbinary/logic/control/search/SearchData" unless const_defined?(:SearchData, false)

end; end; end; end; end

