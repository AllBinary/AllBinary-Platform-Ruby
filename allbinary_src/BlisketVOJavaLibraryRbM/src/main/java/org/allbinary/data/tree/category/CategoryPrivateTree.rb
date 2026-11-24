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
# package org.allbinary.data.tree.category

require "java/lang/Object"

module ::Org; module Allbinary; module DataPackage; module Tree; module Category

class CategoryPrivateTree
    attr_accessor :logUtil, :categoryFactoryInterface

    def jfields_org_allbinary_data_tree_category_CategoryPrivateTree
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @categoryFactoryInterface = nil unless instance_variable_defined?(:@categoryFactoryInterface)
    end
    

    def initialize(categoryFactoryInterface)
        jfields_org_allbinary_data_tree_category_CategoryPrivateTree
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().CATEGORY)
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, "CategoryPrivateTree(CategoryFactoryInterface categoryFactoryInterface)")
        end
        @categoryFactoryInterface = categoryFactoryInterface
    end
    

    # throws Exception
    def save(categoryInterface)
        java_monitor.synchronize do
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
            @logUtil.putF("Saving Category File: " + (categoryInterface.getFilePath()).to_s, self, "save()")
        end
        document = ::Org::Allbinary::Business::Category::CategoryComponent.new(categoryInterface).toXmlDoc()
        cryptFileWriter = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileWriter.new(::Org::Allbinary::Business::Category::CategoryData.getInstance().UNCRYPTED_EXTENSION, ::Org::Allbinary::Business::Category::CategoryData.getInstance().ENCRYPTED_EXTENSION)
        cryptFileWriter.write(categoryInterface.getFilePath(), document)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
            @logUtil.putF("end", self, "save()")
        end
        end
    end
    

    # throws Exception
    def delete(categoryInterface)
        java_monitor.synchronize do
        if categoryInterface.isLeaf()
            categoryFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(categoryInterface.getFilePath())
            if categoryFile.delete()
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF("Removed: " + (categoryInterface.getFilePath()).to_s, self, "delete(CategoryInterface)")
                end
            end
        else
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF("Not a leaf unable to remove", self, "delete(CategoryInterface)")
            end
        end
        end
    end
end

module ::Org; module Allbinary; module Business; module Category; autoload :CategoryComponent, "org/allbinary/business/category/CategoryComponent" unless const_defined?(:CategoryComponent, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryData, "org/allbinary/business/category/CategoryData" unless const_defined?(:CategoryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryFactoryInterface, "org/allbinary/business/category/CategoryFactoryInterface" unless const_defined?(:CategoryFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; module FilePackage; autoload :CryptFileWriter, "org/allbinary/logic/control/crypt/file/CryptFileWriter" unless const_defined?(:CryptFileWriter, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

