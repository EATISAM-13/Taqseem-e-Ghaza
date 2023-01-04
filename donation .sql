-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 05:13 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `B_ID` int(11) NOT NULL,
  `B_NAME` varchar(255) DEFAULT NULL,
  `B_CONTENT` text DEFAULT NULL,
  `B_STATUS` char(1) DEFAULT NULL,
  `B_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`B_ID`, `B_NAME`, `B_CONTENT`, `B_STATUS`, `B_DATE`) VALUES
(1, 'QURBANI AND ITS PURPOSE ', '<p>Qurbani or Udhiya alludes to a penance done with an end goal to come near God. This penance is finished by Muslims all around the world on the tenth, eleventh, and twelfth Dhul Hajjah to remember Hazrat Ibrahim&#39;s (AS) tradition of magnanimity and immovable confidence.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The word &#39;Qurbani&#39; is gotten from the three-dimensional foundation of &#39;qarb&#39; which for the most part signifies &#39;to move close.&#39; Subsequently, it tends to be deciphered as a work to attract oneself nearer to Allah.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hazrat Ibrahim (Similar to) the ancestor of Hazrat Muhammad (PBUH) and the second most darling Prophet of Allah. His life was filled with difficulties and preliminaries, yet never did he once waver in his outright confidence in Allah&#39;s arrangement. His total accommodation in each experience procured him the high-positioning title of Khaleel ul Allah (Companion of Allah).</p>\r\n\r\n<p>And remember that Ibrahim was tried by his Lord with certain commands, which he fulfilled: He said: &ldquo;I will make you an Imam to the Nations.&rdquo; Surah Baqarah (2:124)</p>\r\n\r\n<p>We as a whole ask ourselves: How would we turn out to be nearer to Allah?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The response is in the existence of Hazrat Ibrahim (AS) who is a motivation for all Muslims who endeavor to turn out to be nearer to Allah. With his total accommodation before Allah&#39;s will, he represents the relentless confidence one priority to be magnified to such unique distinction by Allah. The starting points of the act of Qurbani lie in this very rule.</p>\r\n\r\n<p><strong>The Account of Qurbani: The Reason</strong></p>\r\n\r\n<p>Hazrat Ibrahim (AS) had gone through serious hardships and challenges in the method of Allah when he became old. He had no youngsters and yearned for a child to convey forward his message of Dawah (greeting to Islam). After numerous years, his request was acknowledged and he was conceded a child named Ismail.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Obviously, Hazrat Ibrahim adored Ismail with his entire existence as Ismael had eased up his advanced age and given him the solace that the message of Allah will keep on being taught after him.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Allah (SWT) had another arrangement.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Both were quickly prepared to follow up on the order of Allah however Shaytan (Satan) attempted to discourage them threefold and bring up questions about their choice. His endeavors went to no end as Hazrat Ibrahim pelted him with stones on every one of the three events. To recollect this uncommon endurance of confidence in the midst of a remarkable preliminary, Muslims pelt Shaytan (Satan) on similar areas a promise to follow the case of Hazrat Ibrahim and never succumb to Satan&#39;s duplicities. (This is the well known demonstration of Rami which is worked on during Hajj.)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>After arriving at the butcher spot, Hazrat Ibrahim blindfolded himself since he was unable to bear to see the aggravation of his darling Ismail. He honed his blade and cut Ismail&#39;s throat to satisfy the order of Allah.</p>\r\n\r\n<p>At the point when he was finished, he took the blindfold off and was stunned to see Ismail standing alive and well before him! A white slam had supplanted Ismail to be butchered all things considered. This was for sure a marvel!</p>\r\n\r\n<p>A voice called to Ibrahim from the heavens:</p>\r\n\r\n<p>Thus, Hazrat Ismail&#39;s life was saved as Hazrat Ibrahim demonstrated his definitive dedication and submission to the desire of Allah.</p>\r\n\r\n<p><strong>WHAT DO WE REALIZE?</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This continuous penance that we make consistently fills in as a sign of Prophet Ibrahim&#39;s submission to Allah in each situation. It&#39;s an update that we ought to plan to look for the joy of our Maker regardless - and it&#39;s a commitment that Allah never asks from us beyond what we can give.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hence, rather than slobbering over the results of completing Allah&#39;s orders in current times, we ought to feel consoled that Allah won&#39;t ever let us be assuming we decide to follow His way. Achievement must be accomplished assuming we submit to His will and comply with the lessons of Quran and Sunnah in our lives.</p>\r\n\r\n<p><em>&ldquo;O you who believe! Persevere, endure, remain steadfast and fear Allah that you may be successful.&rdquo; (3:200)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>-----------------------------------------------------------------------</em></p>\r\n', 'Y', '2022-12-14'),
(2, 'Taqseem e Ghaza', '<h2><strong>OUR OBJECTIVE</strong></h2>\r\n\r\n<p>The food wastage management system encapsulates managing the food that is wasted in our normal routine. This management is done in such a way that neither the food is wasted, nor is the lower class of society left hungry. The term wasted food refers to food that was not used for its intended purpose and is managed in a variety of ways, the main one being the donation of food. It is aptly said, &ldquo;We make a living by what we get, but we make a life by what we give.&rdquo; The donation of food amongst people is important to make sure a hunger-free society prevails. The scope of food waste management is to raise awareness amongst people and provide them with a platform through which they can donate their food easily. There are thousands of people who have leftover food, be it their house or a restaurant. That food is wasted or thrown away by most of them. This imbalance in food consumption proves costly for poor people. To handle this issue, this system will come in handy and will provide collecting food from the donors and distribute it among the desired people. Our project Taqseem-e-ghaza is a web system where users (a lay person or restaurant workers) will be able to donate their food to the poor people through volunteers and will also be able to pay the system to make special items such as in ( Daigs, Haleem, etc. ) to distribute it among the needy people. They can also donate Raashan or meat as per their need. Based on special occasions, they can also take part in the Ramadan drive or Qurbani drive.&nbsp;</p>\r\n', 'Y', '2022-12-15'),
(3, 'Averting Starvation like Never Before', '<p>Almost a billion groups across the world experience the impacts of food uncertainty. Pakistan is likewise perhaps of the most exceedingly awful affected country as far as the gigantic expansion in constantly food uncertain populace. Taqseem e ghaza is there with a common target to lessen hunger across the twin cities by setting up a focal space; Taqseem hub. Through this hub, different food donations will be made throughout the cities to make sure society does not thrive for food anymore. Taqseem hub will effectively work as a focal unit that will work with all Ghaza Projects and individual functional exercises: Ghaza Bachao, Daigs, and Ghaza Proportion. To get ready new prepared dinners for the Daig and Ghaza program, the Taqseemhub&#39;s kitchen has the ability to plan up to 20k feasts consistently and to store the overabundance food, the Center point can save to 10 tons of food at a time.</p>\r\n\r\n<p>--------------------------------------------------------------------</p>\r\n', 'Y', '2022-12-06'),
(4, 'HOW THE FLOODS TOOK A TOLL ON PAKISTAN ', '<p><strong>&ldquo;Our loses are massive&rdquo;</strong> &ndash;CM Abdul Qudoos Bezenjo</p>\r\n\r\n<p>Flooding is the most damaging climate outrageous that hampers typical life and exchange. Pakistan flood history talks about yearly floods denoting the surges of 2022 as the most exceedingly awful flood in Pakistan. All things considered, have impacted more than 30 million individuals. Pakistan is as yet flooding in Southern Punjab and inside Sindh. In excess of 10 000 families are holding up in the open sky. Our destitute siblings are relying on you, hanging tight for your assistance and backing. We at Taqseem e ghaza are having our impact in sending help to the right hands. You want to have your impact as well!</p>\r\n\r\n<p><strong>Agriculture and Pakistan</strong></p>\r\n\r\n<p>Agribusiness is the foundation of Pakistan, contributing 25% to Gross domestic product and including 48% of work. Agribusiness isn&#39;t just the significant food source yet additionally gives unrefined components to the modern area of Pakistan. The main harvests of Pakistan are wheat, rice and cotton, which are sent out to different nations against unfamiliar trade. With the unfamiliar trade, different areas are supported. Notwithstanding, because of floods, the yields to be sent out are annihilated, restricting the unfamiliar trade.</p>\r\n\r\n<p><strong>Primary drivers of Floods in Pakistan 2022</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A flood is the spilling over of water in dry grounds. The reasons for floods can be arranged into regular and human-instigated floods. Pakistan&#39;s most recent floods happened because of the accompanying reasons.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Streak floods</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Streak floods happen inside a brief time frame after the precipitation, and they permit less time for planning and moving individuals. Their disastrous nature is apparent in Balochistan, where houses have self-destructed, crops are washed away, and life is kept down.</p>\r\n\r\n<p><strong>Metropolitan Flooding</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Metropolitan flooding is the immersion of land or property in a thickly populated region, bombing the limit of the seepage frameworks and expanding the harm of floods. In Pakistan floods 2022, around 60% of the houses are flushed away, expanding the size of harm by the flood. In the rural area, 504,321 domesticated animals is hurt, an extraordinary misfortune to Pakistan&#39;s economy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Effect of Floods on Agribusiness</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>July-August floods have caused mass obliteration. The annihilation isn&#39;t just for the present yet for later causes. This incorporates the,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The whole yield field is overflowed, squandering the endeavors and assets of a rancher.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The deficiency of plants at the family level adversely influences sowing as the seeds are lost.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Serious misfortunes of wheat stock were a wellspring of food until the following harvest.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The harvest that endures isn&#39;t usable as the floodwater debases it.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The most fruitful dirt is washed away that couldn&#39;t be put away completely through treatment.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Flooding Tears of Ranchers</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For a huge scope, the inhabitants of southern Punjab, inside Sindh and Balochistan are impacted. Among these, a gigantic piece of ranchers moving toward the Kharif crop reap season is flooding tears. As far as they might be concerned, it is hard to see their constantly endeavors being overwhelmed, houses suffocating, and families uprooted. They are interesting to the country to step forward and remain with them. They can&#39;t communicate the misfortune they have confronted, nor could their misfortune at any point be redressed, yet as a resident, siblings and a country, we can assist with decreasing the misery.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Impacts of July-August Floods in Pakistan</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pakistan is suffocating because of weighty precipitation causing floods. The impacts of floods in Pakistan are monstrous, and individuals need to confront various difficulties. Whole people group should persevere through difficult situations, attempting to get by and settle. The following are a couple of difficulties that individuals face,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Individuals in important regions have lost their friends and family. Some disappear in the confusion, while others withdraw from the world. On such incredible misfortunes, the family needs to leave them back and frantically get away.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The framework is annihilated, making correspondence troublesome. The survivors not just fight with the tension of streaming water yet battle against avalanches, yearning and vulnerability.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Individuals in the impacted regions are inclined to water-borne sicknesses like cholera, typhoid, hepatitis, and dengue fever. There is a whole combat zone where endurance is troublesome, and just your assistance is required.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The domesticated animals is lost, there are no stores or stocks, and individuals bring their kids through the floods in the expectation of help from you.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>There is no admittance to necessities for endurance. Individuals are starving under the uncovered sky, sitting on the wetland. The grown-ups are endeavoring to get enough for their crying youngsters.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Day to day the loss of life is rising, and tasks are being led with practically no break. The world is topsy turvy here that need the country&#39;s consideration and backing.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-------------------------------------------------------------------------------------------------------</p>\r\n', 'Y', '2022-12-20'),
(5, 'Have your impact in keeping the fantasies of our youngsters alive', '<p>Signed up for a neighborhood school run by the Rukh Establishment, Imtiaz never missed school before the pandemic, working constantly for his fantasies. At the point when the schools resumed Lady Tahira, the head of the school, saw his nonappearance and called his dad to ask about what had occurred. She got to realize that Imtiaz is filling in as a homegrown specialist and presently is the sole provider for his loved ones.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Akhtar, the dad who was utilized as a janitor at a neighborhood school lost his employment because of the pandemic and urged imtiaz to work all day with the goal that he can take care of himself and his loved ones. Lady Tahira went to their place to meet Akhter, to guide him to allow Imtiaz to come to school. She informed him, Imtiaz is one of the most focused and most splendid young men she has known and just through instruction could he at any point assist his family with escaping this endless loop of neediness.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mam Tahira informed him to get signed up for the Taqseem e ghaza Apportion Program. With the goal that they can have the fundamental food security required for Imtiaz to proceed with school.</p>\r\n\r\n<p>Presently with your assistance, Imtiaz has rejoined school chipping away at his fantasy to turn into a specialist.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This Ramadan give your Zakat and gifts to keep the fantasies of our youngsters alive.</p>\r\n', 'Y', '2022-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `C_ID` int(11) NOT NULL,
  `C_NAME` varchar(255) DEFAULT NULL,
  `C_DESCRIPTION` text DEFAULT NULL,
  `C_STATUS` char(1) DEFAULT NULL,
  `C_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`C_ID`, `C_NAME`, `C_DESCRIPTION`, `C_STATUS`, `C_DATE`) VALUES
(1, 'QURBANI', '<p><a href=\"https://res.cloudinary.com/dvtpcatsm/image/upload/v1671213382/pics/2_esqqqk.png\"><img alt=\"\" src=\"https://res.cloudinary.com/dvtpcatsm/image/upload/v1671307726/qurbani_prop5h.png\" style=\"height:348px; width:350px\" /></a></p>\r\n\r\n<p>The Qurbani Eid story states that, in a submission to Allah&rsquo;s (SWT) will and defiance of the Devil Shaitan, the Prophet Ibrahim (AS) went to the top of Mount Arafat to sacrifice his son, Prophet Ismail (AS). At the final moment, Allah (SWT) miraculously moved the boy to safety and replaced his place on the altar with an animal&ndash; a ram.</p>\r\n', 'Y', '2022-11-17'),
(17, 'RASHAN', '<p><a href=\"https://res.cloudinary.com/dvtpcatsm/image/upload/v1671306443/rashan_curpvv.png\"><img alt=\"\" src=\"https://res.cloudinary.com/dvtpcatsm/image/upload/v1671306443/rashan_curpvv.png\" style=\"height:351px; width:350px\" /></a></p>\r\n\r\n<p>&lsquo;Pass the bag&rsquo; is an undertaking by the Taqseem Society that intends to instill the soul of doing little thoughtful gestures to light up the existences of others. The soul of &#39;Pass the bag&#39; spins around dispersing feasts in various regions of the city for laborers have a place with the lower pay class, those that battle consistently to get by. This month-to-month circulation of dinners all around Rawalpindi will offer a magnificent break to these laborers from their upsetting and dreary lives. We accept that little thoughtful gestures are strong and that they can have an enduring effect. Indeed, even a gift of Rs. 200 by means of the acquisition of this ticket will help in giving a decent dinner to somebody. Assist us with aiding the people who are battling to help themselves, and have your impact in spreading generosity and euphoria on the planet.</p>\r\n', 'Y', '2022-11-21'),
(18, 'FLOOD ', '<p><img alt=\"\" src=\"https://res.cloudinary.com/dvtpcatsm/image/upload/v1671306956/flood_clfnve.png\" style=\"height:347px; width:350px\" /></p>\r\n\r\n<p>Consistently, the beginning of storm downpours upsets those living in less lucky areas of Pakistan. Floods clear in as a yearly hardship, washing away the lives and homes of individuals who are left gripping onto any expectations of crisis helps.</p>\r\n\r\n<p>With the continuous environment and financial emergencies, the occasional catastrophe has unleashed uncommon ruin in regions including Punjab and Baluchistan. Thousands have lost their homes and hundreds have been killed as precipitation proceeds. There is a critical need to help our family who suffocate further than at any other time.</p>\r\n\r\n<p>This year, Taqseem e Gaza is sending off a Flood Help mission to help individuals in impacted areas of Punjab and Balochistan. The mission plans to give alleviation proportions to the flood-stricken populace to keep them above water during these difficult times. Apportions will be conveyed live all through the mission as assets are gathered. This is just conceivable through aggregate help. We make a dire enticement for all of Pakistan to give most extreme measure of assets. Give however much you can in these seasons of emergency, as the Prophet (pbuh) said,</p>\r\n\r\n<p><strong>&ldquo;Allah continues to fulfill the needs of the servant as long as he fulfills the needs of his brother.</strong>&rdquo;</p>\r\n\r\n<p>helooo wajahat hru</p>\r\n', 'Y', '2022-12-17'),
(19, 'CLOTHS', '<p><img alt=\"\" src=\"https://res.cloudinary.com/dvtpcatsm/image/upload/v1671310009/cloths_pwdw3e.png\" style=\"height:327px; width:350px\" /></p>\r\n\r\n<p>Homelessness is really hard to overcome without help from someone else. Even with a job, some people struggle to find shelter to regain their sense of peace. There are so many causes of homelessness that are common in many people&#39;s lives. Being unemployed for an extended period of time is one of the most dominant causes of homelessness.we give hope and provide cloths with your given amount.</p>\r\n', 'Y', '2022-12-17'),
(20, 'EIDI', '<p><img alt=\"\" src=\"https://res.cloudinary.com/dvtpcatsm/image/upload/v1671308593/eidi_e1jgjb.png\" style=\"height:315px; width:350px\" /></p>\r\n\r\n<p><strong>Eidi</strong>&nbsp;(<small>pronounced&nbsp;</small><a href=\"https://en.wikipedia.org/wiki/Help:IPA\">[ˈiːdi]</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Arabic_language\">Arabic</a>:&nbsp;عيدية,&nbsp;<small><a href=\"https://en.wikipedia.org/wiki/Romanization_of_Arabic\">romanized</a>:&nbsp;</small><em>Eidiyah</em>, Eidiyya) also known as&nbsp;<strong>Salami</strong>&nbsp;(derived from the word &quot;<a href=\"https://en.wiktionary.org/wiki/Salaam\">Salaam</a>&quot;,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bengali_language\">Bangla</a>: সালামী) is a gift that is given to children by older relatives or family friends as part of the celebration of the two&nbsp;<a href=\"https://en.wikipedia.org/wiki/Muslim_holidays\">Muslim holidays</a>:&nbsp;<a href=\"https://en.wikipedia.org/wiki/Eid_al-Fitr\">Eid al-Fitr</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Eid_al-Adha\">Eid al-Adha</a>. Money is most commonly given</p>\r\n', 'Y', '2022-12-17'),
(21, 'ASHURA', '<p><a href=\"https://res.cloudinary.com/dvtpcatsm/image/upload/v1671304608/ashura_horbml.jpg\"><img alt=\"\" src=\"https://res.cloudinary.com/dvtpcatsm/image/upload/v1671304608/ashura_horbml.jpg\" style=\"height:234px; width:500px\" /></a></p>\r\n\r\n<p>Inna Lilah Va Inna Alaih Rajioon were the expressions of Imam Hussein (A.S) when located on the moon of Muharram, he showed up at Karbala to keep the commitment he made to his granddad Prophet Muhammad SAW, regardless, he alongside his family, won&#39;t give up to oppression and fiendish defilements. Imam (A.S) opened the waterway Faraat as a Sabeel, it was available even to foes, Husseini (A.S) custom is to open the entryway of good cause and host all, we should keep up the heritage and give to TAQSEEM E GHAZA, to take care of all and leave nobody face predicament of yearning.</p>\r\n\r\n<p>This Muharram, TAQSEEM E GHAZA will set up a &quot;Sabeel&quot; at Satellite Town to feature and further this custom that was set up quite a while back, by the Grandson of our Sacred Prophet (P.B.U.H).</p>\r\n\r\n<p>Love for Prophet Mohammad SAW, his family, and the recognition of Karbala has a place with all.</p>\r\n\r\n<p>&quot;THE BEST OF ALL CHARITY IS TO FEED THE HUNGRY&quot; (Holy Prophet PBUH)</p>\r\n', 'Y', '2022-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `donationitems`
--

CREATE TABLE `donationitems` (
  `DI_ID` int(11) NOT NULL,
  `DI_DONATIION` int(11) DEFAULT NULL,
  `DI_ITEM` int(11) DEFAULT NULL,
  `DI_QTY` int(11) DEFAULT NULL,
  `DI_RATE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donationitems`
--

INSERT INTO `donationitems` (`DI_ID`, `DI_DONATIION`, `DI_ITEM`, `DI_QTY`, `DI_RATE`) VALUES
(1, 1, 1, 3, 200),
(2, 1, 4, 5, 1),
(3, 2, 9, 2, 1),
(4, 2, 10, 2, 1),
(5, 3, 9, 4, 1),
(6, 3, 10, 5, 1),
(7, 3, 11, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `D_ID` int(11) NOT NULL,
  `D_CAMPAIGN` int(11) DEFAULT NULL,
  `D_DONOR` int(11) DEFAULT NULL,
  `D_DATE` date DEFAULT NULL,
  `D_TOTAL` int(11) DEFAULT NULL,
  `D_STATUS` char(1) DEFAULT NULL,
  `D_TYPE` int(11) DEFAULT NULL,
  `D_IMG` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`D_ID`, `D_CAMPAIGN`, `D_DONOR`, `D_DATE`, `D_TOTAL`, `D_STATUS`, `D_TYPE`, `D_IMG`) VALUES
(1, 17, 2, '2022-12-13', 200211311, 'A', 1, 'transactions/1670928677581.jpg'),
(2, NULL, 3, '2022-12-13', 4, 'Y', 2, NULL),
(3, NULL, 3, '2022-12-15', 11, 'Y', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donationtype`
--

CREATE TABLE `donationtype` (
  `DT_ID` int(11) NOT NULL,
  `DT_NAME` varchar(255) DEFAULT NULL,
  `DT_STATUS` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donationtype`
--

INSERT INTO `donationtype` (`DT_ID`, `DT_NAME`, `DT_STATUS`) VALUES
(1, 'DONOR', 'Y'),
(2, 'RESTAURANT', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `I_ID` int(11) NOT NULL,
  `I_NAME` varchar(255) DEFAULT NULL,
  `I_SUBTEXT` varchar(255) DEFAULT NULL,
  `I_STATUS` char(1) DEFAULT NULL,
  `I_RATE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`I_ID`, `I_NAME`, `I_SUBTEXT`, `I_STATUS`, `I_RATE`) VALUES
(1, 'Rice', 'Rs/Kgsssssss', 'Y', 200),
(2, 'Sugar', 'Rs/Kg', 'Y', 200),
(3, 'Flour', 'Rs/Kg', 'Y', 100),
(4, 'Chana Biryani', 'daig', 'Y', 1),
(5, 'Chicken Biryani', 'daig', 'Y', 1),
(6, 'Bakra', NULL, 'Y', 1),
(7, 'Iftar', 'Per Person', 'Y', 200),
(8, 'Money', 'Rs', 'Y', 100),
(9, 'Left Over Salan', 'Persdon Severing', 'Y', 1),
(10, 'Left Over Rice', 'Persdon Severing', 'Y', 1),
(11, 'Bread', 'Persdon Severing', 'Y', 1),
(12, 'Naan', 'Persdon Severing', 'Y', 1),
(13, 'Rizq Qurbani - Share in Cow', 'Qurbani of Cow - (Full Cow: PKR 126000)', 'Y', 18000),
(14, 'Qurbani Bakra', 'Qurbani of Bakra- (Full Cow: PKR 126000)', 'Y', 60000);

-- --------------------------------------------------------

--
-- Table structure for table `useritems`
--

CREATE TABLE `useritems` (
  `UI_ID` int(11) NOT NULL,
  `UI_USERID` int(11) DEFAULT NULL,
  `UI_ITEM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `useritems`
--

INSERT INTO `useritems` (`UI_ID`, `UI_USERID`, `UI_ITEM`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(8, 2, 8),
(9, 3, 9),
(10, 3, 10),
(11, 3, 11),
(12, 3, 12),
(19, 2, 10),
(20, 2, 6),
(21, 2, 14),
(22, 3, 13);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `U_ID` int(11) NOT NULL,
  `U_NAME` varchar(255) DEFAULT NULL,
  `U_CONTACT` varchar(255) DEFAULT NULL,
  `U_EMAIL` varchar(255) DEFAULT NULL,
  `U_ADDRESS` text DEFAULT NULL,
  `U_USERNAME` varchar(255) DEFAULT NULL,
  `U_PASSWORD` varchar(255) DEFAULT NULL,
  `U_TYPE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`U_ID`, `U_NAME`, `U_CONTACT`, `U_EMAIL`, `U_ADDRESS`, `U_USERNAME`, `U_PASSWORD`, `U_TYPE`) VALUES
(1, 'admin', '1234', 'admin@admin.com', 'address', 'admin', 'admin', 1),
(2, 'admin', '1234', 'admin@admin.com', NULL, 'admin', 'admin', 2),
(3, 'res', '1234', 'admin@admin.com', 'Hello World', 'res', 'res', 3),
(4, 'v', '1234', 'admin@admin.com', NULL, 'v', 'v', 4),
(5, 'cekebali', 'zacajuni', 'kopaveho', 'witeqyle', 'a2', 'a123', NULL),
(6, 'EATISAM', '03347851996', 'ranaeatisam@gmail.com', 'houseno 125 street 9 shams colony islamabad', 'EATISAM', 'BLVKSUPREME13', 4),
(7, 'EATISAM', '03347851996', 'ranaeatisam@gmail.com', 'houseno 125 street 9 shams colony islamabad', 'Shami', 'BLVKSUPREME13', 4),
(8, 'EATISAM', '03347851996', 'ranaeatisam@gmail.com', 'houseno 125 street 9 shams colony islamabad', 'volunteer', 'BLVKSUPREME13', 4),
(9, 'Aamir', '03060853904', 'aali59398@gmail.com', 'ads', 'aali', 'blvksupreme13', 4),
(10, 'waqas', '03347851996', 'waqas@gmail.com', 'houseno 125 street 9 shams colony islamabad', 'waqas', 'Aamirali1212', 4),
(11, 'EATISAM', '03347851996', 'ranaeatisam@gmail.com', 'houseno 125 street 9 shams colony islamabad', 'llj', 'rohan123123', 4),
(12, 'eatisam', '03347851996', 'eatisam77@gmail.com', 'houseno 125 street 9 shams colony islamabad', 'donor', 'blvksupreme13', 2),
(13, 'EATISAM', '03347851996', 'eatisam77@gmail.com', 'houseno 125 street 9 shams colony islamabad', 'resturant', 'blvksupreme13', 3),
(14, 'aamir', '03347851996', 'aamir@gmail.com', 'houseno 125 street 9 shams colony islamabad', 'xyzyu', 'blvksupreme13', 4);

-- --------------------------------------------------------

--
-- Table structure for table `usertypes`
--

CREATE TABLE `usertypes` (
  `UT_ID` int(11) NOT NULL,
  `UT_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertypes`
--

INSERT INTO `usertypes` (`UT_ID`, `UT_NAME`) VALUES
(1, 'admin'),
(2, 'donor'),
(3, 'resturant'),
(4, 'volunteer');

-- --------------------------------------------------------

--
-- Table structure for table `volunteertasks`
--

CREATE TABLE `volunteertasks` (
  `VT_ID` int(11) NOT NULL,
  `VT_USER` int(11) DEFAULT NULL,
  `VT_DONATION` int(11) DEFAULT NULL,
  `VT_STATUS` char(1) DEFAULT NULL,
  `VT_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `volunteertasks`
--

INSERT INTO `volunteertasks` (`VT_ID`, `VT_USER`, `VT_DONATION`, `VT_STATUS`, `VT_DATE`) VALUES
(1, 4, 2, 'D', '2022-12-13'),
(2, 4, 3, 'S', '2022-12-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `donationitems`
--
ALTER TABLE `donationitems`
  ADD PRIMARY KEY (`DI_ID`),
  ADD KEY `FK_DIDONATION` (`DI_DONATIION`),
  ADD KEY `FK_DIITEM` (`DI_ITEM`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`D_ID`),
  ADD KEY `FK_DCAMPAIGN` (`D_CAMPAIGN`),
  ADD KEY `FK_DDONOR` (`D_DONOR`),
  ADD KEY `FK_DTYPE` (`D_TYPE`);

--
-- Indexes for table `donationtype`
--
ALTER TABLE `donationtype`
  ADD PRIMARY KEY (`DT_ID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`I_ID`);

--
-- Indexes for table `useritems`
--
ALTER TABLE `useritems`
  ADD PRIMARY KEY (`UI_ID`),
  ADD KEY `ui_usertype` (`UI_USERID`),
  ADD KEY `ui_item` (`UI_ITEM`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`U_ID`),
  ADD KEY `FK_UUSERTYPE` (`U_TYPE`);

--
-- Indexes for table `usertypes`
--
ALTER TABLE `usertypes`
  ADD PRIMARY KEY (`UT_ID`);

--
-- Indexes for table `volunteertasks`
--
ALTER TABLE `volunteertasks`
  ADD PRIMARY KEY (`VT_ID`),
  ADD KEY `FK_VTDONATION` (`VT_DONATION`),
  ADD KEY `FK_VTVOLUNTEER` (`VT_USER`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `B_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `C_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `donationitems`
--
ALTER TABLE `donationitems`
  MODIFY `DI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `D_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donationtype`
--
ALTER TABLE `donationtype`
  MODIFY `DT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `I_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `useritems`
--
ALTER TABLE `useritems`
  MODIFY `UI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `U_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `usertypes`
--
ALTER TABLE `usertypes`
  MODIFY `UT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `volunteertasks`
--
ALTER TABLE `volunteertasks`
  MODIFY `VT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donationitems`
--
ALTER TABLE `donationitems`
  ADD CONSTRAINT `FK_DIDONATION` FOREIGN KEY (`DI_DONATIION`) REFERENCES `donations` (`D_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DIITEM` FOREIGN KEY (`DI_ITEM`) REFERENCES `items` (`I_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `FK_DCAMPAIGN` FOREIGN KEY (`D_CAMPAIGN`) REFERENCES `campaigns` (`C_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DDONOR` FOREIGN KEY (`D_DONOR`) REFERENCES `users` (`U_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DTYPE` FOREIGN KEY (`D_TYPE`) REFERENCES `donationtype` (`DT_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `useritems`
--
ALTER TABLE `useritems`
  ADD CONSTRAINT `ui_item` FOREIGN KEY (`UI_ITEM`) REFERENCES `items` (`I_ID`),
  ADD CONSTRAINT `ui_usertype` FOREIGN KEY (`UI_USERID`) REFERENCES `usertypes` (`UT_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_UUSERTYPE` FOREIGN KEY (`U_TYPE`) REFERENCES `usertypes` (`UT_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `volunteertasks`
--
ALTER TABLE `volunteertasks`
  ADD CONSTRAINT `FK_VTDONATION` FOREIGN KEY (`VT_DONATION`) REFERENCES `donations` (`D_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_VTVOLUNTEER` FOREIGN KEY (`VT_USER`) REFERENCES `users` (`U_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
