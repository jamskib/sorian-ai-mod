#***************************************************************************
#*
#**  File     :  /lua/ai/AIBaseTemplates/SorianExpansionBalancedFull.lua
#**  Author(s): Michael Robbins aka Sorian
#**
#**  Summary  : Manage engineers for a location
#**
#**  Copyright � 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

BaseBuilderTemplate {
    BaseTemplateName = 'SorianExpansionAirFull',
    Builders = {
        # ==== ECONOMY ==== #
        # Factory upgrades
        'SorianT1BalancedUpgradeBuildersExpansion',
        'SorianT2BalancedUpgradeBuildersExpansion',
        
        # Engineer Builders
        'SorianEngineerFactoryBuilders',
        'SorianT1EngineerBuilders',
        'SorianT2EngineerBuilders',
        'SorianT3EngineerBuilders',
        'SorianEngineerFactoryConstruction',
        'SorianEngineerFactoryConstruction Balance',
        
        # Build Mass low pri at this base
        'SorianEngineerMassBuildersLowerPri',
        
        # Build some power, but not much
        'SorianEngineerEnergyBuildersExpansions',
        
        # ==== EXPANSION ==== #
        'SorianEngineerExpansionBuildersFull',
        'SorianEngineerExpansionBuildersSmall',
        
        # ==== DEFENSES ==== #
        'SorianT1LightDefenses',
        'SorianT2LightDefenses',
        'SorianT3LightDefenses',

		'SorianT2ArtilleryFormBuilders',
		'SorianT3ArtilleryFormBuilders',
		'SorianT4ArtilleryFormBuilders',
        'SorianT2MissileDefenses',
        'SorianT3NukeDefenses',
        'SorianT3NukeDefenseBehaviors',
		'SorianT2ShieldsExpansion',
        
        # ==== NAVAL EXPANSION ==== #
        'SorianNavalExpansionBuilders',
        
        # ==== AIR UNIT BUILDERS ==== #
        'SorianT1AirFactoryBuilders',
        'SorianT2AirFactoryBuilders',
        'SorianT3AirFactoryBuilders',
        'SorianFrequentAirAttackFormBuilders',
        'SorianMassHunterAirFormBuilders',
        
        'SorianACUHunterAirFormBuilders',
        
        'SorianTransportFactoryBuilders',
		
		'SorianExpResponseFormBuilders',
        
        'SorianT1AntiAirBuilders',
        'SorianT2AntiAirBuilders',
        'SorianT3AntiAirBuilders',
        'SorianBaseGuardAirFormBuilders',

        # ==== EXPERIMENTALS ==== #
        'SorianMobileLandExperimentalEngineers',
        'SorianMobileLandExperimentalForm',
        
        'SorianMobileAirExperimentalEngineersHigh',
        'SorianMobileAirExperimentalForm',
    },
    NonCheatBuilders = {
        'SorianAirScoutFactoryBuilders',
        'SorianAirScoutFormBuilders',
        
        'SorianRadarEngineerBuilders',
        'SorianRadarUpgradeBuildersExpansion',
        
        'SorianCounterIntelBuilders',
    },
    BaseSettings = {
        EngineerCount = {
            Tech1 = 10,
            Tech2 = 15,
            Tech3 = 20,
            SCU = 2,
        },
        FactoryCount = {
            Land = 0,
            Air = 4,
            Sea = 0,
            Gate = 1,
        },
        MassToFactoryValues = {
            T1Value = 8, #6
            T2Value = 20, #15
            T3Value = 27.5, #22.5 
        },
    },
    ExpansionFunction = function(aiBrain, location, markerType)
        if markerType != 'Start Location' and markerType != 'Expansion Area' then
            return 0
        end
        
        local personality = ScenarioInfo.ArmySetup[aiBrain.Name].AIPersonality
        if personality == 'sorianair' or personality == 'sorianwater' then
            return 200
        end
        
        return 0
    end,
}