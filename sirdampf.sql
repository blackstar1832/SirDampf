-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 15. Jul 2016 um 17:33
-- Server-Version: 10.1.13-MariaDB
-- PHP-Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `sirdampf`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `akkutraegernboxmods`
--

CREATE TABLE `akkutraegernboxmods` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `kurzbeschreibung` text NOT NULL,
  `beschreibung` text NOT NULL,
  `technischeDaten` text NOT NULL,
  `preis` text NOT NULL,
  `bewertung` int(11) NOT NULL,
  `marke` text NOT NULL,
  `bild` text NOT NULL,
  `typ` text NOT NULL,
  `watt` int(11) NOT NULL,
  `gewinde` text NOT NULL,
  `anzahlAkkus` int(11) NOT NULL,
  `modi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `akkutraegernboxmods`
--

INSERT INTO `akkutraegernboxmods` (`id`, `name`, `kurzbeschreibung`, `beschreibung`, `technischeDaten`, `preis`, `bewertung`, `marke`, `bild`, `typ`, `watt`, `gewinde`, `anzahlAkkus`, `modi`) VALUES
(9, 'Joyetech eVic VTC Mini 75 Watt', '', 'Joyetech eVic-VTC Mini 75W Expresskit/ Starterkit\r\n\r\nDie Erfolgsgeschichte der eVic geht in die nächste Runde. Mit dem Nachfolger der eVic-VT präsentiert Joyetech ihren Bestseller im handlichen Kleinformat und mit neuen Features ausgestattet. Die eVic VTC Mini wird mit wechselbarem 18650er Akku betrieben und wurde um einen weiteren Dampfmodus (Bypass) ergänzt. Zudem plant Joyetech für dieses Modell Upgrades zur Verfügung zu stellen, so dass die Box immer auf dem neuesten Stand bleibt.\r\n\r\nTrotz seiner geringen Baugröße hat die Box an Funktionalität und Leistung nichts eingebüßt: So bietet auch die eVic VTC Mini ein Leistungsspektrum von 1 - 75 Watt und eine ausgereifte Temperatursteuerung, die sowohl Nickel- als auch Titancoils unterstützt. Dry Hits und unangenehm heißer Dampf gehören damit der Vergangenheit an. Diese Features steigern das Dampferlebnis merklich. Zudem werden die Sicherheit beim Subohmdampfen, die Laufzeit des Akkus und auch die Lebensdauer der Verdampfereinheit erhöht.\r\n\r\nWie schon sein Vorgänger bietet auch die eVic VTC Mini ein großes Display, auf dem eine Fülle von Information sehr gut leserlich dargestellt sind. Betrieben wird die Box mit einem 18650er Akku. Der Magnetverschlusses ermöglicht einen schnellen und bequemen Akkuwechsel. Alternativ kann der Akku auch ohne ein Ausbau über das mitgelieferte Micro-USB geladen werden.\r\n\r\nDie eVic VTC Mini bildet mit dem eGo ONE Mega Verdampfer eine perfekte Einheit (optional, im Starterkit enthalten).\r\n\r\nDer eGo ONE Mega Verdampfer bietet ein großzügiges Füllvolumen von 4ml und ist dank der mitgelieferten Titan- und Nickelcoils sofort einsatzbereit für temperaturgeregeltes Dampfen. Größtmögliche Wahlfreiheit wird durch die separat erhältlichen eGo ONe Fertigcoils (0,5 Ohm und 1 Ohm) und den RBA-Einsatz erreicht, der die Möglichkeit bietet eine eigene Wicklung zu verwenden, ohne sich einen Selbstwickelverdampfer kaufen zu müssen.\r\n\r\nFeatures:\r\n- Temp Control im VT-Modus (unterstützt Nickel- und Titancoils)\r\n- VW Modus 1 -75 Watt\r\n- Upgradefähig\r\n- wechselbarer 18650er Akku\r\n- handliches Kleinformat\r\n- stylische Farben\r\n- großes Display\r\n- im Set mit eGo ONE Mega Verdampfer (optional)\r\n\r\nTechnische Daten eVic VTC Mini:\r\nMaße: 82mm x 38.2mm x 22.2mm\r\nDampfmodi: VT-Ti (Titan) / VT-Ni (Nickel 200) / VW / Bypass\r\nAusgangsleistung: 1.0 W bis 75 W\r\nmögl. Widerstand Watt Modus: 0.15 - 3.5 Ohm\r\nmögl. Widerstand Temp Modus: 0,05 - 1.0 Ohm\r\nTemperaturbereich: 100 - 315° Celsius bzw.  200 - 600° Fahrenheit\r\nAkku: 1* 18650 (nicht im Lieferumfang enthalten)\r\nSicherheit / Schutzschaltungen: Temp Control, Überhitzung, Tiefenentladung, Kurzschluss, Überspannung\r\nAnschluss: 510er Anschluss\r\nPluspol: gefedert\r\n', '', '52.95', 5, 'Joyetech', 'http://localhost/SirDampf/Bilder/joyetechEvicVTCMini.jpg', 'Box', 75, '510er', 1, 'TC');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ezigaretten`
--

CREATE TABLE `ezigaretten` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `kurzbeschreibung` text NOT NULL,
  `beschreibung` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `technischeDaten` text NOT NULL,
  `preis` double NOT NULL,
  `bewertung` int(11) NOT NULL,
  `marke` text NOT NULL,
  `bild` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `ezigaretten`
--

INSERT INTO `ezigaretten` (`id`, `name`, `kurzbeschreibung`, `beschreibung`, `technischeDaten`, `preis`, `bewertung`, `marke`, `bild`) VALUES
(20, 'Aspire K2 Quickstart Kit', 'Das Aspire K2 Quickstart Kit lässt in Sachen Bedienerfreundlichkeit und Geschmack für Neueinsteiger und erfahrene Dampfer keine Wünsche offen.', 'Aspire K2 Quickstart Kit</br></br>\r\n\r\nDas Aspire K2 Quickstart Kit lässt in Sachen Bedienerfreundlichkeit und Geschmack für Neueinsteiger und erfahrene Dampfer keine Wünsche offen. Das ganze natürlich in der gewohnt hervorragender Qualität von Aspire.</br></br>\r\n\r\nDer K2 Tank fasst 1,8 ml Liquid, hat einen in Edelstahl gefassten Glastank und lässt sich zum Reinigen sich vollständig zerlegen.</br></br>\r\n\r\nDie Verdampfereinheiten, mit einem auf 1,6 Ohm Widerstand gewickelten Kanthaldraht um organischer Baumwolle, sorgen für den gewohnt klaren Geschmack und sind einfach zu wechseln.</br></br>\r\n\r\nDer K2 Akku besitzt eine Kapazität von 800mA und ist mit der typischen 5-Klick Schaltung sowie allen üblichen Sicherheitsfeatures ausgestattet.</br></br>\r\n\r\nAlle Teile sind aus Edelstahl gefertigt und die Akkuhülse wurde zusätzlich noch mit Karbon beschichtet. Dies gibt dem K2 Akku ein unvergleichliches Design und macht ihn sehr robust und widerstandsfähig.</br></br>\r\n\r\nGeladen wird der Akku über das mitgelieferte Micro-USB-Kabel.</br></br>\r\n\r\nDie passenden Verdampfereinheiten finden Sie hier in unserem Shop.</br></br>\r\n\r\nAchtung:</br>\r\n- Auf Akkus 2 Monate Garantie, ausgenommen Verschleiß, natürliche Abnutzung, Kapazitätsverlus sowie unsachgemäßer Umgang.</br>\r\n- Der Verdampfer ist ein Einwegprodukt bzw. Hygieneartikel (versiegelt/verschweißt) ohne Garantie.', 'Features:</br>\r\n- Fassungsvermögen ca. 1,8ml</br>\r\n- kein Siffen (Auslaufen von Liquid)</br>\r\n- hohe Dampfentwicklung</br>\r\n- perfektes Aroma</br>\r\n- leichtes Befüllen</br>\r\n- komplett aus Edelstahl und Glas</br>\r\n- wechselbarer 510er Edelstahl-DripTip</br></br>\r\n\r\nTechnische Daten K2-Akku 800mA:</br>\r\nFarbe: je nach Auswahl</br>\r\nAnschluss: 510 (mit Luftkanälen)</br>\r\nDurchmesser: 15 mm</br>\r\nLänge: 84 mm</br>\r\nKapazität: 800mA</br>\r\nSicherheit: 5 Klick-Abschaltung, 10 </br>\r\nSekundenabschaltung bei dauergedrückten Akkuknopf, Schutz gegen Kurzschluss\r\nAufladedauer: ca. 2h - 5h (Bei Erstinbetriebnahme ca. 6h)</br></br>\r\n\r\nTechnische Daten Aspire K2-Tankverdampfer:</br>\r\nMaterial: Edelstahl, Glas-Tank </br>\r\nVerdampfereinheit: Kanthal / organische Baumwolle</br>\r\nWiderstand: 1,6 Ohm </br>\r\nDurchmesser: 15,0mm</br>\r\nLänge: 59,0mm (mit DripTip)</br>\r\nFassungsvermögen: ca. 1,8ml</br>\r\nLieferumfang:</br>\r\n1 x K2 Akku 800mAh</br>\r\n1 x K2 Tankverdampfer (inkl. 1,6 Ohm Kanthalcoil vorinstalliert)</br>\r\n1 x Ersatzverdampfereinheit 1,6 Ohm Kanthalcoil</br>\r\n1 x Micro USB Kabel</br></br>\r\n', 34.95, 4, 'Aspire', 'http://localhost/SirDampf/Bilder/aspirequickstartkit.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `liquid`
--

CREATE TABLE `liquid` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `kurzbeschreibung` text NOT NULL,
  `beschreibung` text NOT NULL,
  `technischeDaten` text NOT NULL,
  `preis` double NOT NULL,
  `bewertung` int(11) NOT NULL,
  `marke` text NOT NULL,
  `bild` text NOT NULL,
  `geschmack` text NOT NULL,
  `groesse` int(11) NOT NULL,
  `nikotin` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `liquid`
--

INSERT INTO `liquid` (`id`, `name`, `kurzbeschreibung`, `beschreibung`, `technischeDaten`, `preis`, `bewertung`, `marke`, `bild`, `geschmack`, `groesse`, `nikotin`) VALUES
(8, '13 Sins Jack 3 Liquid', '', 'Jack 3 Liquid vom englischen Premium Hersteller 13 Sins.\r\n\r\nDas Jack 3 Liquid hat einen kraftvollen Toffee Geschmack, mit edlen Noten von Banane, Kokusnuss und Karamell. Hinzu kommt ein leicht sahniger Geschmack, der mit einem Hauch Himbeere verfeinert wurde! Alles zusammen bildet ein einmaliges Geschmackserlebnis.\r\n\r\nDie Liquid Flasche aus aromaechtem Glas verfügt über eine Glaspiette zur leichten Dosierung sowie einem Sicherheitsverschluss.\r\n\r\nDer englische Premium Liquidhersteller 13 Sins stellt edle und hochwertige Liquids der Extraklasse her! Erlesene, perfekt aufeinander abgestimme Aromenkombinationen garantieren hier ausgezeichnete Resultate in Bezug auf Geschmack und Dampferlebnis.\r\n\r\n13 Sins - Immer eine Sünde Wert!\r\n\r\nDie Inhaltsstoffe setzen sich wie folgt zusammen:\r\n\r\nBasis 40% Propylenglycol (E 1520), 60% Pflanzliches Glycerin (E 422) sowie hochwertige Lebensmittelaromen und einem Nikotinanteil je nach Auswahl von 0mg (0,0%), 3mg (0,3%), 6mg (0,6%) oder 12mg (1,2%)', '', 22.95, 2, '13 Sins', 'http://localhost/SirDampf/Bilder/13SinsJack3Liquid.jpg\r\n', 'fruchtig', 30, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mischen`
--

CREATE TABLE `mischen` (
  `id` int(11) NOT NULL,
  `kategorie` text NOT NULL,
  `name` text NOT NULL,
  `kurzbeschreibung` text NOT NULL,
  `beschreibung` text NOT NULL,
  `technischeDaten` text NOT NULL,
  `preis` float NOT NULL,
  `bewertung` int(11) NOT NULL,
  `marke` text NOT NULL,
  `bild` text NOT NULL,
  `geschmack` text,
  `groesse` int(11) DEFAULT NULL,
  `basenVerhaeltnis` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `mischen`
--

INSERT INTO `mischen` (`id`, `kategorie`, `name`, `kurzbeschreibung`, `beschreibung`, `technischeDaten`, `preis`, `bewertung`, `marke`, `bild`, `geschmack`, `groesse`, `basenVerhaeltnis`) VALUES
(5, 'basen', 'Avoria Liquid Basis 3mg/ml', '', 'Selbst zu mischen wird nur erfahrenen Dampfern empfohlen! Sofern Sie das Dampfen ausprobieren möchten, oder sich noch nicht lange mit der Thematik beschäftigt haben, empfehlen wir Ihnen unsere Fertigliquids.\r\n\r\nUnsere Basisliquids sind ein Teil der Ausrüstung, die Sie brauchen, wenn Sie ihr Liquid selbst mischen wollen. Das Basisliquid enthält kein Aroma und hat daher keinen Geschmack. Unter Aromen bieten wir Aromen von Flavourart und Inawera an.\r\n\r\nLieferumfang\r\n\r\nAlle Basisliquids werden in braunen PET-Flaschen mit kindersicherem Verschluß geliefert.\r\n\r\nNikotinangaben\r\n\r\nDie Nikotinangaben beziehen sich immer auf den Gehalt pro Milliliter. Beispielweise enthält ein Milliliter 18er Basislöung 18mg (~ 18 Mikroliter = 1,8 Volumen-%) Nikotin. 100 ml Basislösung enthalten somit ~ 1,8g Nikotin.\r\n\r\nBeispiele zum selbst mischen\r\n\r\nMischt man bspw. das Basisliquid mit 18 mg 50:50 mit nikotinfreiem Liquid so erhält man ein Liquid mit 9 mg. Eine ausführlichere Anleitung zum Mischen finden Sie hier. ', '', 6.95, 4, 'Avoria', 'http://localhost/SirDampf/Bilder/avoriaBase3mg.jpg', NULL, 100, 'VPG(55/25/10)'),
(6, 'aromen', 'Twisted Apple Cinnamon Fritter', '', 'Apple Cinnamon Fritter\r\n\r\nDie perfekte Kombination aus Apfel und Zimt mit einer leichten Vanille-Note.\r\nDosierempfehlung des Herstellers: 12 - 16 %\r\n\r\n \r\n\r\nPackungsgröße:\r\n10 ml - damit können mind. 50 ml Liquid gemischt werden (Zugabe von höchstens 20 % Aroma)\r\nLieferumfang:\r\nBraunglasflasche mit Kindersicherung und Originalitätsverschluss.\r\n\r\n\r\nAchtung: Die Aromen dürfen nicht pur gedampft werden!', '', 4.95, 3, 'Twisted', 'http://localhost/SirDampf/Bilder/twistedAroma.jpg', 'fruchtig', 10, NULL),
(7, 'zubehoer', '5x Spritze 2ml', '', '5 x Spritze 2 ml\r\n\r\nDie 2 ml Spritze ist optimal zur Dosierung von mentholhaltigen Aromen geeignet.\r\nDie 2 ml Spritzen sind steril verpackt und latexfrei. \r\n \r\n\r\nGraduierung:\r\n\r\n0,1 ml\r\n\r\nLieferumfang:\r\n\r\n5 x  2 ml Spritze  (einzeln steril verpackt)', '', 0.95, 4, 'microlance', 'http://localhost/SirDampf/Bilder/spritze2ml.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `kundennummer` int(11) NOT NULL,
  `passwort` text NOT NULL,
  `email` text NOT NULL,
  `adresse` text NOT NULL,
  `zahlart` text,
  `telefon` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`kundennummer`, `passwort`, `email`, `adresse`, `zahlart`, `telefon`) VALUES
(1, 'isset(', 'nicopaul49@googlemail.com', '{"name": $vorname, "nachname": $nachname}', NULL, NULL),
(2, 'deineMutterKannManLesen', 'Nicopaul11@yahoo.de', '{"Vorname":"Nico","Nachname":"Paul","Strasse":"In den Ziegelg\\u00e4rten","Plz":"67063","Stadt":"Ludwigshafen"}', NULL, NULL),
(3, 'adadadad', 'adadad@googlemail.com', '{"Vorname":"Nico","Nachname":"Paul","Strasse":"M\\u00f6nchstr.","Plz":"70191","Stadt":"Stuttgart"}', NULL, NULL),
(4, 'asdf', 'afsfasss@googlemail.com', '{"Vorname":"Nico","Nachname":"Paul","Strasse":"M\\u00f6nchstr. 25","Plz":"68336","Stadt":"Ludwigshafen"}', NULL, NULL),
(5, 'sf', 'sf', '{"Vorname":"sf","Nachname":"sf","Strasse":"sf","Plz":"sf","Stadt":"sf"}', NULL, NULL),
(6, '12345', 'nipa@gmx.de', '{"Vorname":"Jean-Pierre Juan","Nachname":"pa","Strasse":"nipa","Plz":"pani","Stadt":"napi"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `verdampfer`
--

CREATE TABLE `verdampfer` (
  `id` int(11) NOT NULL,
  `kategorie` text NOT NULL,
  `name` text NOT NULL,
  `kurzbeschreibung` text NOT NULL,
  `beschreibung` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `technischeDaten` text NOT NULL,
  `preis` float NOT NULL,
  `bewertung` int(11) NOT NULL,
  `marke` text NOT NULL,
  `bild` text NOT NULL,
  `gewinde` text,
  `tank` double DEFAULT NULL,
  `ohmwert` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `verdampfer`
--

INSERT INTO `verdampfer` (`id`, `kategorie`, `name`, `kurzbeschreibung`, `beschreibung`, `technischeDaten`, `preis`, `bewertung`, `marke`, `bild`, `gewinde`, `tank`, `ohmwert`) VALUES
(1, 'selbstwickelverdampfer', 'Taifun GT II', 'Der Taifun GT II von SmokerStore ist ein Selbstwickelverdampfer mit einem Tankvolumen von 5 ml.', 'Der Taifun GT II von SmokerStore! Der Nachfolger des sehr beliebten Taifun GT wurde an vielen Stellen verbessert und weiterentwickelt. Herausgekommen ist ein Highend Selbstwickelverdampfer, der keine W?nsche mehr offen l?sst. Der Taifun GT II wird in Deutschland gefertigt und besteht fast komplett aus Edelstahl, der Tank hat einen Einsatz aus Echtglas.\r\n\r\nDer Luftzug wird ?ber den au?enliegenden AFC-Ring gesteuert. Der Taifun GT II verf?gt nun ?ber eine 3mm Innenbohrung (um den Luftzug noch besser regulieren zu k?nnen liegt ein R?hrchen bei um die Bohrung auf 2mm zu verkleinern). Der Liquidnachfluss wird ?ber den stufenlos einstellbaren Kammerdeckel geregelt.\r\n\r\nDurch die absenkbare Verdampferkammer ist der Taifun GT II mit allen Materialien (Silikat, Glasfaser, Watt und ESS) einfach zu wickeln. Ebenso wird ein schneller Blick auf die Polschrauben und die Wicklung erm?glicht. Der verstellbare Pluspol vermeidet Kontaktproblemen und sorgt f?r eine zuverl?ssige Verbindung zwischen Verdampfer und Akkutr?ger. Nachf?llen l?sst sich der Taifun GT II genau so einfach, wie er auch sonst zu handhaben ist und es werden dabei keine d?nnen Aufs?tze bei den Liquids ben?tigt.', '', 139.95, 5, 'SmokerStore', 'http://localhost/SirDampf/Bilder/TaifunGT2.png', '510er', 5, NULL),
(2, 'selbstwickelverdampfer', 'Eleaf Lemo 3 RTA', 'Der Eleaf Lemo 3 RTA ist ein selbstwickelverdampfer mit 4ml Tankvolumen.', 'Der Chinesische Hersteller Eleaf hat sich den Lemo 2 vorgenommen und komplett ?berarbeitet. Zum Vorschein kam nun ein absolut einwandfreier Selbstwickelverdampfer. Auf den ersten Blick sticht das aufgepeppte Design ins Auge.\r\n\r\nDas Deck kommt in einem etwas anderem zwei Posten Design, die Schrauben zur Befestigung der Dr?hte werden senkrecht in die Posten geschraubt. Zus?tzlich sind hier keine herk?mmlichen runden Bohrungen vorzufinden, sondern l?ngliche Einfr?sungen. Dadurch ist gen?gend Platz f?r dicke Dr?hte wie z.B. Clapton Coils. Ein gro?er Luftschlitz versorgt beide Seiten mit ausreichend Luft, eine Dual Airflow an der Base sch?pft das volle Potenzial aus. Um ?berhaupt an das Deck zu gelangen muss nat?rlich der Kamin abgenommen werden. Der wird aber nicht wie gewohnt mit einem Gewinde aufgeschraubt, sondern mit zwei kleinen Schrauben an der Seite befestigt.\r\n\r\nNun kommen wir zum interessanten Part des Verdampfers. Der Melo 3 RTA ist n?mlich nicht nur ein reiner Selbstwickler, sondern besitzt ebenfalls ein Deck f?r Verdampferk?pfe! Auf der Unterseite wird das Deck mit zwei Schrauben an der Base befestigt, l?st man diese kann ganz einfach das Verdampferkopf Deck eingesetzt werden. Damit man dieses Feature ausprobieren kann, hat Eleaf zwei Verdampferk?pfe mit in die Box gelegt!\r\n\r\nDank diesem genialem Aufbau kann der Verdampfer spielend einfach in seine Einzelteile zerlegt werden, was eine schnelle Reinigung erm?glicht. Eine schnelle in Betriebnahme ist garantiert, mit an Bord sind 2 Clapton Coils, 1 Kreuzschlitzschraubenzieher, 1 Wattepad, 1 gr?nes Vaper Band, s?mtliche Ersatzteile und 1 Vape Tweezer (Keramikzange).', '', 41.95, 4, 'Eleaf', 'http://localhost/SirDampf/Bilder/eLeafLemo.jpg', '510er', 4, NULL),
(3, 'coilverdampfer', 'Joeyetech Cubis Tank Verdampfer', 'Der Joyetech Cubis ist ein edler Verdampfer mit einer Dampfleistung von 8 bis 30 Watt und einem Tankvolumen von 3,5ml.', 'Der Joyetech Cubis ist ein edler Verdampfer mit einer Dampfleistung von 8 bis 30 Watt, einem Tankvolumen von 3,5ml und einer stufenlos verstellbaren Zugluftregulierung. \r\nDurch die großen Sichtfenster haben sie den Füllstand jederzeit im Blick. Ausgestattet mit einem Top-Fill-System ist das Nachfüllen von Liquid beim Cubis ein Kinderspiel. Der Coil bleibt dabei nicht an der Base, sondern wird als Einheit mit dem Drip Tip und der Airflow Control aus dem Tank gezogen. So ist ein Auslaufen oder Siffen durch den am Boden geschlossenen Tank systemtechnisch ausgeschlossen.\r\n \r\nZusammen mit dem Cubis Verdampfer hat Joyetech neue BF Verdampfereinheiten auf den Markt gebracht.\r\nDas Kit enthält drei Verdampfereinheiten, den BF SS316 in 1.0 Ohm und 0.5 Ohm, sowie den BF Clapton Coil mit 1,5 Ohm und ist damit, auch für temperaturgesteuertes Dampfen, sofort einsatzbereit. Der SS316 Edelstahldraht wird von der eVic-VTC Mini ab Softwarestand 2.0 unterstützt. \r\n\r\nDie passenden Verdampfereinheiten finden Sie hier in unserem Shop.', '', 18.95, 5, 'Joyetech', 'http://localhost/SirDampf/Bilder/joyetechCubis.jpg', '510er', 3.5, NULL),
(4, 'coilverdampferkoepfe', '5er Coilhead-Set Joyetech Cubis/Cuboid (0,5 Ohm)', 'Die Joyetech BF Coils überzeugen durch sehr gute Dampfeigenschaften und sind in unterschiedlichen Varianten erhältlich.\r\nKategorie: Joyetech eVic-VT', 'Die Joyetech BF Coils überzeugen durch sehr gute Dampfeigenschaften und sind in unterschiedlichen Varianten erhältlich.\r\n\r\n<strong>BF SS316 Edelstahl 0.5 Ohm Coil:</strong>\r\n- Widerstand: 0.5 Ohm (15 - 30 Watt)\r\n- vorwiegend geeignet für Temperaturmodus, auch im Wattmodus verwendbar\r\n- vertikal gewickelt, langlebig, sehr gute Dampfentwicklung im Temperaturmodus\r\n\r\nKompatibel mit dem Joyetech Cubis Verdampfer, dem eVic VTC Mini Cubis Full Kit der AIO, Aio D16, Aio D22 und dem Cuboid Mini aus unserem Shop.\r\nAchtung:\r\n\r\nDie Verdampfereinheit ist ein Einwegprodukt ohne Garantie "TAWA / EINWEG".', '', 9.95, 4, 'Joyetech', 'http://localhost/SirDampf/Bilder/joyetechCubisCoils.jpg', NULL, NULL, 0.5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wickelzubehoer`
--

CREATE TABLE `wickelzubehoer` (
  `id` int(11) NOT NULL,
  `kategorie` text NOT NULL,
  `name` text NOT NULL,
  `kurzbeschreibung` text NOT NULL,
  `beschreibung` text NOT NULL,
  `technischeDaten` text NOT NULL,
  `preis` double NOT NULL,
  `bewertung` int(11) NOT NULL,
  `marke` text NOT NULL,
  `bild` text NOT NULL,
  `material` text,
  `durchmesser` double DEFAULT NULL,
  `laenge` double DEFAULT NULL,
  `wickelkit` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `wickelzubehoer`
--

INSERT INTO `wickelzubehoer` (`id`, `kategorie`, `name`, `kurzbeschreibung`, `beschreibung`, `technischeDaten`, `preis`, `bewertung`, `marke`, `bild`, `material`, `durchmesser`, `laenge`, `wickelkit`) VALUES
(10, 'sonstiges', 'Geek Vape DIY Profiwickelset 521', '', 'GeekVape DIY Profiwickelset 521 Master Tools Kit\r\n\r\nIm Profiwickelset aus dem Hause GeeVape findet man eine erlesene Auswahl hochfunktioneller Wickeltools. So enthält das Set mit dem innovativen 521 Tab ein echtes Multitalent, mit dem ein gleichzeitiges Messen des Widerstandes sowie das Ausglühen der Wicklung zum Kinderspiel werden. Der 521 Tab kann zudem als Desktop-Akkuträger genutzt werden, wobei ein 18650er Akku (nicht im Lieferumfang enthalten) für ausreichend Ausdauer sorgt.\r\n\r\nGleich 8 Aufsätze in unterschiedlichen Größen und 4 verschiedene Schraubenzieher-Bits bietet die Coil Jig Wickelhilfe, mit der Sie im Handumdrehen perfekte Wicklungen erstellen. Alle Aufsätze sind ordentlich untergebracht im Silikonblock. Neben diesen hilfreichen Tools findet man im GeekVape Wickelset eine Spitzzange, einen Draht-Seitenschneider, eine Schere, zwei Pinzetten und ein klappbares Nylonfach zur Aufbewahrung von Watte und Draht. Alle Bestandteile des Sets sind übersichltich im stylischen Case verstaut und weisen eine sehr gute Verarbeitungsqualität auf.\r\n\r\nTechnische Daten Geekvape 521 Tab:\r\nWiderstandsmessbereiche: 0,01 bis 9,9 Ohm\r\nmögl. Verdampferwiderstände: ab 0,1 Ohm \r\nSicherheit / Schutzschaltungen: Tiefenentladung, Kurzschluss, Verpolung\r\nAkku: 1* 18650 (nicht im Lieferumfang enthalten)\r\nAnschluss: 510er Gewindeanschluss\r\nPluspol: gefedert\r\nLieferumfang Wickelset:\r\n1x Geekvape 521 Tab (Aluminium)\r\n1x Coil Jig Wickelhilfe mit 8 verschiedenen Aufsätzen und 4 Bits\r\n1x Silikonblock zur Aufbewahrung der Coil Jig Aufsätze \r\n1x Keramikpinzette\r\n1x Edelstahlpinzette gebogen\r\n1x Draht-Seitenschneider\r\n1x Spitzzange\r\n1x Schere (zusammenklappbar)\r\n1x Tasche mit Reißverschluss', '', 53.95, 5, 'Geek Vape', 'http://localhost/SirDampf/Bilder/geekVapeWickelKit.jpg', NULL, NULL, NULL, 'Ja'),
(11, 'sonstiges', 'Multifunktionspinzette mit Keramikspitzen (Tweezer)', '', 'Multifunktionspinzette mit Keramikspitzen (Tweezer)\r\n\r\nVielfältig einsetzbares und unverzichtbares Werkzeug für Selbstwickler.\r\n\r\nDank antistatischer und nicht magnetischer Keramikspitzen ist die Pinzette perfekt geeignet Ihre Wicklung auszurichten und in die gewünschte Form zu bringen. Die Keramikspitzen sind nicht wärmeleitend, so dass der heiße Draht ohne Weiteres bearbeitet werden kann. Die halbrunde Form des Nylongriffs liegt sehr gut in der Hand und vereinfacht kleinteilige Arbeiten ungemein. Mit dem Griff lassen sich zudem sehr festgedrehte Verdampfer und Verdampferköpfe lösen.\r\n\r\nFeatures:\r\n- nicht magnetisch\r\n- nicht elektrisch Leitfähig\r\n- hitzebeständig\r\n\r\nTechnische Daten:\r\nMaterial: Keramik, Nylon\r\nMaße: 11cm x 3,2cm', '', 3.85, 3, 'Coil Master', 'http://localhost/SirDampf/Bilder/tweezer.jpg', NULL, NULL, NULL, 'Nein'),
(12, 'draht', 'Geekvape SS316 Twisted Clapton', '', 'Geekvape SS316 Twisted Clapton \r\n\r\nDer Twisted Clapton Draht von Geekvape für das besondere Dampferlebnis. Der Draht besteht aus Edelstahl und ist damit sowohl für den Wattmodus wie auch für temperaturgesteuertes Dampfen bestens geeignet.\r\n\r\n\r\nFeatures:\r\n- Twisted Clapton\r\n- Draht aus Edelstahl für Watt- und Temperaturdampfen\r\n- dichterer Dampf\r\n- perfekte Aromenentfaltung\r\n- starker Flash\r\n- aufwendig angefertigt\r\n- einfach zu verarbeiten\r\n- geeignet für die meisten Selbstwickelverdampfer\r\n\r\nTechnische Daten:\r\nMaterial: Edelstahl SS316\r\nVerarbeitung: Twisted Clapton\r\nDrahtstärke Twisted Clapton: 28GA*2 (innen) und 30GA (aussen)\r\nDrahtlänge: ca 3,05m\r\n\r\nUmrechnung Gauge in mm:\r\n24GA = 0.511mm\r\n26GA = 0.405mm\r\n28GA = 0.321mm\r\n30GA = 0.255mm\r\n32GA = 0.200mm\r\n\r\nLieferumfang:\r\n1x 3,05m Rolle SS316 Twisted Clapton \r\n\r\nGarantie:\r\nDer Wickeldraht ist ein Einwegprodukt ohne Garantie "TAWA / EINWEG".', '', 5.95, 5, 'Geek Vape', 'http://localhost/SirDampf/Bilder/geekVapeSS316.jpg', 'SS316', 28, 3.05, NULL),
(13, 'watte', 'UD Muji Organische Japanische Baumwolle', '', 'UD Youde Muji Organische Japanische Baumwolle 5er Pack\r\n\r\nDiese Wattepads aus Japan eignen sich perfekt zum Erstellen eigener Wicklungen.\r\n\r\nJapanische Biobaumwolle wird in Dampferkreisen vorallem wegen der hervorragenden Dampf- und Aromaentwicklung und dem einfachen Handling geschätzt. Die Wattepads sind einzeln verpackt, damit bequem portionsweise entnehmbar und geschützt vor Verunreinigungen.\r\n\r\nLieferumfang:\r\n5 x Wattepads (je 80x60mm, einzeln verpackt)\r\n', '', 2.45, 5, 'UD', 'http://localhost/SirDampf/Bilder/UDJapWatte.jpg', NULL, NULL, NULL, NULL),
(14, 'silikat', 'Silikatschnur 1m', '', 'Glasfaserdocht/schnur zum selberwickeln aller möglichen Verdampfer (z.B. eGo-Serie, Bull, etc,,,)\r\n\r\nTechnische Daten:\r\nDurchmesser: 1,0mm \r\nLänge: 1m (1000mm)\r\n\r\nAchtung:\r\nDie Glasfaserdocht/schnur ist ein Einwegprodukt ohne Garantie "TAWA / EINWEG"', '', 0.95, 2, 'Coil Master', 'http://localhost/SirDampf/Bilder/silikat.png', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zubehoer`
--

CREATE TABLE `zubehoer` (
  `id` int(11) NOT NULL,
  `kategorie` text NOT NULL,
  `name` text NOT NULL,
  `kurzbeschreibung` text NOT NULL,
  `beschreibung` text NOT NULL,
  `technischeDaten` text NOT NULL,
  `preis` double NOT NULL,
  `bewertung` int(11) NOT NULL,
  `marke` text NOT NULL,
  `bild` text NOT NULL,
  `kapazitaet` int(11) DEFAULT NULL,
  `akkutyp` text,
  `maxAkkus` int(11) DEFAULT NULL,
  `Material` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `zubehoer`
--

INSERT INTO `zubehoer` (`id`, `kategorie`, `name`, `kurzbeschreibung`, `beschreibung`, `technischeDaten`, `preis`, `bewertung`, `marke`, `bild`, `kapazitaet`, `akkutyp`, `maxAkkus`, `Material`) VALUES
(15, 'schutzhuellen', 'Joyetech eVic VTC Mini Silikon Case (schwarz)', '', 'Joyetech eVic VT Silikon Case (Schutzhülle)\r\n\r\nDiese Hülle aus Silikon sitzt perfekt auf Ihrer eVic VT und schützt sie vor Kratzern und Abnutzungserscheinungen. Die Aussparungen am USB Anschluss und an den Ausgasungslöchern, die Markierung über dem Feuertaster und das "Sichtfenster" über dem Display machen die Bedienung der eVic VT auch in der Schutzhülle ohne Einschränkung möglich.\r\n\r\n\r\nLieferumfang:\r\n1x Silikonschutzhülle für eVic VT', '', 2.95, 4, 'Joyetech', 'http://localhost/SirDampf/Bilder/joyetechVTCMiniHuelle.jpg', NULL, NULL, NULL, NULL),
(16, 'akkus', 'Akku Sony US18650VTC5 2600 mA/ 30A', '', 'Akku Sony US18650VTC5 2600mA / 30A\r\n\r\nGeeignet für die Joyetech eVic Supreme, Kangside20, Hana Modz dna20 und Hana Modz dna30.\r\n\r\n- Li-Ionen Akku ungeschützt\r\n- kein Memory-Effekt\r\n- hohe Stromabgabe 30A\r\n- Original Sony Akku Zelle\r\n- lange Haltbarkeit.\r\n- lange Lagerfähigkeit\r\n- hohe stabile Kapazität\r\n\r\nTechnische Daten:\r\nKapazität:  2600mAh\r\nNennspannung:  3,6V\r\nLadeschlussspannung:  4,2V\r\nmax. Stromabgabe:  30A\r\nChemische Zus.:  LiNiMnCoO2\r\nSchutzschaltung:  nein (non protected)\r\nPluspol:  flach (FlatTop)\r\nDurchmesser:  18,20mm\r\nHöhe:  65,1mm\r\n\r\nAchtung:\r\nWir gewähren eine zweimonatige Garantie auf unsere Akkus. Ausgenommen sind Verschleiß und natürliche Abnutzung sowie Kapazitätsverlust.\r\nDie Akkus werden vor Versand auf ihre Funktion geprüft.', '', 8.95, 5, 'Sony', 'http://localhost/SirDampf/Bilder/sony18650.png', 2600, '18650', NULL, NULL),
(17, 'ladegeraete', 'Nitecore New i2 Intellicharge Ladegerät', '', 'Nitecore New i2 Intellicharge Ladegerät\r\n\r\nDas NiteCore New i2 Intellicharge Ladegerät ist der offizielle Nachfolger des zu seiner Zeit revolutionären i2, das weltweit erste Ladergerät das sowohl herkömmliche NiMH-Akkus als auch Lithium-Ionen-Akkus laden konnte. Die ''New i2'' Version von 2016 ist für beinahe alle Akkutypen genau das richtige Ladegerät, so ermöglicht es das Laden von Li-Ion, Ni-MH, Ni-Cd und LiFePO4 Akkus. Der Funktionsumfang des Ladegeräts wurde um einige praktische Funktionen erweitert.\r\n\r\nIst z.B. nur ein Ladeschacht belegt, lädt das New i2 jetzt mit 1 Ampere, also doppelt so schnell wie das ursprüngliche Modell. Dank aktiver Ladestromverteilung erkennt das Gerät die Kapazität eines Akkus und wählt automatisch den optimalen Ladestrom. Ist ein Akku aufgeladen, wird der zweite automatisch mit einem ganzen Ampere fertig aufgeladen.\r\n\r\nWeiterhin wurde die Kompatibilität erweitert, das Gerät ist jetzt in der Lage fast alle Zylinderakkus aufzuladen ohne ein zusätzliches Ladegerät (außer natürlich das ''New i2'') zu benötigen. Per Tastendruck lässt sich die gewünschte Ladespannung aus vier Voreinstellungen auswählen. Es ist sogar in der Lage die Schutzschaltung eines (geschützten) IMR Akkus zu lösen, um ihn wieder vollständig aufzuladen.\r\n\r\nDa das Nitecore New i2 Ladegerät sowohl über einen Gleichstrom- als auch über einen Wechselstromanschluß verfügt, lassen sich Akkus auch unterwegs, z.B. im Auto, aufladen. Die Schieber aus Vollkupfer lassen sich unvergleichlich leicht bewegen. Sie reduzieren zudem den Ladewiderstand und erhöhen dadurch die Präzision des Ladestroms. Weiterhin reduzieren sie die Wärmeentwicklung während des Ladevorgangs. Letztere wird in Echtzeit permanent überwacht, so dass eine Überhitzung, die eine gleichmäßig stabile Aufladung behindert, vermieden wird. Zahlreiche weitere Schutzschaltungen, sowie die Verwendung hochwertiger hitzeunempfindlicher, schwerentflammbarer Materialien ermöglichen ein sorgenfreies aufladen der Akkus.\r\n\r\nFeatures:\r\n- Kompatibel mit 1.2V, 3.7V, 4.2V, 4.35V Akkus\r\n- für Li-Ion, Ni-MH, Ni-Cd und LiFePO4 Akkus geeignet\r\n- lädt mit bis zu 1 Ampere (doppelt so schnell wie das i2)\r\n- Kapazitätserkennung\r\n- optimiertes IMR Ladeprogramm, verhindert Überladung\r\n- lädt 0V IMR protected Akkus\r\n- AC/DC Anschluß für flexibles laden\r\n- automatische Erkennenung nichtwideraufladbarer Batterien\r\n- Vollkupferschieber\r\n- Verpolungsschutz\r\n- Überladungsschutz\r\n- 20 Stunden Schutzabschaltung\r\n- permanente Überwachung der Betriebstemperatur\r\n- Verwendung hochwertiger hitzeunempfindlicher, schwerentflammbarer Materialien\r\n\r\nTechnische Daten:\r\nMaße: 132 × 70 × 35 mm\r\nGewicht: 126 g (ohne Anschlusskabel und Akkus)\r\nEingangsspannung: AC 100 ~ 240V 50/60Hz 0.25mA (max) 8W bzw.: DC 9 ~ 12V\r\nAusgangsspannung: 4.35V±1%/4.2V±1%/ 3.7V±1%/1.48V±1%\r\nLadestrom: 500mA x 2/ 1000mA x 1\r\nLED''s zur Ladestandserkennung\r\n\r\nGeeignet für folgende Akkutypen:\r\n\r\nLi-Ion/IMR/LiFePO4: 10340 10350, 10440, 10500, 12340, 12500, 12650, 13450, 13500 13650, 14350, 14430, 14500, 14650, 16500, 16340(RCR123), 16650, 17350, 17500, 17650, 17670, 18350, 18490, 18500,18650, 18700, 20700, 21700, 22500, 22650, 25500, 26500, 26650\r\nNi-MH(NiCd): AA, AAA, AAAA, C, D\r\n\r\nLieferumfang:\r\n1 x NiteCore New i2 Intellicharge Ladegerät\r\n1 x Ladekabel', '', 16.95, 5, 'Nitecore', 'http://localhost/SirDampf/Bilder/intellichargei2.jpg\r\n', NULL, NULL, 2, NULL),
(18, 'ladegeraete', 'Nitecore Intellicharge i4 Ladegerät', '', 'Nitecore Intellicharge i4 Ladegerät \r\n\r\nDas Nitecore Intellicharge i4 verfügt über vier überwachte Microprocessor gesteuerte Ladeschächte und ist weltweit das erste Ladergerät das sowohl herkömmliche NiMH-Akkus als auch Lithium-Ionen-Akkus laden kann. \r\nEs erkennt die eingelegten Akkus automatisch, deren Ladezustand und passt sowohl Ladestrom als auch den Lademodus entsprechend an. Außerdem sorgt ein integrierter Verpolungsschutz dafür, dass bei einem falsch eingelegten Akku nichts passieren kann. Dies wird über die blinckenden Status Led''s angezeigt.\r\nDarüber hinaus besitzt das Intellicharge i4 eine Ladeanzeige für jeden Schacht. Sind alle vier Schächte belegt liegt der Ladestrom des Intellicharge i4 bei 375mA, bei zwei belegten Schächten bei 750mA. Nach Beendigung des Ladevorgangs schaltet das Intellicharge i4 ab. \r\n\r\nTechnische Daten: \r\nLadestrom: 4x 375mA oder 2x 750mA \r\nLED-Leuchtdioden zur Ladestandserkennung \r\nNetzspannung:100-240V-AC/12V-DC \r\nFrequenz: 50 - 60Hz \r\nMaße: 139mm × 96mm × 36mm \r\n\r\nGeeignet für folgende Akkutypen: Li-Ion: 22650, 18650, 18350, 17670, 18490, 18500, 17500, 17355, 16340, 14500 /    Ni-MH/Ni-CD: AA, AAA, A, SC, C ', '', 25.95, 5, 'Nitecore', 'http://localhost/SirDampf/Bilder/intellichargei4.jpg', NULL, NULL, 4, NULL),
(19, 'driptips', 'Eleaf Melo 2 Drip Tip', '', 'Eleaf Melo Drip Tip 2\r\n\r\nDas originale Drip Tip des Melo 2. Dieser Drip Tip besitzt eine wärmeableitende Plastikisolierung am Gewinde, wodurch das Mundstück kaum erhitzt. Durch den 510er Anschluss ist das Drip Tip kompatibel zu fast jedem Verdampfer.\r\n\r\nTechnische Daten:\r\nMaterial: Edelstahl/ Kunststoff\r\nInnendurchmesser: 0,8cm\r\nAußendruchmesser: 1,2cm\r\nAnschluss: 510\r\n\r\nAchtung:\r\nDas Drip Tip ist ein Hygieneartikel "TAWA/ Einweg" ohne Garantie. ', '', 1.95, 3, 'Eleaf', 'http://localhost/SirDampf/Bilder/eleafMelo2DT.jpg\r\n', NULL, NULL, NULL, 'Edelstahl');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `akkutraegernboxmods`
--
ALTER TABLE `akkutraegernboxmods`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `ezigaretten`
--
ALTER TABLE `ezigaretten`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `liquid`
--
ALTER TABLE `liquid`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `mischen`
--
ALTER TABLE `mischen`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`kundennummer`);

--
-- Indizes für die Tabelle `verdampfer`
--
ALTER TABLE `verdampfer`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `wickelzubehoer`
--
ALTER TABLE `wickelzubehoer`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `zubehoer`
--
ALTER TABLE `zubehoer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `kundennummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
