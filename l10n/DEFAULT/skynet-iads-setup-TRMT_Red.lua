do
--create an instance of the IADS
redIADS = SkynetIADS:create('RED')


--add all units with unit name beginning with 'EWR' to the IADS:
redIADS:addEarlyWarningRadarsByPrefix('RED_EWR')

--add all groups begining with group name 'IADS' to the IADS:
redIADS:addSAMSitesByPrefix('RED_IADS')

--add a command center:
commandCenter = StaticObject.getByName('RED_IADS_COMMANDCENTER')
redIADS:addCommandCenter(commandCenter)


-- Point Defense
--local sa15 = redIADS:getSAMSiteByGroupName('RED_IADS_PD_TS2_SA15_1')
--redIADS:getSAMSiteByGroupName('RED_IADS_SA2_TS_2'):addPointDefence(sa15)

-- Point Defense
--local sa15 = redIADS:getSAMSiteByGroupName('RED_IADS_PD_TS2_SA15_2')
--redIADS:getSAMSiteByGroupName('RED_IADS_SA2_TS_2'):addPointDefence(sa15)

--activate the IADS
redIADS:activate()

end
