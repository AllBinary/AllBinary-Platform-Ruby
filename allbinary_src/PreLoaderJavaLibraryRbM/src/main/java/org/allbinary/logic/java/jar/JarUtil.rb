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
# package org.allbinary.logic.java.jar

require "java/lang/JavaClass"
# require "java/io/IOException"
# require "java/net/URL"
# require "java/net/URLConnection"
# require "java/util/jar/JarEntry"
# require "java/util/jar/JarInputStream"

module ::Org; module Allbinary; module Logic; module Java; module Jar

class JarUtil
    attr_accessor :jarURL

    def jfields_org_allbinary_logic_java_jar_JarUtil
        @jarURL = nil unless instance_variable_defined?(:@jarURL)
    end
    

    def initialize(jarURL)
        jfields_org_allbinary_logic_java_jar_JarUtil
        @jarURL = jarURL
    end
    

    def show()
        cache = (Array.new(1024, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
        begin
            conn = @jarURL.openConnection()
            jis = JarInputStream.new(conn.getInputStream())
            while true
                entry = jis.getNextJarEntry()
                if entry != nil
                    if !entry.isDirectory()
                        offset = 0
                        i = 0
                        while ((i = jis.read(cache, offset, cache.length - offset))) != -1
                            offset += i
                            if offset >= cache.length
                                newcache = (Array.new(cache.length + 1024, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
                                newcache[0, cache.length] = cache[0, cache.length]
                                cache = newcache
                            end
                        end
                        tmp = (Array.new(offset, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
                        tmp[0, offset] = cache[0, offset]
                        puts(entry.getName())
                    end
                else
                    break
                end
            end
        rescue IOError => ex
            puts(ex)
            puts(ex.full_message)
        end
    end
    

    # throws Exception
    def self.main(args)
        JarUtil.new(URL.new("file:///G:/mnt/bc/mydev/working/j2me/MiniSpaceWars/MiniSpaceWars/dist/MiniSpaceWars.jar")).show()
    end
end

require "java/lang/System"

end; end; end; end; end

