//
//  main.m
//  GenerateModel
//
//  Created by ZJun on 2020/12/22.
//

#import <Foundation/Foundation.h>
#import "YBModelFile.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        /* 全局公用配置 (只需设置在使用工具之前就行了) */
                
                //属性或方法是否空行
        //        [YBMFConfig shareConfig].fileHHandler.ybmf_skipLine = YES;
        //        [YBMFConfig shareConfig].fileMHandler.ybmf_skipLine = YES;
                //是否需要实现 NSCoding 或 NSCopying 协议
        //        [YBMFConfig shareConfig].needCoding = NO;
        //        [YBMFConfig shareConfig].needCopying = NO;
                //设置类名公用后缀
        //        [YBMFConfig shareConfig].fileSuffix = @"File";
                //设置忽略类型
        //        [YBMFConfig shareConfig].ignoreType = YBMFIgnoreTypeAllDigital | YBMFIgnoreTypeMutable;
                //设置文件划分策略
        //        [YBMFConfig shareConfig].filePartitionMode = YBMFFilePartitionModeApart;
                //设置工程用的字典转模型框架
        //        [YBMFConfig shareConfig].framework = YBMFFrameworkMJ;
        
        [YBMFConfig shareConfig].framework = YBMFFrameworkMJ;
        [YBMFConfig shareConfig].fileMHandler.ybmf_skipLine = YES;

        //解析微博的json
        [YBModelFile createFileWithName:@"CXJGoodsCart" data:@"data"];
    }
    return 0;
}

