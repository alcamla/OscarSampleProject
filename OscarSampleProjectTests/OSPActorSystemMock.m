//
//  ActorSystemMock.m
//  Actors
//
//  Created by Anastasiya Gorban on 8/13/15.
//  Copyright (c) 2015 Techery. All rights reserved.
//

#import <Oscar/OSActorSystem.h>
#import <Oscar/OSServiceLocator.h>
#import <Oscar/OSConfigs.h>
#import "OSPActorSystemMock.h"

OSMainActorSystem * actorSystemMock() {
    OSMainActorSystem *actorSystem = [OSMainActorSystem mock];

    [actorSystem stub:@selector(configs) andReturn:[KWMock mockForProtocol:@protocol(OSConfigs)]];
    [actorSystem stub:@selector(serviceLocator) andReturn:[[OSServiceLocator alloc] initWithBuilderBlock:^(OSServiceLocator *locator) {

    }]];

    return actorSystem;
}