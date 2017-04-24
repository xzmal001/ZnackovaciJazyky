<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/">
	{
		<xsl:for-each select="gameInfo">
			"gameInfo": {
				"id": "<xsl:value-of select="gameInfo/@id" />"
				"name": "<xsl:value-of select="gameInfo/name" />",
				"publisher": "<xsl:value-of select="gameInfo/publisher" />",
				"state": "<xsl:value-of select="gameInfo/state" />",
				<xsl:for-each select="distribution">
					"distribution": 
					{
						"region": "<xsl:value-of select="gameInfo/@region" />",
						"digital": "<xsl:value-of select="gameInfo/digital" />",
						"box": "<xsl:value-of select="gameInfo/box" />"
					}</xsl:for-each>,
				"genre": "<xsl:value-of select="gameInfo/genre" />",
				"singleplayer": "<xsl:value-of select="gameInfo/singleplayer" />",
				"multiplayer": "<xsl:value-of select="gameInfo/multiplayer" />",
				"localization": "<xsl:value-of select="gameInfo/localization" />",
				"subtitles": {
					"language": "<xsl:value-of select="gameInfo/subtitles/@language" />"
					},
				"platforms": {
					"exclusive": "<xsl:value-of select="gameInfo/platforms/@exclusive" />",
					"PC": "<xsl:value-of select="gameInfo/platforms/PC" />",
					"xone": "<xsl:value-of select="gameInfo/platforms/xone" />",
					"x360": "<xsl:value-of select="gameInfo/platforms/x360" />",
					"xKinect": "<xsl:value-of select="gameInfo/platforms/xKinect" />",
					"ps3": "<xsl:value-of select="gameInfo/platforms/ps3" />",
					"ps4": "<xsl:value-of select="gameInfo/platforms/ps4" />",
					"psMove": "<xsl:value-of select="gameInfo/platforms/psMove" />",
					"psVita": "<xsl:value-of select="gameInfo/platforms/psVita" />",
					"psVR": "<xsl:value-of select="gameInfo/platforms/psVR" />",
					"nintendo": "<xsl:value-of select="gameInfo/platforms/nintendo" />"
					},
				"hwRequirements": {
					"processor": "<xsl:value-of select="gameInfo/hwRequirements/processor" />",
					"GPU": "<xsl:value-of select="gameInfo/hwRequirements/GPU" />",
					"RAM": "<xsl:value-of select="gameInfo/hwRequirements/RAM" />",
					"HDD": "<xsl:value-of select="gameInfo/hwRequirements/HDD" />",
					"internetConnection": "<xsl:value-of select="gameInfo/hwRequirements/internetConnection" />"
					},
				"pegiInfo": {
					"forAdults": "<xsl:value-of select="gameInfo/pegiInfo/@forAdults" />",
					"violence": "<xsl:value-of select="gameInfo/pegiInfo/violence" />",
					"badLanguage": "<xsl:value-of select="gameInfo/pegiInfo/badLanguage" />",
					"fear": "<xsl:value-of select="gameInfo/pegiInfo/fear" />",
					"sex": "<xsl:value-of select="gameInfo/pegiInfo/sex" />",
					"drugs": "<xsl:value-of select="gameInfo/pegiInfo/drugs" />",
					"discrimination": "<xsl:value-of select="gameInfo/pegiInfo/discrimination" />",
					"gambling": "<xsl:value-of select="gameInfo/pegiInfo/gambling" />",
					"onlineGame": "<xsl:value-of select="gameInfo/pegiInfo/onlineGame" />"
					},
				"edition": "<xsl:value-of select="gameInfo/edition" />",
				"discount": {
					"@enabled": "<xsl:value-of select="gameInfo/discount/@enabled" />",
					},
				<xsl:for-each select="price">
					"price": 
					{
						"currency": "<xsl:value-of select="gameInfo/price/@currency" />",
					}</xsl:for-each>,
				"stock": "<xsl:value-of select="gameInfo/stock" />",
				<xsl:for-each select="price">
					"atTheBranch":
					{
						"city": "<xsl:value-of select="gameInfo/atTheBranch/city" />",
					}</xsl:for-each>,
				"bonusPack": "<xsl:value-of select="gameInfo/bonusPack" />",
				"rating": {
					"@min": "<xsl:value-of select="gameInfo/rating/@min" />",
					"@max": "<xsl:value-of select="gameInfo/rating/@max" />",
					},
				"description": "<xsl:value-of select="gameInfo/description" />",
				"preOwned": "<xsl:value-of select="gameInfo/preOwned" />",
				"guarantee": "<xsl:value-of select="gameInfo/guarantee" />",
				"lastBuy": {
					"@unit": "<xsl:value-of select="gameInfo/lastBuy/@unit" />",
					}
		}
		</xsl:for-each>
	}
	</xsl:template>
</xsl:stylesheet>