//
// Created by Bruno Wernimont on 2014
// Copyright 2014 BWAttributedString
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "NSAttributedString+BWAttributedString.h"

////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation NSAttributedString (BWAttributedString)

////////////////////////////////////////////////////////////////////////////////////////////////////
+ (id)attributedStringWithString:(NSString *)string
                      properties:(void (^)(BWAttributedStringProperties *properties))propertiesBlock {
    
    BWAttributedStringProperties *properties = [[BWAttributedStringProperties alloc] init];
    propertiesBlock(properties);
    
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    
    if (properties.backgroundColor)
        attributes[NSBackgroundColorAttributeName] = properties.backgroundColor;
    
    if (properties.font)
        attributes[NSFontAttributeName] = properties.font;
    
    if (properties.textColor)
        attributes[NSForegroundColorAttributeName] = properties.textColor;
    
    if (properties.textAlignment)
        [paragraphStyle setAlignment:properties.textAlignment];
    
    if (properties.lineSpacing)
        [paragraphStyle setLineSpacing:properties.lineSpacing];
    
    attributes[NSParagraphStyleAttributeName] = paragraphStyle;
    
    return [[self alloc] initWithString:string attributes:attributes];
}

@end
