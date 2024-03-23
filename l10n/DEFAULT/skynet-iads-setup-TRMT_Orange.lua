do
--create an instance of the IADS
redIADS = SkynetIADS:create('ORANGE')


--add all units with unit name beginning with 'EWR' to the IADS:
redIADS:addEarlyWarningRadarsByPrefix('ORANGE_EWR')

--add all groups begining with group name 'IADS' to the IADS:
redIADS:addSAMSitesByPrefix('ORANGE_IADS')

--add a command center:
commandCenter = StaticObject.getByName('ORANGE_IADS_COMMANDCENTER')
redIADS:addCommandCenter(commandCenter)


-- Point Defense
local sa15 = redIADS:getSAMSiteByGroupName('ORANGE_IADS_PD_TS2_SA15_1')
redIADS:getSAMSiteByGroupName('ORANGE_IADS_SA2_TS_2'):addPointDefence(sa15)

-- Point Defense
local sa15 = redIADS:getSAMSiteByGroupName('ORANGE_IADS_PD_TS2_SA15_2')
redIADS:getSAMSiteByGroupName('ORANGE_IADS_SA2_TS_2'):addPointDefence(sa15)

--activate the IADS
redIADS:activate()

end
