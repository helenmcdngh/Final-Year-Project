-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2017 at 06:57 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studybuddy`
--
CREATE DATABASE IF NOT EXISTS `studybuddy` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `studybuddy`;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`) VALUES
(1, 'History'),
(2, 'Geography'),
(3, 'Science'),
(4, 'Home Economics');

insert into subjects values (5,"English"),(6,"Technology"),(7,"French"),(8,"German"),(9,"Irish"),(10,"Business Studies"),(11,"Wood Work"),(12,"Engineering"),(13,"Music"),(14,"DCG");

-- --------------------------------------------------------

--
-- Table structure for table `subject_topics`
--

DROP TABLE IF EXISTS `subject_topics`;
CREATE TABLE IF NOT EXISTS `subject_topics` (
  `subjectID` int(3) NOT NULL,
  `topicID` int(11) NOT NULL,
  PRIMARY KEY (`subjectID`,`topicID`),
  KEY `topicID` (`topicID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_topics`
--

INSERT INTO `subject_topics` (`subjectID`, `topicID`) VALUES
(1, 1000),
(1, 1001),
(2, 2000),
(3, 3000),
(3, 3001),
(3, 3002),
(3, 3003),
(3, 3004),
(3, 3005),
(3, 3006);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `topicID` int(11) NOT NULL,
  `topicName` text NOT NULL,
  `details` mediumtext NOT NULL,
  PRIMARY KEY (`topicID`),
  KEY `topicID` (`topicID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topicID`, `topicName`, `details`) VALUES
(1000, 'Industrial Revolution', 'The Industrial Revolution, which took place from the 18th to 19th centuries, was a period during which predominantly agrarian, rural societies in Europe and America became industrial and urban. Prior to the Industrial Revolution, which began in Britain in the late 1700s, manufacturing was often done in people?s homes, using hand tools or basic machines. Industrialization marked a shift to powered, special-purpose machinery, factories and mass production. The iron and textile industries, along with the development of the steam engine, played central roles in the Industrial Revolution, which also saw improved systems of transportation, communication and banking. While industrialization brought about an increased volume and variety of manufactured goods and an improved standard of living for some, it also resulted in often grim employment and living conditions for the poor and working classes.'),
(1001, 'World War 2', 'The instability created in Europe by the First World War (1914-18) set the stage for another international conflict?World War II?which broke out two decades later and would prove even more devastating. Rising to power in an economically and politically unstable Germany, Adolf Hitler and his National Socialist (Nazi Party) rearmed the nation and signed strategic treaties with Italy and Japan to further his ambitions of world domination. Hitler?s invasion of Poland in September 1939 drove Great Britain and France to declare war on Germany, and World War II had begun. Over the next six years, the conflict would take more lives and destroy more land and property around the globe than any previous war. Among the estimated 45-60 million people killed were 6 million Jews murdered in Nazi concentration camps as part of Hitler?s diabolical ?Final Solution,? now known as the Holocaust.'),
(2000, 'Gloabal Warming', 'Global Warming, the general increase in the earth''s near-surface air and ocean temperatures, remains a pressing issue in a society that has expanded its industrial use since the mid-twentieth century. Greenhouse gases, atmospheric gases that exist to keep our planet warm and prevent warmer air from leaving our planet, are enhanced by industrial processes. As human activity such as the burning of fossil fuels and deforestation increases, greenhouse gases such as Carbon Dioxide are released into the air. Normally, when heat enters the atmosphere, it is through short-wave radiation; a type of radiation that passes smoothly through our atmosphere. As this radiation heats the earth''s surface, it escapes the earth in the form of long-wave radiation: a type of radiation that is much more difficult to pass through the atmosphere. Greenhouse gases released into the atmosphere cause this long-wave radiation to increase. Thus, heat is trapped inside of our planet and creates a general warming effect. Scientific organizations around the world, including The Intergovernmental Panel on Climate Change, the InterAcademy Council, and over thirty others, have projected a significant change and future increase in these atmospheric temperatures.'),
(3000, 'Functions of the Eye', 'The eye is one of the most important senses in the human body, the eye has many parts. The Iris is the coloured part of the front of the eye, its function is to expand or contract to control the amount of light entering the eye. The pupil is the black circle in the middle of the iris, its function is to allow light to enter the eye. It also changes size due to the changes in the iris, in bright light the pupil shrinks and in dim light the pupil enlarges. The Lens is a flexible structure, it changes shape depending on whether we are looking at a near or a far object, its function is to focus light on the retina. The Retina is the light-sensitive layer at the back of the eye, its function is to absorb light and to allow us to see. The Optic Nerve carries messages from the eye to the brain and it also provides the link between the eye and the central nervous system. The Cornea is a transparent section of the covering of the eye, its function is to allow light to pass into the eye. The Ciliary Muscle surrounds the lens; it contracts or relaxes to cause the lens to change shape.'),
(3001, 'Function of the Human Skeleton', 'The Human skeleton has over 200 bones, its main functions are to support the body, allow movement and to protect internal organs. 1.Supporting the body: The bones of the skeleton keep the body upright and gives it shape, without it the body would collapse. 2.Allows Movement: A joint is where bones meet, some are not able to move but many are moveable. Bones move when muscles contract to pull on a bone. 3.Protect Internal Organs: The skull protects the soft material of the brain. The backbone surrounds and protects the nerves in the spinal cord. The rib cage protects the lungs and heart.'),
(3002, 'Parts of the Human Skeleton', 'The Human skeleton has 4 different parts, they are called joints, muscles, tendons and Ligaments. 1.Joints: are where bones meet, some such as those in the skull that don''t move. They protect the brain. Most joints allow some movement. 2.Muscles: are made of protein and they contract, a muscle is attached to a bone either side of a joint, together they allow bones to move. 3.Tendons: join muscles to bones, when a muscle contracts the pull of the muscle is passed to the bone through a tendon. 4.Ligaments: prevent joints from being damaged by reducing the amount of the movement between the bones at a joint. They join bone to bone.'),
(3003, 'Structure of a Flowering Plant', '1.Root: It anchors and supports the plant in the soil. It also takes in water and minerals from the soil, they pass up through the stem to the leaf. Some plants store food in their root. 2.Stem: It holds up and supports the leaves and flowers, it also transports water and minerals to the leaves and sometimes transports minerals and water down to the root. 3.Bud: Is a potential growth point, new leaves or flowers may develop from new buds. 4.Flower: They produce seeds so that the plant can reproduce. 5.Leaf: They produce food in a process called photosynthesis. They allow gases to pass in and out of the leaves. Carbon Dioxide passes in and Oxygen comes out. They allow water to pass in and out of the plant as well.'),
(3004, 'Water Treatment', '1. Screening: It involves passing water through a wire mesh or screen to remove any floating materials such as leaves and rubbish. 2. Settling: Water flows into large tanks and a chemical aluminium sulphate is added. This causes small insoluble particles to come together and settle to the bottom of the tanks. 3. Filtration: The water is passed through beds of sands. Any remaining insoluble particles are removed. The water is now clear in colour but it may contain bacteria. 4. Chlorination: Chlorine is added to the water to kill any bacteria present. The amount of chlorine added is carefully monitored. If too little is added it may kill all the bacteria, too much and it can be smelled and tasted. 5. Fluoridation: Fluorine is added to the water in some countries to help prevent tooth decay.'),
(3005, 'Fossil Fuels', 'Are fuels formed from the remains of plants and animals that lived millions of years ago. Coal was formed from trees and ferns that died and were buried and compressed. Oil and Natural gas were formed from animals and plants that lived in the sea. Their remains were buried under layers of sand on the seabed, as pressure increased they eventually form oils and gases. Fossil fuels originated from living matter, they are composed of two elements, hydrogen and carbon such compounds are called hydrocarbons. When hydrocarbons are burned, carbon dioxide and water vapour are produced. Natural gas is mainly methane(CH4). When it is burned, carbon dioxide and water are produced. Fossil Fuels + Oxygen = Carbon Dioxide + Water.'),
(3006, 'Light-Dependent Resistor(LDR)', 'LDRs are resistors whose value of resistance can change. The value of the resistance will change as the intensity or brightness of the light falling on its changes. 1. If bright light falls on an LDR the resistance is low. A larger current can flow through the resistor. 2. If dim light falls on an LDR the resistance is high. A smaller current will now flow through the resistor.Using an LDR you can arrange for an electrical appliance to be controlled by light. In fact, some appliances can be switched on or off by simply shining light on the LDR connected to them.');

-- --------------------------------------------------------

--
-- Table structure for table `topic_diagrams`
--

ALTER TABLE `subject_topics`
  ADD CONSTRAINT `subject_topics_ibfk_1` FOREIGN KEY (`subjectID`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `subject_topics_ibfk_2` FOREIGN KEY (`topicID`) REFERENCES `topics` (`topicID`);

--
-- Constraints for table `topic_diagrams`
--
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
