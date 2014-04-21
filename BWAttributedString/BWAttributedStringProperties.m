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

#import "BWAttributedStringProperties.h"

////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation BWAttributedStringProperties

////////////////////////////////////////////////////////////////////////////////////////////////////
+ (instancetype)attributedProperties {
    return [[self alloc] init];
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (NSDictionary *)attributes {
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    
    if (self.backgroundColor)
        attributes[NSBackgroundColorAttributeName] = self.backgroundColor;
    
    if (self.font)
        attributes[NSFontAttributeName] = self.font;
    
    if (self.textColor)
        attributes[NSForegroundColorAttributeName] = self.textColor;
    
    if (self.textAlignment)
        [paragraphStyle setAlignment:self.textAlignment];
    
    if (self.lineSpacing)
        [paragraphStyle setLineSpacing:self.lineSpacing];
    
    attributes[NSParagraphStyleAttributeName] = paragraphStyle;
    
    return attributes;
}

@end
