--
-- Database: `movie_ticket_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `Bookings`
--

CREATE TABLE `Bookings` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `day_id` int(11) DEFAULT NULL,
  `day_name` varchar(100) DEFAULT NULL,
  `month` varchar(200) DEFAULT NULL,
  `seats` varchar(4096) DEFAULT NULL,
  `time_slot` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Bookings`
--

INSERT INTO `Bookings` (`id`, `movie_id`, `user_id`, `day_id`, `day_name`, `month`, `seats`, `time_slot`) VALUES
(23, 1, 1, 17, 'Sunday', 'Mar', '1_8,1_7,2_7,2_8', '9:00 PM'),
(24, 2, 1, 17, 'Sunday', 'Mar', '1_1,1_2,1_4,1_3,1_5,10_3,10_4,10_5,10_2,10_1,1_8,2_10,1_10,1_9', '9:00 PM'),
(25, 4, 1, 15, 'Friday', 'Mar', '1_3,1_4,1_5', '6:00 PM'),
(26, 1, 1, 23, 'Saturday', 'Mar', '1_1,1_2,1_3', '9:00 PM'),
(27, 3, 1, 28, 'Sunday', 'Apr', '2_8', '6:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `id` int(11) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`id`, `username`, `password`, `name`) VALUES
(1, 'krsna@gmail.com', 'password', NULL),
(2, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `release_date` varchar(100) DEFAULT NULL,
  `place` varchar(200) DEFAULT NULL,
  `about` varchar(8192) DEFAULT NULL,
  `casting` varchar(1024) DEFAULT NULL,
  `tag_name` varchar(200) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `img`, `title`, `duration`, `release_date`, `place`, `about`, `casting`, `tag_name`, `price`) VALUES
(1, '/static/assets/images/dune.png', 'Dune: Part Two', '170 min', '28 February 2024', 'English', 'Paul Atreides unites with Chani and the Fremen while on a warpath of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, he endeavors to prevent a terrible future only he can foresee.', 'Timothée Chalamet, Josh Brolin, Rebecca Ferguson, Zendaya', 'dune', 100),
(2, '/static/assets/images/hareefa.png', 'El Hareefa\r\n', '115 min', '3 January 2024', 'Arabic', 'Life circumstances push the football lover, Maged, to let go of his luxurious life and transfer from his private school to a public one. There, through his football skills, Maged is able to earn the respect of his new friends and joins their street football team. Together, they dream of joining “El Hareefa” school tournament to win its one million pound prize!', 'Bayomi Fouad, Nour El Nabawy, Ahmed Hossam, Nour Ehab', 'Elhareefa', 85),
(3, '/static/assets/images/rehla.png', 'Rehla 404\r\n', '110 min', '24 January 2024', 'Arabic', 'A few days before she travels to Mecca to perform Hajj, Ghada faces an emergency which forces her to reach out to people from her tainted past with whom she had cut off contact in order to collect a large sum of money. So, as she collects the money, will she manage to go to Mecca, or get tangled up in the past webs?', 'Sherein Reda, Mohamed Mamdouh, Mohamed Farrag, Mona Zaki', 'rehla', 85),
(4, '/static/assets/images/keeper.png', 'The Beekeeper\r\n', '105 min', '11 January 2024', 'English', 'In The Beekeeper, one man’s brutal campaign for vengeance takes on national stakes after he is revealed to be a former operative of a powerful and clandestine organization known as “Beekeepers.”', 'Josh Hutcherson, Jason Statham, Jeremy Irons, Emmy Raver-Lampman, Bobby Naderi, Phylicia Rashad', 'bookkeeper', 115),
(5, '/static/assets/images/web.png', 'Madame Web\r\n', '115 min', '15 February 2024', 'English', '\"Meanwhile, in another universe…” In a switch from the typical genre, Madame Web tells the standalone origin story of one of Marvel publishing most enigmatic heroines. The suspense-driven thriller stars Dakota Johnson as Cassandra Webb, a paramedic in Manhattan who may have clairvoyant abilities. Forced to confront revelations about her past, she forges a relationship with three young women destined for powerful futures...if they can all survive a deadly present.', 'Dakota Johnson, Sydney Sweeney, Isabela Merced, Celeste O’Connor, Tahar Rahim, Mike Epps, Emma Roberts, Adam Scott', 'madame', 120),
(6, '/static/assets/images/abo.png', 'Abo Nassab\r\n', '110 min', '21 December 2023', 'Arabic', '“Ali” is a pediatrician with a quirky personality and is about to marry his beautiful fiancée “Dalia”. Hilarious events begin to unfold on the day of the wedding, when the father of the bride and ex conman “Daoud” is released from prison. “Ali” suddenly finds himself embroiled in a gang revenge war which spoils his wedding day and his highly anticipated honeymoon.', 'Yasmine Sabri, Mohamed Emam, Maged El Kedwany, Mohamed Sarwat', 'abo', 100);

-- --------------------------------------------------------

--
-- Table structure for table `screen_time`
--

CREATE TABLE `screen_time` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `screen_name` varchar(200) NOT NULL,
  `time` varchar(4096) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `screen_time`
--

INSERT INTO `screen_time` (`id`, `movie_id`, `screen_name`, `time`) VALUES
(1, 1, 'Screen 1', '1,2,3,4,5'),
(2, 2, 'Screen 2', '1,2,3,4,5'),
(3, 3, 'Screen 3', '1,2,3,4,5'),
(4, 4, 'Screen 4', '1,2,3,4,5'),
(5, 5, 'Screen 5', '1,2,3,4,5'),
(6, 6, 'Screen 6', '1,2,3,4,5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bookings`
--
ALTER TABLE `Bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `screen_time`
--
ALTER TABLE `screen_time`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bookings`
--
ALTER TABLE `Bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `Customer`
--
ALTER TABLE `Customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `screen_time`
--
ALTER TABLE `screen_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

