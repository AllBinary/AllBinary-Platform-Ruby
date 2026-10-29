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
# package org.allbinary.business.category.properties.root.store

# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/business/category/properties/CategoryPropertiesInterface"
require "org/allbinary/business/category/properties/root/RootCategoryPropertiesInterface"

class RootStoreCategoryProperties
    include RootCategoryPropertiesInterface
    include CategoryPropertiesInterface
    attr_accessor :logUtil, :pathData, :fileAbPath, :abPath, :category, :isRealRoot, :webAppAbPath, :transformInfoInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @pathData = AbPathData.getInstance()
        @fileAbPath = nil
        @abPath = nil
        @category = nil
        @isRealRoot = nil
        @webAppAbPath = nil
        @transformInfoInterface = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 2 then constructor2(*args)
        when 2 then constructor2(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor1(transformInfoInterface)
        initialize_fields
        @transformInfoInterface = transformInfoInterface
        @abPath = AbPath.createAbPath()
        @category = CategoryData.getInstance().ROOTCATEGORY
        @isRealRoot = true
        self.initPath()
        self.log()
    end
    

    def constructor2(transformInfoInterface, categoryAbPath)
        initialize_fields
        @transformInfoInterface = transformInfoInterface
        @abPath = categoryAbPath
        @category = @pathData.getNameFromPath(categoryAbPath.to_s)
        if StringValidationUtil.getInstance().isEmpty(@category)
            @isRealRoot = true
            @category = CategoryData.getInstance().ROOTCATEGORY
        end
        self.initPath()
        self.log()
    end
    

    def constructor2(transformInfoInterface, node)
        initialize_fields
        @transformInfoInterface = transformInfoInterface
        categoryPath = CategoryUtil.getNameFromNode(node)
        @abPath = AbPath.new(categoryPath, StringUtil.getInstance().EMPTY_STRING)
        @category = @pathData.getNameFromPath(categoryPath)
        if StringValidationUtil.getInstance().isEmpty(@category)
            @isRealRoot = true
            @category = CategoryData.getInstance().ROOTCATEGORY
        end
        self.initPath()
        self.log()
    end
    

    def constructor2(transformInfoInterface, categoryPropertiesHashMap)
        initialize_fields
        @transformInfoInterface = transformInfoInterface
        categoryPath = String.new(categoryPropertiesHashMap.get(CategoryData.getInstance().NAME))
        @abPath = AbPath.new(categoryPath, StringUtil.getInstance().EMPTY_STRING)
        @category = @pathData.getNameFromPath(categoryPath)
        if StringValidationUtil.getInstance().isEmpty(@category)
            @isRealRoot = true
            @category = CategoryData.getInstance().ROOTCATEGORY
        end
        self.initPath()
        self.log()
    end
    

    # throws Exception
    def initPath()
        transformInfoHttpStoreInterface = @transformInfoInterface
        storeFrontInterface = StoreFrontFactory.getInstance(transformInfoHttpStoreInterface.getStoreName())
        postPath = storeFrontInterface.getCurrentHostNamePath() + storeFrontInterface.getCategoryPath()
        httpServletRequest = transformInfoHttpStoreInterface.getPageContext().getRequest()
        @webAppAbPath = AbPath.new((httpServletRequest.getContextPath()).to_s + postPath, StringUtil.getInstance().EMPTY_STRING)
        self.setRootFilePath(AbPath.new((URLGLOBALS.getMainPath()).to_s + postPath, StringUtil.getInstance().EMPTY_STRING))
    end
    

    def isRealRoot()
        return @isRealRoot
    end
    

    def isRoot()
        return true
    end
    

    def getKey()
        return self.getValue()
    end
    

    def setPath(path)
        @abPath = path
    end
    

    def setRootFilePath(value)
        @fileAbPath = value
    end
    

    def getRootFilePath()
        return @fileAbPath
    end
    

    def getValue()
        return @category
    end
    

    # throws Exception
    def getWebAppPath()
        return @webAppAbPath
    end
    

    def getPath(categoryHierarchyInterface)
        return @abPath
    end
    

    def getFileName()
        return self.getValue() + AbPathData.getInstance().EXTENSION_SEP + CategoryData.getInstance().UNCRYPTED_EXTENSION
    end
    

    def setValue(value)
        @category = value
    end
    

    def isValid()
        return true
    end
    

    def toHashMap()
        categoryHashMap = StdUtil.getInstance().createHashMap()
        categoryHashMap.put(CategoryData.getInstance().NAME, self.getValue())
        return categoryHashMap
    end
    

    def toVector()
        categoryVector = BasicArrayListD.new()
        categoryVector.add(self.getValue())
        return categoryVector
    end
    

    # throws Exception
    def toValidationInfoDoc()
        return nil
    end
    

    # throws Exception
    def toValidationInfoNode(document)
        return nil
    end
    

    # throws Exception
    def validationInfo()
        return nil
    end
    

    def log()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().CATEGORY)
            @logUtil.putF(StringMaker.new().append("filePath = ").append(@fileAbPath.to_s).append("\npath = ").append(@abPath.to_s).append("\ncategory = ").append(@category).to_s, self, "log()")
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/category/CategoryData"
require "org/allbinary/business/category/CategoryUtil"
require "org/allbinary/business/category/hierarchy/CategoryHierarchyInterface"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

