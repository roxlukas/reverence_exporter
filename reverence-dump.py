import string
from reverence import blue
#variables
EVEPATH = "D:\\EVE\\"

#init
eve = blue.EVE(EVEPATH)
cfg = eve.getconfigmgr()

#IndexRowset - these are simple keyed tables:
#
#  Getting a specific record:
#
#    >>> rec = cfg.invtypes.Get(638)
#
#  Iterating over records (inefficient):
#
#    >>> for row in cfg.eveunits:
#    ...   print row
#    ...
#    Row(unitID:1,unitName:Length,displayName:)
#    Row(unitID:2,unitName:Mass,displayName:kg)
#    Row(unitID:3,unitName:Time,displayName:sec)
#    (etc)

#TABLENAME                    PRIMARY KEY
#    ---------------------------  ------------------
#    invcategories                categoryID         
#    invgroups                    groupID            
#    invmetagroups                metaGroupID        
#    invtypes                     typeID             
#    invbptypes                   blueprintTypeID    
#    dgmattribs                   attributeID        
#    dgmeffects                   effectID           
#    evegraphics                  graphicID          
#    eveunits                     unitID             
#    eveowners                    ownerID            
#    evelocations                 locationID         
#    corptickernames              corporationID      
#    allianceshortnames           allianceID         
#    ramaltypes                   assemblyLineTypeID 
#    ramactivities                activityID
#    ramcompletedstatuses         completedStatusID
#    mapcelestialdescriptions     celestialID
#    certificates                 certificateID
#    certificaterelationships     relationshipID
#    locationwormholeclasses      locationID

blue.EVE.getconfigmgr()

def makeInsertsFromRowset(obj, table):
        for row in obj:
                s = "INSERT INTO "+str(table)+" VALUES ("
                for field in cfg.invtypes.header:
                        tmp = str(row[field])
                        tmp = string.replace(tmp, "\"", "\\\"");
                        s = s + '"' + tmp + '",'
                s = s[:-1] + ');' #remove trailing "," and add ");"
                
                s = string.replace(s, "\"None\"", "NULL") #replace None with NULL
                s = string.replace(s, "False", "0") #replace False with 0
                s = string.replace(s, "True", "1") #replace True with 1
                print s

def makeColumnNamesComment(obj):
        #print "--",obj.__guid__
        print "--",obj.header


print "--invcategories"
makeColumnNamesComment(cfg.invcategories);
print "--invgroups"
makeColumnNamesComment(cfg.invgroups);
print "--invmetagroups"
makeColumnNamesComment(cfg.invmetagroups);
print "--invtypes"
makeColumnNamesComment(cfg.invtypes);
print "--invbptypes"
makeColumnNamesComment(cfg.invbptypes);
print "--dgmattribs"
makeColumnNamesComment(cfg.dgmattribs);
print "--dgmeffects"
makeColumnNamesComment(cfg.dgmeffects);
print "--eveowners"
makeColumnNamesComment(cfg.eveowners);
print "--evelocations"
makeColumnNamesComment(cfg.evelocations);
print "--corptickernames"
makeColumnNamesComment(cfg.corptickernames);
print "--ramaltypes"
makeColumnNamesComment(cfg.ramaltypes);
print "--ramactivities"
makeColumnNamesComment(cfg.ramactivities);
print "--ramcompletedstatuses"
makeColumnNamesComment(cfg.ramcompletedstatuses);
print "--mapcelestialdescriptions"
makeColumnNamesComment(cfg.mapcelestialdescriptions);
print "--certificates"
makeColumnNamesComment(cfg.certificates);
print "--certificaterelationships"
makeColumnNamesComment(cfg.certificaterelationships);
print "--locationwormholeclasses"
makeColumnNamesComment(cfg.locationwormholeclasses);

#makeInsertsFromRowset(cfg.invtypes,"invTypes")
