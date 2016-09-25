//
//  UTCity.m
//  ObjC vs Swift
//
//  Created by JING ZHANG on 11/1/15.
//  Copyright © 2015 JING ZHANG. All rights reserved.
// value type and reference type

#import "UTCity.h"

@implementation UTCity

-(instancetype)initWithName: (NSString *)name population:(NSInteger)population

{
    self = [super init];
    if (self) {
        self.name = name;
        self.population = population;
    }
    return self;
}
@end

@implementation UTCountry

-(instancetype)initWithName: (NSString *)name cities:(NSArray *)cities
{
    self = [super init];
    if (self) {
        self.name = name;
        self.cities = cities;
    }
    return self;
}

- (UTCity *)findCityWithName:(NSString *)name {
        for (UTCity * city in self.cities) {
            if ([city.name isEqualToString:name])
                return city;
        }
    return nil;
}

-(UTCity *)cityWithLargestPopulation {
    NSInteger maxPopulation = 0;
    UTCity * largestCity;
    for (UTCity * city in self.cities) {
        if (city.population > maxPopulation) {
            largestCity = city;
            maxPopulation = city.population;
        }
    }
    return largestCity;
}
@end
