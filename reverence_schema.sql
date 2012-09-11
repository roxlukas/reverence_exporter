DROP TABLE IF EXISTS invTypes;

CREATE TABLE `invTypes` (
  `typeID` int(10) NOT NULL,
  `groupID` int(10) DEFAULT NULL,
  `typeName` varchar(100) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `graphicID` int(10) DEFAULT NULL,
  `radius` double DEFAULT NULL,
  `mass` double DEFAULT NULL,
  `volume` double DEFAULT NULL,
  `capacity` double DEFAULT NULL,
  `portionSize` int(10) DEFAULT NULL,
  `raceID` int(3) DEFAULT NULL,
  `basePrice` decimal(19,4) DEFAULT NULL,
  `published` BOOLEAN DEFAULT NULL,
  `marketGroupID` int(10) DEFAULT NULL,
  `chanceOfDuplicating` double DEFAULT NULL,
  `soundID` int(10) DEFAULT NULL,
  `iconID` int(10) DEFAULT NULL,
  `dataID` int(10) DEFAULT NULL,
  `typeNameID` int(10) DEFAULT NULL,
  `descriptionID` int(10) DEFAULT NULL,
  `copyTypeID` int(10) DEFAULT NULL,
  PRIMARY KEY (`typeID`)
);

--invcategories
-- ['categoryID', 'categoryName', 'description', 'published', 'iconID', 'categoryNameID', 'dataID']
DROP TABLE IF EXISTS invCategories;

CREATE TABLE `invCategories` (
  `categoryID` int(10) NOT NULL,
  `categoryName` varchar(100) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `published` int(11) DEFAULT NULL,
  `iconID` int(10) DEFAULT NULL,
  `categoryNameID` int(10) NOT NULL,
  `dataID` int(10) NOT NULL,
  PRIMARY KEY (`categoryID`)
);

--invgroups
-- ['groupID', 'categoryID', 'groupName', 'description', 'useBasePrice', 'allowManufacture', 'allowRecycler', 'anchored', 'anchorable', 'fittableNonSingleton', 'published', 'iconID',  'groupNameID', 'dataID']
DROP TABLE IF EXISTS invGroups;

CREATE TABLE `invGroups` (
  `groupID` int(10) NOT NULL,
  `categoryID` int(10) DEFAULT NULL,
  `groupName` varchar(100) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `useBasePrice` int(11) DEFAULT NULL,
  `allowManufacture` int(11) DEFAULT NULL,
  `allowRecycler` int(11) DEFAULT NULL,
  `anchored` int(11) DEFAULT NULL,
  `anchorable` int(11) DEFAULT NULL,
  `fittableNonSingleton` int(11) DEFAULT NULL,
  `published` int(11) DEFAULT NULL,
  `iconID` int(10) DEFAULT NULL,
  `groupNameID` int(10) DEFAULT NULL,
  `dataID` int(10) DEFAULT NULL,
  PRIMARY KEY (`groupID`)
);

--invmetagroups
-- ['metaGroupID', 'metaGroupName', 'description', 'iconID', 'metaGroupNameID', 'descriptionID', 'dataID']

---invbptypes
-- ['blueprintTypeID', 'parentBlueprintTypeID', 'productTypeID', 'productionTime', 'techLevel', 'researchProductivityTime', 'researchMaterialTime', 'researchCopyTime', 'researchTechTime', 'productivityModifier', 'materialModifier', 'wasteFactor', 'chanceOfReverseEngineering', 'maxProductionLimit']

--dgmattribs
-- ['attributeID', 'attributeName', 'attributeCategory', 'description', 'maxAttributeID', 'attributeIdx', 'chargeRechargeTimeID', 'defaultValue', 'published', 'displayName', 'unitID', 'stackable', 'highIsGood', 'categoryID', 'iconID', 'displayNameID', 'dataID']

--dgmeffects
-- ['effectID', 'effectName', 'effectCategory', 'preExpression', 'postExpression', 'description', 'guid', 'isOffensive', 'isAssistance', 'durationAttributeID', 'trackingSpeedAttributeID', 'dischargeAttributeID', 'rangeAttributeID', 'falloffAttributeID', 'disallowAutoRepeat', 'published', 'displayName', 'isWarpSafe', 'rangeChance', 'electronicChance', 'propulsionChance', 'distribution', 'sfxName', 'npcUsageChanceAttributeID', 'npcActivationChanceAttributeID', 'fittingUsageChanceAttributeID', 'iconID', 'displayNameID', 'descriptionID', 'dataID']

--eveowners
-- ['ownerID', 'ownerName', 'typeID', 'gender', 'ownerNameID']

--evelocations
-- ['locationID', 'locationName', 'x', 'y', 'z', 'locationNameID']

--corptickernames
-- ['corporationID', 'tickerName', 'shape1', 'shape2', 'shape3', 'color1', 'color2', 'color3']

--ramaltypes
-- ['assemblyLineTypeID', 'assemblyLineTypeName', 'description', 'baseTimeMultiplier', 'baseMaterialMultiplier', 'volume', 'activityID', 'minCostPerHour']

--ramactivities
-- ['activityID', 'activityName', 'iconNo', 'description', 'published', 'activityNameID', 'descriptionID']

--ramcompletedstatuses
-- ['completedStatus', 'completedStatusText', 'description', 'completedStatusTextID']

--mapcelestialdescriptions
-- ['itemID', 'description', 'descriptionID', 'dataID']

--certificates
-- ['certificateID', 'categoryID', 'classID', 'grade', 'corpID', 'iconID', 'description', 'descriptionID', 'dataID']

--certificaterelationships
-- ['relationshipID', 'parentID', 'parentTypeID', 'parentLevel', 'childID', 'childTypeID']

--locationwormholeclasses
-- ['locationID', 'wormholeClassID']
-- 
-- ===============================================================================================
-- Above this line is a working schema for REVERENCE data dump.
-- Below is the original Aura schema, which needs to be updated with the additional columns from REVERENCE

CREATE TABLE "agtAgentTypes" (
  "agentTypeID" int(10) NOT NULL,
  "agentType" varchar(50) DEFAULT NULL,
  PRIMARY KEY ("agentTypeID")
);
CREATE TABLE "agtAgents" (
  "agentID" int(10) NOT NULL,
  "divisionID" int(3) DEFAULT NULL,
  "corporationID" int(10) DEFAULT NULL,
  "locationID" int(10) DEFAULT NULL,
  "level" int(3) DEFAULT NULL,
  "quality" smallint(5) DEFAULT NULL,
  "agentTypeID" int(10) DEFAULT NULL,
  "isLocator" int(11) DEFAULT NULL,
  PRIMARY KEY ("agentID")
);
CREATE TABLE "agtResearchAgents" (
  "agentID" int(10) NOT NULL,
  "typeID" int(10) NOT NULL,
  PRIMARY KEY ("agentID","typeID")
);
CREATE TABLE android_metadata (locale TEXT);
CREATE TABLE charges (
        typeID INTEGER PRIMARY KEY,
        damage INTEGER,
        chargeSize INTEGER,
        launcherGroup INTEGER,
        metaGroupID INTEGER
      );
CREATE TABLE "chrAncestries" (
  "ancestryID" int(3) NOT NULL,
  "ancestryName" varchar(100) DEFAULT NULL,
  "bloodlineID" int(3) DEFAULT NULL,
  "description" varchar(1000) DEFAULT NULL,
  "perception" int(3) DEFAULT NULL,
  "willpower" int(3) DEFAULT NULL,
  "charisma" int(3) DEFAULT NULL,
  "memory" int(3) DEFAULT NULL,
  "intelligence" int(3) DEFAULT NULL,
  "iconID" int(10) DEFAULT NULL,
  "shortDescription" varchar(500) DEFAULT NULL,
  PRIMARY KEY ("ancestryID")
);
CREATE TABLE "chrAttributes" (
  "attributeID" int(3) NOT NULL,
  "attributeName" varchar(100) DEFAULT NULL,
  "description" varchar(1000) DEFAULT NULL,
  "iconID" int(10) DEFAULT NULL,
  "shortDescription" varchar(500) DEFAULT NULL,
  "notes" varchar(500) DEFAULT NULL,
  PRIMARY KEY ("attributeID")
);
CREATE TABLE "chrBloodlines" (
  "bloodlineID" int(3) NOT NULL,
  "bloodlineName" varchar(100) DEFAULT NULL,
  "raceID" int(3) DEFAULT NULL,
  "description" varchar(1000) DEFAULT NULL,
  "maleDescription" varchar(1000) DEFAULT NULL,
  "femaleDescription" varchar(1000) DEFAULT NULL,
  "shipTypeID" int(10) DEFAULT NULL,
  "corporationID" int(10) DEFAULT NULL,
  "perception" int(3) DEFAULT NULL,
  "willpower" int(3) DEFAULT NULL,
  "charisma" int(3) DEFAULT NULL,
  "memory" int(3) DEFAULT NULL,
  "intelligence" int(3) DEFAULT NULL,
  "iconID" int(10) DEFAULT NULL,
  "shortDescription" varchar(500) DEFAULT NULL,
  "shortMaleDescription" varchar(500) DEFAULT NULL,
  "shortFemaleDescription" varchar(500) DEFAULT NULL,
  PRIMARY KEY ("bloodlineID")
);
CREATE TABLE "chrFactions" (
  "factionID" int(10) NOT NULL,
  "factionName" varchar(100) DEFAULT NULL,
  "description" varchar(1000) DEFAULT NULL,
  "raceIDs" int(10) DEFAULT NULL,
  "solarSystemID" int(10) DEFAULT NULL,
  "corporationID" int(10) DEFAULT NULL,
  "sizeFactor" double DEFAULT NULL,
  "stationCount" smallint(5) DEFAULT NULL,
  "stationSystemCount" smallint(5) DEFAULT NULL,
  "militiaCorporationID" int(10) DEFAULT NULL,
  "iconID" int(10) DEFAULT NULL,
  PRIMARY KEY ("factionID")
);
CREATE TABLE "chrRaces" (
  "raceID" int(3) NOT NULL,
  "raceName" varchar(100) DEFAULT NULL,
  "description" varchar(1000) DEFAULT NULL,
  "iconID" int(10) DEFAULT NULL,
  "shortDescription" varchar(500) DEFAULT NULL,
  PRIMARY KEY ("raceID")
);
CREATE TABLE "crpActivities" (
  "activityID" int(3) NOT NULL,
  "activityName" varchar(100) DEFAULT NULL,
  "description" varchar(1000) DEFAULT NULL,
  PRIMARY KEY ("activityID")
);
CREATE TABLE "crpNPCCorporationDivisions" (
  "corporationID" int(10) NOT NULL,
  "divisionID" int(3) NOT NULL,
  "size" int(3) DEFAULT NULL,
  PRIMARY KEY ("corporationID","divisionID")
);
CREATE TABLE "crpNPCCorporationResearchFields" (
  "skillID" int(10) NOT NULL,
  "corporationID" int(10) NOT NULL,
  PRIMARY KEY ("skillID","corporationID")
);
CREATE TABLE "crpNPCCorporationTrades" (
  "corporationID" int(10) NOT NULL,
  "typeID" int(10) NOT NULL,
  PRIMARY KEY ("corporationID","typeID")
);
CREATE TABLE "crpNPCCorporations" (
  "corporationID" int(10) NOT NULL,
  "size" char(1) DEFAULT NULL,
  "extent" char(1) DEFAULT NULL,
  "solarSystemID" int(10) DEFAULT NULL,
  "investorID1" int(10) DEFAULT NULL,
  "investorShares1" int(3) DEFAULT NULL,
  "investorID2" int(10) DEFAULT NULL,
  "investorShares2" int(3) DEFAULT NULL,
  "investorID3" int(10) DEFAULT NULL,
  "investorShares3" int(3) DEFAULT NULL,
  "investorID4" int(10) DEFAULT NULL,
  "investorShares4" int(3) DEFAULT NULL,
  "friendID" int(10) DEFAULT NULL,
  "enemyID" int(10) DEFAULT NULL,
  "publicShares" bigint(19) DEFAULT NULL,
  "initialPrice" int(10) DEFAULT NULL,
  "minSecurity" double DEFAULT NULL,
  "scattered" int(11) DEFAULT NULL,
  "fringe" int(3) DEFAULT NULL,
  "corridor" int(3) DEFAULT NULL,
  "hub" int(3) DEFAULT NULL,
  "border" int(3) DEFAULT NULL,
  "factionID" int(10) DEFAULT NULL,
  "sizeFactor" double DEFAULT NULL,
  "stationCount" smallint(5) DEFAULT NULL,
  "stationSystemCount" smallint(5) DEFAULT NULL,
  "description" varchar(4000) DEFAULT NULL,
  "iconID" int(10) DEFAULT NULL,
  PRIMARY KEY ("corporationID")
);
CREATE TABLE "crpNPCDivisions" (
  "divisionID" int(3) NOT NULL,
  "divisionName" varchar(100) DEFAULT NULL,
  "description" varchar(1000) DEFAULT NULL,
  "leaderType" varchar(100) DEFAULT NULL,
  PRIMARY KEY ("divisionID")
);
CREATE TABLE "crtCategories" (
  "categoryID" int(3) NOT NULL,
  "description" varchar(500) DEFAULT NULL,
  "categoryName" varchar(256) DEFAULT NULL,
  PRIMARY KEY ("categoryID")
);
CREATE TABLE "crtCertificates" (
  "certificateID" int(10) NOT NULL,
  "categoryID" int(3) DEFAULT NULL,
  "classID" int(10) DEFAULT NULL,
  "grade" int(3) DEFAULT NULL,
  "corpID" int(10) DEFAULT NULL,
  "iconID" int(10) DEFAULT NULL,
  "description" varchar(500) DEFAULT NULL,
  PRIMARY KEY ("certificateID")
);
CREATE TABLE "crtClasses" (
  "classID" int(10) NOT NULL,
  "description" varchar(500) DEFAULT NULL,
  "className" varchar(256) DEFAULT NULL,
  PRIMARY KEY ("classID")
);
CREATE TABLE "crtRecommendations" (
  "recommendationID" int(10) NOT NULL,
  "shipTypeID" int(10) DEFAULT NULL,
  "certificateID" int(10) DEFAULT NULL,
  "recommendationLevel" int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY ("recommendationID")
);
CREATE TABLE "crtRelationships" (
  "relationshipID" int(10) NOT NULL,
  "parentID" int(10) DEFAULT NULL,
  "parentTypeID" int(10) DEFAULT NULL,
  "parentLevel" int(3) DEFAULT NULL,
  "childID" int(10) DEFAULT NULL,
  PRIMARY KEY ("relationshipID")
);
CREATE TABLE denormalize (
       locationID INTEGER PRIMARY KEY,
       typeID INTEGER,
       groupID INTEGER,
       solarSystemID INTEGER,
       constellationID INTEGER,
       regionID INTEGER,
       locationName TEXT
     );
CREATE TABLE "dgmAttributeCategories" (
  "categoryID" int(3) NOT NULL,
  "categoryName" varchar(50) DEFAULT NULL,
  "categoryDescription" varchar(200) DEFAULT NULL,
  PRIMARY KEY ("categoryID")
);
CREATE TABLE "dgmAttributeTypes" (
  "attributeID" smallint(5) NOT NULL,
  "attributeName" varchar(100) DEFAULT NULL,
  "description" varchar(1000) DEFAULT NULL,
  "iconID" int(10) DEFAULT NULL,
  "defaultValue" double DEFAULT NULL,
  "published" int(11) DEFAULT NULL,
  "displayName" varchar(100) DEFAULT NULL,
  "unitID" int(3) DEFAULT NULL,
  "stackable" int(11) DEFAULT NULL,
  "highIsGood" int(11) DEFAULT NULL,
  "categoryID" int(3) DEFAULT NULL,
  PRIMARY KEY ("attributeID")
);
CREATE TABLE "dgmEffects" (
  "effectID" smallint(5) NOT NULL,
  "effectName" varchar(400) DEFAULT NULL,
  "effectCategory" smallint(5) DEFAULT NULL,
  "preExpression" int(10) DEFAULT NULL,
  "postExpression" int(10) DEFAULT NULL,
  "description" varchar(1000) DEFAULT NULL,
  "guid" varchar(60) DEFAULT NULL,
  "iconID" int(10) DEFAULT NULL,
  "isOffensive" int(11) DEFAULT NULL,
  "isAssistance" int(11) DEFAULT NULL,
  "durationAttributeID" smallint(5) DEFAULT NULL,
  "trackingSpeedAttributeID" smallint(5) DEFAULT NULL,
  "dischargeAttributeID" smallint(5) DEFAULT NULL,
  "rangeAttributeID" smallint(5) DEFAULT NULL,
  "falloffAttributeID" smallint(5) DEFAULT NULL,
  "disallowAutoRepeat" int(11) DEFAULT NULL,
  "published" int(11) DEFAULT NULL,
  "displayName" varchar(100) DEFAULT NULL,
  "isWarpSafe" int(11) DEFAULT NULL,
  "rangeChance" int(11) DEFAULT NULL,
  "electronicChance" int(11) DEFAULT NULL,
  "propulsionChance" int(11) DEFAULT NULL,
  "distribution" int(3) DEFAULT NULL,
  "sfxName" varchar(20) DEFAULT NULL,
  "npcUsageChanceAttributeID" smallint(5) DEFAULT NULL,
  "npcActivationChanceAttributeID" smallint(5) DEFAULT NULL,
  "fittingUsageChanceAttributeID" smallint(5) DEFAULT NULL,
  PRIMARY KEY ("effectID")
);
CREATE TABLE dgmTypeAttributes (
    "typeID" INTEGER NOT NULL,
    "attributeID" INTEGER NOT NULL,
    "value" NUMERIC NOT NULL,
    PRIMARY KEY  ("typeID","attributeID"));
CREATE TABLE "dgmTypeEffects" (
  "typeID" int(10) NOT NULL,
  "effectID" smallint(5) NOT NULL,
  "isDefault" int(11) DEFAULT NULL,
  PRIMARY KEY ("typeID","effectID")
);
CREATE TABLE "eveGraphics" (
  "graphicID" int(10) NOT NULL,
  "graphicFile" text NOT NULL,
  "description" text,
  "obsolete" int(11) DEFAULT NULL,
  "graphicType" text,
  "collidable" int(11) DEFAULT NULL,
  "explosionID" int(10) DEFAULT NULL,
  "directoryID" int(10) DEFAULT NULL,
  "graphicName" text,
  PRIMARY KEY ("graphicID")
);
CREATE TABLE "eveIcons" (
  "iconID" int(10) NOT NULL,
  "iconFile" varchar(500) NOT NULL,
  "description" text,
  PRIMARY KEY ("iconID")
);
CREATE TABLE "eveUnits" (
  "unitID" int(3) NOT NULL,
  "unitName" varchar(100) DEFAULT NULL,
  "displayName" varchar(50) DEFAULT NULL,
  "description" varchar(1000) DEFAULT NULL,
  PRIMARY KEY ("unitID")
);
CREATE TABLE "invBlueprintTypes" (
  "blueprintTypeID" int(10) NOT NULL,
  "parentBlueprintTypeID" int(10) DEFAULT NULL,
  "productTypeID" int(10) DEFAULT NULL,
  "productionTime" int(10) DEFAULT NULL,
  "techLevel" smallint(5) DEFAULT NULL,
  "researchProductivityTime" int(10) DEFAULT NULL,
  "researchMaterialTime" int(10) DEFAULT NULL,
  "researchCopyTime" int(10) DEFAULT NULL,
  "researchTechTime" int(10) DEFAULT NULL,
  "productivityModifier" int(10) DEFAULT NULL,
  "materialModifier" smallint(5) DEFAULT NULL,
  "wasteFactor" smallint(5) DEFAULT NULL,
  "maxProductionLimit" int(10) DEFAULT NULL,
  PRIMARY KEY ("blueprintTypeID")
);
CREATE TABLE "invCategories" (
  "categoryID" int(10) NOT NULL,
  "categoryName" varchar(100) DEFAULT NULL,
  "description" varchar(3000) DEFAULT NULL,
  "iconID" int(10) DEFAULT NULL,
  "published" int(11) DEFAULT NULL,
  PRIMARY KEY ("categoryID")
);
CREATE TABLE "invFlags" (
  "flagID" smallint(5) NOT NULL,
  "flagName" varchar(200) DEFAULT NULL,
  "flagText" varchar(100) DEFAULT NULL,
  "orderID" int(10) DEFAULT NULL,
  PRIMARY KEY ("flagID")
);
CREATE TABLE "invGroups" (
  "groupID" int(10) NOT NULL,
  "categoryID" int(10) DEFAULT NULL,
  "groupName" varchar(100) DEFAULT NULL,
  "description" varchar(3000) DEFAULT NULL,
  "iconID" int(10) DEFAULT NULL,
  "useBasePrice" int(11) DEFAULT NULL,
  "allowManufacture" int(11) DEFAULT NULL,
  "allowRecycler" int(11) DEFAULT NULL,
  "anchored" int(11) DEFAULT NULL,
  "anchorable" int(11) DEFAULT NULL,
  "fittableNonSingleton" int(11) DEFAULT NULL,
  "published" int(11) DEFAULT NULL,
  PRIMARY KEY ("groupID")
);
CREATE TABLE "invMarketGroups" (
  "marketGroupID" int(10) NOT NULL,
  "parentGroupID" int(10) DEFAULT NULL,
  "marketGroupName" varchar(100) DEFAULT NULL,
  "description" varchar(3000) DEFAULT NULL,
  "iconID" int(10) DEFAULT NULL,
  "hasTypes" int(11) DEFAULT NULL,
  PRIMARY KEY ("marketGroupID")
);
CREATE TABLE "invMetaGroups" (
  "metaGroupID" smallint(5) NOT NULL,
  "metaGroupName" varchar(100) DEFAULT NULL,
  "description" varchar(1000) DEFAULT NULL,
  "iconID" int(10) DEFAULT NULL,
  PRIMARY KEY ("metaGroupID")
);
CREATE TABLE "invMetaTypes" (
  "typeID" int(10) NOT NULL,
  "parentTypeID" int(10) DEFAULT NULL,
  "metaGroupID" smallint(5) DEFAULT NULL,
  PRIMARY KEY ("typeID")
);
CREATE TABLE "invTypeMaterials" (
  "typeID" int(10) NOT NULL,
  "materialTypeID" int(10) NOT NULL,
  "quantity" int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY ("typeID","materialTypeID")
);
CREATE TABLE "invTypeReactions" (
  "reactionTypeID" int(10) NOT NULL,
  "input" int(11) NOT NULL,
  "typeID" int(10) NOT NULL,
  "quantity" smallint(5) DEFAULT NULL,
  PRIMARY KEY ("reactionTypeID","input","typeID")
);
CREATE TABLE "mapConstellations" (
  "regionID" int(10) DEFAULT NULL,
  "constellationID" int(10) NOT NULL,
  "constellationName" varchar(100) DEFAULT NULL,
  "x" double DEFAULT NULL,
  "y" double DEFAULT NULL,
  "z" double DEFAULT NULL,
  "xMin" double DEFAULT NULL,
  "xMax" double DEFAULT NULL,
  "yMin" double DEFAULT NULL,
  "yMax" double DEFAULT NULL,
  "zMin" double DEFAULT NULL,
  "zMax" double DEFAULT NULL,
  "factionID" int(10) DEFAULT NULL,
  "radius" double DEFAULT NULL,
  PRIMARY KEY ("constellationID")
);
CREATE TABLE "mapRegions" (
  "regionID" int(10) NOT NULL,
  "regionName" varchar(100) DEFAULT NULL,
  "x" double DEFAULT NULL,
  "y" double DEFAULT NULL,
  "z" double DEFAULT NULL,
  "xMin" double DEFAULT NULL,
  "xMax" double DEFAULT NULL,
  "yMin" double DEFAULT NULL,
  "yMax" double DEFAULT NULL,
  "zMin" double DEFAULT NULL,
  "zMax" double DEFAULT NULL,
  "factionID" int(10) DEFAULT NULL,
  "radius" double DEFAULT NULL,
  PRIMARY KEY ("regionID")
);
CREATE TABLE "mapSolarSystems" (
  "regionID" int(10) DEFAULT NULL,
  "constellationID" int(10) DEFAULT NULL,
  "solarSystemID" int(10) NOT NULL,
  "solarSystemName" varchar(100) DEFAULT NULL,
  "x" double DEFAULT NULL,
  "y" double DEFAULT NULL,
  "z" double DEFAULT NULL,
  "xMin" double DEFAULT NULL,
  "xMax" double DEFAULT NULL,
  "yMin" double DEFAULT NULL,
  "yMax" double DEFAULT NULL,
  "zMin" double DEFAULT NULL,
  "zMax" double DEFAULT NULL,
  "luminosity" double DEFAULT NULL,
  "border" int(11) DEFAULT NULL,
  "fringe" int(11) DEFAULT NULL,
  "corridor" int(11) DEFAULT NULL,
  "hub" int(11) DEFAULT NULL,
  "international" int(11) DEFAULT NULL,
  "regional" int(11) DEFAULT NULL,
  "constellation" int(11) DEFAULT NULL,
  "security" double DEFAULT NULL,
  "factionID" int(10) DEFAULT NULL,
  "radius" double DEFAULT NULL,
  "sunTypeID" int(10) DEFAULT NULL,
  "securityClass" varchar(2) DEFAULT NULL,
  PRIMARY KEY ("solarSystemID")
);
CREATE TABLE materials (
   blueprintTypeID INTEGER,    -- id of blueprint using this material
   productTypeID INTEGER,   -- id of produced item
   activityID INTEGER,      -- building, copying, etc
   requiredTypeID INTEGER,  -- id of resource used for this activity
   quantity INTEGER,        -- how many of this resource is used
   damagePerJob NUMERIC,    -- how much of the resource is expended
   baseMaterial INTEGER,    -- how much is the base material.  0 means unaffected by waste, >=quantity means entirely affected
   PRIMARY KEY (blueprintTypeID, activityID, requiredTypeID)
  );
CREATE TABLE prereqs (
    typeID INTEGER PRIMARY KEY,
    skill1 INTEGER,
    skill2 INTEGER,
    skill3 INTEGER,
    skill4 INTEGER,
    skill5 INTEGER,
    skill6 INTEGER,
    level1 INTEGER,
    level2 INTEGER,
    level3 INTEGER,
    level4 INTEGER,
    level5 INTEGER,
    level6 INTEGER
  );
CREATE TABLE "ramActivities" (
  "activityID" int(3) NOT NULL,
  "activityName" varchar(100) DEFAULT NULL,
  "iconNo" varchar(5) DEFAULT NULL,
  "description" varchar(1000) DEFAULT NULL,
  "published" int(11) DEFAULT NULL,
  PRIMARY KEY ("activityID")
);
CREATE TABLE "ramInstallationTypeContents" (
  "installationTypeID" int(10) NOT NULL,
  "assemblyLineTypeID" int(3) NOT NULL,
  "quantity" int(3) DEFAULT NULL,
  PRIMARY KEY ("installationTypeID","assemblyLineTypeID")
);
CREATE TABLE "ramTypeRequirements" (
  "typeID" int(10) NOT NULL,
  "activityID" int(3) NOT NULL,
  "requiredTypeID" int(10) NOT NULL,
  "quantity" int(10) DEFAULT NULL,
  "damagePerJob" double DEFAULT NULL,
  "recycle" int(11) DEFAULT NULL,
  PRIMARY KEY ("typeID","activityID","requiredTypeID")
);
CREATE VIRTUAL TABLE search USING fts3(typeID, typeName);
CREATE TABLE 'search_content'(docid INTEGER PRIMARY KEY, 'c0typeID', 'c1typeName');
CREATE TABLE 'search_segdir'(level INTEGER,idx INTEGER,start_block INTEGER,leaves_end_block INTEGER,end_block INTEGER,root BLOB,PRIMARY KEY(level, idx));
CREATE TABLE 'search_segments'(blockid INTEGER PRIMARY KEY, block BLOB);
CREATE TABLE skills_master (
  typeID INTEGER PRIMARY KEY,
  skillName TEXT,
  description TEXT,
  category TEXT,
  rank INTEGER,
  published INTEGER,
  level INTEGER,
  attr1 TEXT,
  attr2 TEXT,
  skill1 INTEGER,
  skill2 INTEGER,
  skill3 INTEGER,
  skill4 INTEGER,
  skill5 INTEGER,
  skill6 INTEGER,
  level1 INTEGER,
  level2 INTEGER,
  level3 INTEGER,
  level4 INTEGER,
  level5 INTEGER,
  level6 INTEGER
);
CREATE TABLE skills_tree (
    ancestor INTEGER,
    descendant INTEGER,
    level INTEGER,
    depth INTEGER
  );
CREATE TABLE "staOperationServices" (
  "operationID" int(3) NOT NULL,
  "serviceID" int(10) NOT NULL,
  PRIMARY KEY ("operationID","serviceID")
);
CREATE TABLE "staOperations" (
  "activityID" int(3) DEFAULT NULL,
  "operationID" int(3) NOT NULL,
  "operationName" varchar(100) DEFAULT NULL,
  "description" varchar(1000) DEFAULT NULL,
  "fringe" int(3) DEFAULT NULL,
  "corridor" int(3) DEFAULT NULL,
  "hub" int(3) DEFAULT NULL,
  "border" int(3) DEFAULT NULL,
  "ratio" int(3) DEFAULT NULL,
  "caldariStationTypeID" int(10) DEFAULT NULL,
  "minmatarStationTypeID" int(10) DEFAULT NULL,
  "amarrStationTypeID" int(10) DEFAULT NULL,
  "gallenteStationTypeID" int(10) DEFAULT NULL,
  "joveStationTypeID" int(10) DEFAULT NULL,
  PRIMARY KEY ("operationID")
);
CREATE TABLE "staServices" (
  "serviceID" int(10) NOT NULL,
  "serviceName" varchar(100) DEFAULT NULL,
  "description" varchar(1000) DEFAULT NULL,
  PRIMARY KEY ("serviceID")
);
CREATE TABLE "staStationTypes" (
  "stationTypeID" int(10) NOT NULL,
  "dockEntryX" double DEFAULT NULL,
  "dockEntryY" double DEFAULT NULL,
  "dockEntryZ" double DEFAULT NULL,
  "dockOrientationX" double DEFAULT NULL,
  "dockOrientationY" double DEFAULT NULL,
  "dockOrientationZ" double DEFAULT NULL,
  "operationID" int(3) DEFAULT NULL,
  "officeSlots" int(3) DEFAULT NULL,
  "reprocessingEfficiency" double DEFAULT NULL,
  "conquerable" int(11) DEFAULT NULL,
  PRIMARY KEY ("stationTypeID")
);
CREATE TABLE "staStations" (
  "stationID" int(10) NOT NULL,
  "security" smallint(5) DEFAULT NULL,
  "dockingCostPerVolume" double DEFAULT NULL,
  "maxShipVolumeDockable" double DEFAULT NULL,
  "officeRentalCost" int(10) DEFAULT NULL,
  "operationID" int(3) DEFAULT NULL,
  "stationTypeID" int(10) DEFAULT NULL,
  "corporationID" int(10) DEFAULT NULL,
  "solarSystemID" int(10) DEFAULT NULL,
  "constellationID" int(10) DEFAULT NULL,
  "regionID" int(10) DEFAULT NULL,
  "stationName" varchar(100) DEFAULT NULL,
  "x" double DEFAULT NULL,
  "y" double DEFAULT NULL,
  "z" double DEFAULT NULL,
  "reprocessingEfficiency" double DEFAULT NULL,
  "reprocessingStationsTake" double DEFAULT NULL,
  "reprocessingHangarFlag" int(3) DEFAULT NULL,
  PRIMARY KEY ("stationID")
);
CREATE TABLE "warCombatZoneSystems" (
  "solarSystemID" int(10) NOT NULL,
  "combatZoneID" int(10) DEFAULT NULL,
  PRIMARY KEY ("solarSystemID")
);
CREATE TABLE "warCombatZones" (
  "combatZoneID" int(10) NOT NULL DEFAULT '-1',
  "combatZoneName" varchar(100) DEFAULT NULL,
  "factionID" int(10) DEFAULT NULL,
  "centerSystemID" int(10) DEFAULT NULL,
  "description" varchar(500) DEFAULT NULL,
  PRIMARY KEY ("combatZoneID")
);
CREATE INDEX "agtAgents_IX_agentTypeID" ON "agtAgents" ("agentTypeID");
CREATE INDEX "agtAgents_IX_corporation" ON "agtAgents" ("corporationID");
CREATE INDEX "agtAgents_IX_divisionID" ON "agtAgents" ("divisionID");
CREATE INDEX "agtAgents_IX_station" ON "agtAgents" ("locationID");
CREATE INDEX "agtAgents_agtAgents_IX_corporation" ON "agtAgents" ("corporationID");
CREATE INDEX "agtAgents_agtAgents_IX_station" ON "agtAgents" ("locationID");
CREATE INDEX "agtResearchAgents_IX_type" ON "agtResearchAgents" ("typeID");
CREATE INDEX "agtResearchAgents_agtResearchAgents_IX_type" ON "agtResearchAgents" ("typeID");
CREATE INDEX "chrAncestries_IX_bloodlineID" ON "chrAncestries" ("bloodlineID");
CREATE INDEX "chrAncestries_IX_iconID" ON "chrAncestries" ("iconID");
CREATE INDEX "chrAttributes_IX_iconID" ON "chrAttributes" ("iconID");
CREATE INDEX "chrBloodlines_IX_corporationID" ON "chrBloodlines" ("corporationID");
CREATE INDEX "chrBloodlines_IX_iconID" ON "chrBloodlines" ("iconID");
CREATE INDEX "chrBloodlines_IX_raceID" ON "chrBloodlines" ("raceID");
CREATE INDEX "chrBloodlines_IX_shipTypeID" ON "chrBloodlines" ("shipTypeID");
CREATE INDEX "chrFactions_IX_corporationID" ON "chrFactions" ("corporationID");
CREATE INDEX "chrFactions_IX_iconID" ON "chrFactions" ("iconID");
CREATE INDEX "chrFactions_IX_militiaCorporationID" ON "chrFactions" ("militiaCorporationID");
CREATE INDEX "chrFactions_IX_solarSystemID" ON "chrFactions" ("solarSystemID");
CREATE INDEX "chrRaces_IX_iconID" ON "chrRaces" ("iconID");
CREATE INDEX "crpNPCCorporationDivisions_IX_divisionID" ON "crpNPCCorporationDivisions" ("divisionID");
CREATE INDEX "crpNPCCorporationResearchFields_IX_corporationID" ON "crpNPCCorporationResearchFields" ("corporationID");
CREATE INDEX "crpNPCCorporationTrades_IX_typeID" ON "crpNPCCorporationTrades" ("typeID");
CREATE INDEX "crpNPCCorporations_IX_enemyID" ON "crpNPCCorporations" ("enemyID");
CREATE INDEX "crpNPCCorporations_IX_factionID" ON "crpNPCCorporations" ("factionID");
CREATE INDEX "crpNPCCorporations_IX_friendID" ON "crpNPCCorporations" ("friendID");
CREATE INDEX "crpNPCCorporations_IX_iconID" ON "crpNPCCorporations" ("iconID");
CREATE INDEX "crpNPCCorporations_IX_investorID1" ON "crpNPCCorporations" ("investorID1");
CREATE INDEX "crpNPCCorporations_IX_investorID2" ON "crpNPCCorporations" ("investorID2");
CREATE INDEX "crpNPCCorporations_IX_investorID3" ON "crpNPCCorporations" ("investorID3");
CREATE INDEX "crpNPCCorporations_IX_investorID4" ON "crpNPCCorporations" ("investorID4");
CREATE INDEX "crpNPCCorporations_IX_solarSystemID" ON "crpNPCCorporations" ("solarSystemID");
CREATE INDEX "crtCertificates_IX_category" ON "crtCertificates" ("categoryID");
CREATE INDEX "crtCertificates_IX_class" ON "crtCertificates" ("classID");
CREATE INDEX "crtCertificates_IX_corpID" ON "crtCertificates" ("corpID");
CREATE INDEX "crtCertificates_IX_iconID" ON "crtCertificates" ("iconID");
CREATE INDEX "crtCertificates_crtCertificates_IX_category" ON "crtCertificates" ("categoryID");
CREATE INDEX "crtCertificates_crtCertificates_IX_class" ON "crtCertificates" ("classID");
CREATE INDEX "crtRecommendations_IX_certificate" ON "crtRecommendations" ("certificateID");
CREATE INDEX "crtRecommendations_IX_shipType" ON "crtRecommendations" ("shipTypeID");
CREATE INDEX "crtRecommendations_crtRecommendations_IX_certifica" ON "crtRecommendations" ("certificateID");
CREATE INDEX "crtRecommendations_crtRecommendations_IX_shipType" ON "crtRecommendations" ("shipTypeID");
CREATE INDEX "crtRelationships_IX_child" ON "crtRelationships" ("childID");
CREATE INDEX "crtRelationships_IX_parent" ON "crtRelationships" ("parentID");
CREATE INDEX "crtRelationships_IX_parentTypeID" ON "crtRelationships" ("parentTypeID");
CREATE INDEX "crtRelationships_crtRelationships_IX_child" ON "crtRelationships" ("childID");
CREATE INDEX "crtRelationships_crtRelationships_IX_parent" ON "crtRelationships" ("parentID");
CREATE INDEX denormalize_index ON denormalize (solarSystemID,constellationID,regionID);
CREATE INDEX "dgmAttributeTypes_IX_categoryID" ON "dgmAttributeTypes" ("categoryID");
CREATE INDEX "dgmAttributeTypes_IX_iconID" ON "dgmAttributeTypes" ("iconID");
CREATE INDEX "dgmAttributeTypes_IX_unitID" ON "dgmAttributeTypes" ("unitID");
CREATE INDEX "dgmEffects_IX_dischargeAttributeID" ON "dgmEffects" ("dischargeAttributeID");
CREATE INDEX "dgmEffects_IX_durationAttributeID" ON "dgmEffects" ("durationAttributeID");
CREATE INDEX "dgmEffects_IX_falloffAttributeID" ON "dgmEffects" ("falloffAttributeID");
CREATE INDEX "dgmEffects_IX_fittingUsageChanceAttributeID" ON "dgmEffects" ("fittingUsageChanceAttributeID");
CREATE INDEX "dgmEffects_IX_iconID" ON "dgmEffects" ("iconID");
CREATE INDEX "dgmEffects_IX_npcActivationChanceAttributeID" ON "dgmEffects" ("npcActivationChanceAttributeID");
CREATE INDEX "dgmEffects_IX_npcUsageChanceAttributeID" ON "dgmEffects" ("npcUsageChanceAttributeID");
CREATE INDEX "dgmEffects_IX_rangeAttributeID" ON "dgmEffects" ("rangeAttributeID");
CREATE INDEX "dgmEffects_IX_trackingSpeedAttributeID" ON "dgmEffects" ("trackingSpeedAttributeID");
CREATE INDEX "dgmTypeEffects_IX_effectID" ON "dgmTypeEffects" ("effectID");
CREATE INDEX "eveGraphics_IX_explosionID" ON "eveGraphics" ("explosionID");
CREATE INDEX "invBlueprintTypes_IX_parentBlueprintTypeID" ON "invBlueprintTypes" ("parentBlueprintTypeID");
CREATE INDEX "invBlueprintTypes_IX_productTypeID" ON "invBlueprintTypes" ("productTypeID");
CREATE INDEX "invCategories_IX_iconID" ON "invCategories" ("iconID");
CREATE INDEX "invGroups_IX_category" ON "invGroups" ("categoryID");
CREATE INDEX "invGroups_IX_iconID" ON "invGroups" ("iconID");
CREATE INDEX "invGroups_invGroups_IX_category" ON "invGroups" ("categoryID");
CREATE INDEX "invMarketGroups_IX_iconID" ON "invMarketGroups" ("iconID");
CREATE INDEX "invMarketGroups_IX_parentGroupID" ON "invMarketGroups" ("parentGroupID");
CREATE INDEX "invMetaGroups_IX_iconID" ON "invMetaGroups" ("iconID");
CREATE INDEX "invMetaTypes_IX_metaGroupID" ON "invMetaTypes" ("metaGroupID");
CREATE INDEX "invMetaTypes_IX_parentTypeID" ON "invMetaTypes" ("parentTypeID");
CREATE INDEX "invTypeMaterials_IX_materialTypeID" ON "invTypeMaterials" ("materialTypeID");
CREATE INDEX "invTypeReactions_IX_typeID" ON "invTypeReactions" ("typeID");
CREATE INDEX "invTypes_IX_Group" ON "invTypes" ("groupID");
CREATE INDEX "invTypes_IX_iconID" ON "invTypes" ("iconID");
CREATE INDEX "invTypes_IX_marketGroupID" ON "invTypes" ("marketGroupID");
CREATE INDEX "invTypes_IX_raceID" ON "invTypes" ("raceID");
CREATE INDEX "invTypes_invTypes_IX_Group" ON "invTypes" ("groupID");
CREATE UNIQUE INDEX "mapConstellations_IX_constellationID" ON "mapConstellations" ("constellationID","regionID");
CREATE INDEX "mapConstellations_IX_factionID" ON "mapConstellations" ("factionID");
CREATE INDEX "mapConstellations_IX_region" ON "mapConstellations" ("regionID");
CREATE INDEX "mapConstellations_mapConstellations_IX_region" ON "mapConstellations" ("regionID");
CREATE INDEX "mapRegions_IX_factionID" ON "mapRegions" ("factionID");
CREATE INDEX "mapSolarSystems_IX_constellation" ON "mapSolarSystems" ("constellationID");
CREATE INDEX "mapSolarSystems_IX_factionID" ON "mapSolarSystems" ("factionID");
CREATE INDEX "mapSolarSystems_IX_region" ON "mapSolarSystems" ("regionID");
CREATE INDEX "mapSolarSystems_IX_security" ON "mapSolarSystems" ("security");
CREATE UNIQUE INDEX "mapSolarSystems_IX_solarSystemID" ON "mapSolarSystems" ("solarSystemID","constellationID","regionID");
CREATE INDEX "mapSolarSystems_IX_sunTypeID" ON "mapSolarSystems" ("sunTypeID");
CREATE INDEX "mapSolarSystems_mapSolarSystems_IX_constellation" ON "mapSolarSystems" ("constellationID");
CREATE INDEX "mapSolarSystems_mapSolarSystems_IX_region" ON "mapSolarSystems" ("regionID");
CREATE INDEX "mapSolarSystems_mapSolarSystems_IX_security" ON "mapSolarSystems" ("security");
CREATE INDEX materials_blueprintTypeID_index ON materials (blueprintTypeID);
CREATE INDEX materials_productTypeID_index ON materials (productTypeID);
CREATE INDEX materials_requiredTypeID_index ON materials (requiredTypeID);
CREATE INDEX "ramInstallationTypeContents_IX_assemblyLineTypeID" ON "ramInstallationTypeContents" ("assemblyLineTypeID");
CREATE INDEX "ramTypeRequirements_IX_activityID" ON "ramTypeRequirements" ("activityID");
CREATE INDEX "ramTypeRequirements_IX_requiredTypeID" ON "ramTypeRequirements" ("requiredTypeID");
CREATE INDEX skills_master_index ON skills_master (skill1,skill2,skill3,skill4,skill5,skill6);
CREATE INDEX skills_tree_ancestor_index ON skills_tree (ancestor);
CREATE INDEX skills_tree_descendant_index ON skills_tree (descendant);
CREATE INDEX "staOperationServices_IX_serviceID" ON "staOperationServices" ("serviceID");
CREATE INDEX "staOperations_IX_activityID" ON "staOperations" ("activityID");
CREATE INDEX "staOperations_IX_amarrStationTypeID" ON "staOperations" ("amarrStationTypeID");
CREATE INDEX "staOperations_IX_caldariStationTypeID" ON "staOperations" ("caldariStationTypeID");
CREATE INDEX "staOperations_IX_gallenteStationTypeID" ON "staOperations" ("gallenteStationTypeID");
CREATE INDEX "staOperations_IX_joveStationTypeID" ON "staOperations" ("joveStationTypeID");
CREATE INDEX "staOperations_IX_minmatarStationTypeID" ON "staOperations" ("minmatarStationTypeID");
CREATE INDEX "staStationTypes_IX_operationID" ON "staStationTypes" ("operationID");
CREATE INDEX "staStations_IX_constellation" ON "staStations" ("constellationID");
CREATE INDEX "staStations_IX_corporation" ON "staStations" ("corporationID");
CREATE INDEX "staStations_IX_operation" ON "staStations" ("operationID");
CREATE INDEX "staStations_IX_region" ON "staStations" ("regionID");
CREATE INDEX "staStations_IX_solarSystemID" ON "staStations" ("solarSystemID","constellationID","regionID");
CREATE INDEX "staStations_IX_system" ON "staStations" ("solarSystemID");
CREATE INDEX "staStations_IX_type" ON "staStations" ("stationTypeID");
CREATE INDEX "staStations_staStations_IX_constellation" ON "staStations" ("constellationID");
CREATE INDEX "staStations_staStations_IX_corporation" ON "staStations" ("corporationID");
CREATE INDEX "staStations_staStations_IX_operation" ON "staStations" ("operationID");
CREATE INDEX "staStations_staStations_IX_region" ON "staStations" ("regionID");
CREATE INDEX "staStations_staStations_IX_system" ON "staStations" ("solarSystemID");
CREATE INDEX "staStations_staStations_IX_type" ON "staStations" ("stationTypeID");
CREATE INDEX "warCombatZoneSystems_IX_combatZoneID" ON "warCombatZoneSystems" ("combatZoneID");
CREATE INDEX "warCombatZones_IX_centerSystemID" ON "warCombatZones" ("centerSystemID");
CREATE INDEX "warCombatZones_IX_factionID" ON "warCombatZones" ("factionID");
