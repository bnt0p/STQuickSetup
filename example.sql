--
-- Table structure for table `PlayerRecords`
--

DROP TABLE IF EXISTS `PlayerRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PlayerRecords` (
  `MapName` varchar(255) NOT NULL,
  `SteamID` varchar(20) NOT NULL,
  `PlayerName` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TimerTicks` int DEFAULT NULL,
  `FormattedTime` varchar(255) DEFAULT NULL,
  `UnixStamp` int DEFAULT NULL,
  `TimesFinished` int DEFAULT NULL,
  `LastFinished` int DEFAULT NULL,
  `Style` int NOT NULL,
  `Mode` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`MapName`,`SteamID`,`Style`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PlayerStageTimes`
--

DROP TABLE IF EXISTS `PlayerStageTimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PlayerStageTimes` (
  `MapName` varchar(255) NOT NULL,
  `SteamID` varchar(20) NOT NULL,
  `PlayerName` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Stage` int NOT NULL,
  `TimerTicks` int DEFAULT NULL,
  `FormattedTime` varchar(255) DEFAULT NULL,
  `Velocity` varchar(255) DEFAULT NULL,
  `Style` int DEFAULT '0',
  `Mode` varchar(24) DEFAULT '',
  PRIMARY KEY (`MapName`,`SteamID`,`Stage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PlayerStageTimes`
--

--
-- Table structure for table `PlayerStats`
--

DROP TABLE IF EXISTS `PlayerStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PlayerStats` (
  `SteamID` varchar(20) NOT NULL,
  `PlayerName` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TimesConnected` int DEFAULT NULL,
  `LastConnected` int DEFAULT NULL,
  `GlobalPoints` int DEFAULT NULL,
  `HideTimerHud` tinyint(1) DEFAULT NULL,
  `HideKeys` tinyint(1) DEFAULT NULL,
  `HideJS` tinyint(1) DEFAULT NULL,
  `SoundsEnabled` tinyint(1) DEFAULT NULL,
  `PlayerFov` int DEFAULT NULL,
  `IsVip` tinyint(1) DEFAULT NULL,
  `BigGifID` varchar(16) DEFAULT NULL,
  `HidePlayers` tinyint(1) DEFAULT '0',
  `HideWeapon` tinyint(1) DEFAULT '0',
  `Mode` varchar(24) DEFAULT 'None',
  `HideChatSpeed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`SteamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

