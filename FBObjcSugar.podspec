Pod::Spec.new do |s|

    s.name         = "FBObjcSugar"
    s.version      = "0.3.0"
    s.summary      = "quick create code."
    s.description  = <<-DESC
    quick create objc code
    DESC


    s.homepage     = "https://github.com/zhangxueyang/FBObjcSugar"
    s.license      = "MIT"

    s.author             = { "cocoazxy" => "cocoazxy@gmail.com" }
    s.source       = { :git => "https://github.com/zhangxueyang/FBObjcSugar.git", :tag => "#{s.version}" }

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'

    s.source_files  = 'FBObjcSugar/Classes/FBObjcSugar.h'

    s.subspec 'FBQuickUI' do |ui|
        ui.source_files = 'FBObjcSugar/Classes/FBQuickUI/**/*'
    end

    s.subspec 'FBQuickFoundation' do |foun|
        foun.source_files = 'FBObjcSugar/Classes/FBQuickFoundation/**/*'
    end
    
    s.subspec 'FBJsonlog' do |log|
        log.source_files = 'FBObjcSugar/Classes/FBJsonlog/**/*'
    end


end
