-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2026 at 05:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marshfield_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `id` int(11) NOT NULL,
  `Source` varchar(255) DEFAULT NULL,
  `Source type` varchar(100) DEFAULT NULL,
  `School` varchar(100) DEFAULT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `Notes` text DEFAULT NULL,
  `Hyperlink` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `Source`, `Source type`, `School`, `Department`, `Notes`, `Hyperlink`) VALUES
(1, 'Source', 'Source type', 'School', 'Department', 'Notes', 'Hyperlink'),
(2, 'Infant School Log Book 1877 - 1905', 'Log Book', 'Chapel Green Board School', 'Infant', 'Not available', ''),
(3, 'Infant School Log Book 1877 - 1905', 'Log Book', 'Thornton Lane Board School', 'Infant', 'Not available', ''),
(4, 'Infant School Log Book 1905 - 1939', 'Log Book', '', 'Infant', 'Not available', ''),
(5, 'Infant School Log Book 1905 - 1939', 'Log Book', '', 'Infant', 'Not available', ''),
(6, 'Infant School Log Book 1939 - 1969', 'Log Book', 'Marshfield School', 'Infant', '', ''),
(7, 'Infant School Log Book 1969 - 1973', 'Log Book', 'Marshfield School', 'Infant', '', ''),
(8, 'Infant Admission Register Sep 1943 - Jan 1954', 'Admission Register', 'Marshfield School', 'Infant', '', ''),
(9, 'Infant Admission Register Sep 1954 - Jul 1965', 'Admission Register', 'Marshfield School', 'Infant', '', ''),
(10, 'Infant Admission Register Sep 1965 - Jan 1973', 'Admission Register', 'Marshfield School', 'Infant', '', ''),
(11, 'Photos - May day celebrations', 'Images', 'Marshfield School', 'Infant', '', ''),
(12, 'Junior School Log Book 1877 - 1910', 'Log Book', 'Chapel Green Board School', 'Junior', 'Not available', ''),
(13, 'Junior School Log Book 1877 - 1910', 'Log Book', 'Thornton Lane Board School', 'Junior', 'Not available', ''),
(14, 'Junior School Log Book 1910 - 1933', 'Log Book', '', 'Junior', 'Not available', ''),
(15, 'Junior School Log Book 1933 - 1964', 'Log Book', 'Marshfield School', 'Junior', '', ''),
(16, 'Junior Admission Register Jan 1894 - Feb 1901', 'Admission Register', 'Thornton Lane Board School', 'Junior', '', ''),
(17, 'Junior Admission Register Apr 1906 - Sep 1911', 'Admission Register', 'Marshfield School', 'Junior', '', ''),
(18, 'Junior Admission Register Aug 1911 - Jul 1917', 'Admission Register', 'Marshfield School', 'Junior', '', ''),
(19, 'Senior Admission Register Jul 1901 - Jul 1928', 'Admission Register', 'Marshfield School', 'Senior', '', ''),
(20, 'Junior Admission Register Jan Aug 1928 - Jan 1944', 'Admission Register', 'Marshfield School', 'Junior', '', ''),
(21, 'Junior Admission Register Mar 1944 - Feb 1954', 'Admission Register', 'Marshfield School', 'Junior', '', ''),
(22, 'Junior Admission Register Mar 1954 - Jan 1963', 'Admission Register', 'Marshfield School', 'Junior', '', ''),
(23, 'Junior Admission Register Sep 1971 - Sep 1973', 'Admission Register', 'Marshfield School', 'Junior', '', ''),
(24, 'Punishment book 1902 - 1965', 'Punishment Book', 'Marshfield School', 'Junior', '', ''),
(25, 'Miss Teal\'s scapbook 1931 - 1952', 'Images', 'Marshfield School', 'Junior', '', ''),
(26, 'Miss Teal\'s scrapbook tour to Northern Ireland 1949', 'Images', 'Marshfield School', 'Junior', '', ''),
(27, 'Miss Teal\'s scrapbook tour to London 1950 and Bournemouth 1851', 'Images', 'Marshfield School', 'Junior', '', ''),
(28, 'Photograph album circa 1955-56', 'Images', 'Marshfield School', 'Junior', '', ''),
(29, 'Miss Leach/Mrs Emmerson\'s album', 'Images', 'Marshfield School', 'Junior', '', ''),
(30, 'Miscellaneous pictures', 'Images', 'Marshfield School', 'Junior', '', ''),
(31, 'Marshfield School Magazine 1926', 'Images', 'Marshfield School', 'Junior', '', ''),
(32, 'Extracts from Marshfield Infant Log book 1905 - 1936', 'Images', 'Marshfield School', 'Junior', '', ''),
(33, 'Proposed plan of Junior and Senior Mixed School', 'Plan', 'Marshfield School', 'Junior', '', ''),
(34, 'Plan for new Infant School', 'Plan', 'Marshfield School', 'Infant', '', ''),
(35, 'Plan for new Thornton Lane Board School', 'Plan', 'Thornton Lane Board School', '', '', ''),
(36, 'Thornton Lane School opening', 'Doc', 'Thornton Lane Board School', '', '', ''),
(37, 'Extracts form Bradford School Board Minutes 1877-78', 'School Board', 'Bradford School Board', '', '', ''),
(38, 'Plan of Chapel Green Board School', 'Plan', 'Chapel Green Board School', '', '', ''),
(39, 'Plan of Chapel Green Church School', 'Plan', 'Chapel Green Church School', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff_db`
--

CREATE TABLE `staff_db` (
  `id` int(11) NOT NULL,
  `School Name` varchar(100) DEFAULT NULL,
  `Dept` varchar(50) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `First Name` varchar(100) DEFAULT NULL,
  `Last Name` varchar(100) DEFAULT NULL,
  `Position` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Year name recorded` varchar(50) DEFAULT NULL,
  `Left School` varchar(50) DEFAULT NULL,
  `Notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_db`
--

INSERT INTO `staff_db` (`id`, `School Name`, `Dept`, `Title`, `First Name`, `Last Name`, `Position`, `Address`, `Year name recorded`, `Left School`, `Notes`) VALUES
(1, 'School Name', 'Dept', 'Title', 'Last Name', 'First Name', 'Position', 'Address', 'Year name recorded', 'Left School', 'Notes'),
(2, 'Chapel Green Board School', 'Infant', 'Miss', 'Knowles ', 'Maria Ann', 'Head Mistress', '', '1877', '', ''),
(3, 'Chapel Green Board School', 'Infant', 'Miss', 'Rhodes', 'Louisa', 'Assistant Mistress', '', '1877', '', ''),
(4, 'Chapel Green Board School', 'Infant', 'Miss', 'Foster', 'Sarah Elizabeth', 'Monitor', '', '1877', '', ''),
(5, 'Chapel Green Board School', 'Infant', 'Miss', 'Jennings', 'Kate', 'Candidate', '', '1878', '', ''),
(6, 'Chapel Green Board School', 'Infant', 'Mrs', 'Pearson (Knowles)', 'Maria Ann', 'Head Mistress', '', '1878', '31/07/1878', 'Married James Fletcher Pearson 1878'),
(7, 'Chapel Green Board School', 'Infant', 'Miss', 'Davy', 'Sarah Ann', 'Monitor', '', '1878', '', ''),
(8, 'Chapel Green Board School', 'Infant', 'Miss', 'Jennings', 'Kate', 'Candidate', '', '1879', '03/03/1879', 'Transferred to Mixed department'),
(9, 'Chapel Green Board School', 'Infant', 'Miss', 'Mathews', 'Sarah Elizabeth', 'Head Mistress', '', '1879', '', ''),
(10, 'Chapel Green Board School', 'Infant', 'Miss', 'Foster', 'Sarah Elizabeth', '1st year Pupil Teacher', '', '1879', '', ''),
(11, 'Chapel Green Board School', 'Infant', 'Miss', 'Davy', 'Sarah Ann', 'Candidate', '', '1879', '', ''),
(12, 'Chapel Green Board School', 'Infant', 'Miss', 'Hirst', 'R', 'Assistant Mistress', '', '1879', '', ''),
(13, 'Chapel Green Board School', 'Infant', 'Miss ', 'Davy', 'Sarah Ann', 'Monitor', '', '1879', '15/09/1879', 'Moved to Ryan Infant School'),
(14, 'Chapel Green Board School', 'Infant', 'Miss', 'Speight', 'Emily Moorhouse', '4th year Pupil Teacher', '', '1879', '', ''),
(15, 'Chapel Green Board School', 'Infant', 'Miss', 'Hirst', 'E', 'Assistant Mistress', '', '1879', '17/11/1879', 'Moved to Great Horton School'),
(16, 'Chapel Green Board School', 'Infant', 'Miss', 'Foster', 'Sarah Elizabeth', '3rd Year Pupil Teacher', '', '1880', '', ''),
(17, 'Chapel Green Board School', 'Infant', 'Miss', 'Mathews', 'Sarah', 'Head Mistress', '', '1880', '', ''),
(18, 'Chapel Green Board School', 'Infant', 'Miss', 'Speight', 'Emily Moorhouse', '4th year Pupil Teacher', '', '1880', '16/01/1880', 'Moved to Darlington Training College'),
(19, 'Chapel Green Board School', 'Infant', 'Miss', 'Brooke', 'Mary Hannah', '', '', '1880', '', 'Temperary assistance'),
(20, 'Chapel Green Board School', 'Infant', 'Miss', 'Brooke', 'Mary Hannah', '', '', '1880', '13/02/1880', 'Returned to Gtreat Horton Infants School'),
(21, 'Chapel Green Board School', 'Infant', 'Miss', 'Coulter', 'Emily Jane', 'Monitor', '', '1880', '', 'Previously at Bramley Street Infant School'),
(22, 'Chapel Green Board School', 'Infant', 'Miss', 'Whitaker', 'Alice', 'Assistant Mistress', '', '1880', '', ''),
(23, 'Chapel Green Board School', 'Infant', 'Miss', 'Mathews', 'Sarah', 'Head Mistress', '', '1881', '', ''),
(24, 'Chapel Green Board School', 'Infant', 'Miss', 'Whitaker', 'Alice', 'Assistant Mistress', '', '1881', '', ''),
(25, 'Chapel Green Board School', 'Infant', 'Miss', 'Dennis', 'Henrietta', '1st year Pupil Teacher', '13, Leatham Street', '1881', '', ''),
(26, 'Chapel Green Board School', 'Infant', 'Miss', 'Coulter', 'Emily', '1st year Pupil Teacher', '19, Elizabeth Street, Little Horton', '1881', '', ''),
(27, 'Chapel Green Board School', 'Infant', 'Miss', 'Carter', 'Sarah', 'Head Mistress', '', '1882', '', ''),
(28, 'Chapel Green Board School', 'Infant', 'Miss', 'Whitaker', 'Alice', 'Assistant Mistress', '', '1882', '', ''),
(29, 'Chapel Green Board School', 'Infant', 'Miss', 'Dennis', 'Henrietta', '2nd year Pupil Teacher', '10, Mial Street', '1882', '', ''),
(30, 'Chapel Green Board School', 'Infant', 'Miss', 'Coulter', 'Emily Jane', '2nd year Pupil Teacher', '', '1882', '', ''),
(31, 'Chapel Green Board School', 'Infant', 'Miss', 'Mathews', 'Sarah', 'Head Mistress', '', '1883', '02/02/1883', 'Resigned'),
(32, 'Chapel Green Board School', 'Infant', 'Miss', 'Blackburn', 'Clara', 'Head Mistress', '', '1883', '', ''),
(33, 'Chapel Green Board School', 'Infant', 'Miss', 'Coulter', 'Emily Jane', '2nd year Pupil Teacher', '', '1883', '09/03/1883', 'Transferred to Ryan Street Girls'),
(34, 'Chapel Green Board School', 'Infant', 'Miss', 'Pickles', 'Emma', 'Monitor', '', '1883', '', ''),
(35, 'Chapel Green Board School', 'Infant', 'Miss', 'Dennis', 'Henrietta', '2nd year Pupil Teacher', '', '1883', '21/05/1883', 'Transferred to Princeville Infants'),
(36, 'Chapel Green Board School', 'Infant', 'Miss', 'Pickard', 'Sarah J', 'Monitor', '', '1883', '', ''),
(37, 'Chapel Green Board School', 'Infant', 'Miss', 'Blackburn', 'Clara', 'Head Mistress', '', '1884', '', ''),
(38, 'Chapel Green Board School', 'Infant', 'Miss', 'Pickles', 'Emma', 'Candidate for year 2', '10,Sherbourne Road', '1884', '', ''),
(39, 'Chapel Green Board School', 'Infant', 'Miss', 'Pickles', 'Sarah J', 'Candidate for year 2', '', '1884', '', ''),
(40, 'Chapel Green Board School', 'Infant', 'Miss', 'Blackburn', 'Clara', 'Head Mistress', '', '1884', '04/07/1884', 'Transferred to Tyersal School'),
(41, 'Chapel Green Board School', 'Infant', 'Miss', 'Greenwood', 'Mary Elizabeth', 'Head Mistress', '', '1886', '', ''),
(42, 'Chapel Green Board School', 'Infant', 'Miss', 'Pickles', 'Emma', '4th year Pupil Teacher', '', '1886', '', ''),
(43, 'Chapel Green Board School', 'Infant', 'Miss', 'Pickard', 'Sarah J', '3rd Year Pupil Teacher', '', '1886', '', ''),
(44, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', '', '', ''),
(45, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', '', '', ''),
(46, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', '', '', ''),
(47, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', '', '', ''),
(48, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', '', '', ''),
(49, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', '', '', ''),
(50, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', '', '', ''),
(51, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', '', '', ''),
(52, 'Thornton Lane Board School', 'Infant', 'Miss', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_db`
--
ALTER TABLE `staff_db`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `staff_db`
--
ALTER TABLE `staff_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
