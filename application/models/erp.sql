-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 12, 2014 at 01:21 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16
<?php 
$query = mysql_query('
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `erp`
--
CREATE DATABASE IF NOT EXISTS `erp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `erp`;

-- --------------------------------------------------------

--
-- Table structure for table `accompaniants`
--

CREATE TABLE IF NOT EXISTS `accompaniants` (
  `alumid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `relationship` varchar(100) NOT NULL,
  PRIMARY KEY (`alumid`,`memberid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accompaniants`
--

INSERT INTO `accompaniants` (`alumid`, `memberid`, `name`, `age`, `gender`, `relationship`) VALUES
(3, 1, 'rahul', '20', 'M', 'son');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE IF NOT EXISTS `alumni` (
  `alumid` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `alumSince` int(11) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT '0',
  `YearOfJoining` varchar(255) NOT NULL,
  `Degree` varchar(255) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `HallofResidence` varchar(255) NOT NULL,
  `EmailAddress` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `PostalCode` varchar(255) NOT NULL,
  `Mobile` varchar(255) NOT NULL,
  `DateofBirth` varchar(255) NOT NULL,
  `MartialStatus` varchar(255) NOT NULL,
  `Industry` varchar(255) NOT NULL,
  `Profession` varchar(255) NOT NULL,
  `NameofOrganization` varchar(255) NOT NULL,
  `Designation` varchar(255) NOT NULL,
  `OrganizationCity` varchar(255) NOT NULL,
  `OrganizationState` varchar(255) NOT NULL,
  `OrganizationCountry` varchar(255) NOT NULL,
  `OrganizationPostalCode` varchar(255) NOT NULL,
  `AddressofCompany` varchar(255) NOT NULL,
  `RollNo` varchar(255) NOT NULL,
  PRIMARY KEY (`alumid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`alumid`, `FirstName`, `LastName`, `alumSince`, `image`, `YearOfJoining`, `Degree`, `Department`, `HallofResidence`, `EmailAddress`, `Address`, `City`, `State`, `Country`, `PostalCode`, `Mobile`, `DateofBirth`, `MartialStatus`, `Industry`, `Profession`, `NameofOrganization`, `Designation`, `OrganizationCity`, `OrganizationState`, `OrganizationCountry`, `OrganizationPostalCode`, `AddressofCompany`, `RollNo`) VALUES
(1, 'Padam', 'Harlalka', 1965, '1.jpg', '1961', 'Bachelor of Technology', 'Mechanical Engineering', 'Rajendra Prasad Hall', 'pharlalka@hotmail.com', '6/2 Sarat  Bose RoadFlat 101', 'Kolkata', 'West Bengal', 'India', '700020', '9830997654', '1/29/1943', 'Married', 'Electrical Panels', 'Engineer', 'Automatic Controls Corporation', 'Partner', 'Kolkata', 'West Bengal', 'India', '700001', '2 Brabourn Road10th Floor', ''),
(2, 'Ajay', 'Dube', 1965, '', '1961', 'Bachelor of Technology', 'Electronics and Electrical Communication Engineering', 'Rajendra Prasad ?Hall', 'ajaydube@hotmail.com', 'S 170 Greater Kailash II', 'New Delhi', 'Delhi', 'India', '110048', '''+918130961343', '1/26/1944', 'Married', 'IT', 'SOFTWARE CONSULTANCY', 'RETIRED', 'RETIRED', 'NEW DELHI', 'DELHI', 'INDIA', '110048', '', 'COM/13/62'),
(3, 'Basant Keshav', 'Natu', 1965, '3.jpg', '1961', 'Bachelor of Technology', 'Chemical Engineering', 'Rajendra Prasad ?Hall', 'bknatu@yahoo.com', 'G-II/603 Poonamkirti,Poonam NagarMahakalicaves Road Andheri(E)', 'Mumbai', 'Maharashtra', 'India', '4000933', '9619502152', '3/5/1942', 'Married', 'Steel', 'consultant', 'Mecon Ltd', 'DGM', 'Ranchi', 'Jharkhand', 'India', '834002', 'Vivekanand PathDoranda, Ranchi', 'che/49/61'),
(4, 'Anirban', 'Roy', 2000, '', '1996', 'Master of Business Administration', 'Humanities & Social Sciences', 'Ashutosh Mukherjee ?Hall', 'anirbanroy06@gmail.com', '1/28 Netaji Nagar Tollygung', 'Kolkata', 'West Bengal', 'India', '700092', '9836130004', '1/1/1980', 'Married', 'Education', 'Service', 'IBS', 'Administrator', 'Kolkata', 'West Bengal', 'India', '700092', '224 AJC Bose Rd', ''),
(5, 'Bijoy', 'Das', 1965, '5.jpg', '1960', 'Bachelor of Technology', 'Metallurgical & Materials Engineering', 'Patel ?Hall', 'bkdas45@yahoo.co.uk', 'B-210 Nirmala Plaza ApartmentForest Park', 'Bhubaneswar', 'Odisha', 'India', '751009', '650979801', '5/1/1945', 'Married', 'Research', 'Retired Scientist', 'C-MET', 'Former Executive Director', 'Pune', 'Maharashtra', 'India', '411008', 'PanchawatiPune - 411008,India', 'MET/60/109'),
(6, 'Shishir Kant', 'Misra', 1965, '6.jpg', '1961', 'Bachelor of Technology', 'Mechanical Engineering', 'Nehru Hall', 'eskaym@yahoo.com', 'Flat 1B. Merlin Niket88C Baburam Ghosh RoadP.O. Regent ParkTollygunge', 'Kolkata', 'West Bengal', 'India', '700040', '9432364338', '9/24/1943', 'Married', 'NONE', 'Retired', 'none', 'none', 'Kolkata', 'West Bengal', 'India', '700040', '', 'ME/77/61'),
(7, 'Ashit', 'Paladhi', 1965, '', '1961', 'Bachelor of Technology', 'Mechanical Engineering', 'Patel ?Hall', 'paladhiashit@yahoo.com', '109/1/3 Kali Kundu Lane , Howrah-711101', 'Howrah', 'West Bengal', 'India', '711101', '9830981001', '7/14/1943', 'Married', 'Manufacturing', 'Consultant', 'Essen Fabricators Pvt Ltd', 'Sr Technical Consultant', 'Kolkata', 'West Bengal', 'India', '711101', 'Room No 103A , Block -DN , Plot No -24 , Sector : V , Kolkata-700091', 'ME/79/62'),
(8, 'AKSHAYA DATT', 'TRIPATHI', 1965, '', '1961', 'Bachelor of Technology', 'Mining Engineering', 'Rajendra Prasad ?Hall', 'adtripathi2000@yahoo.com', 'Flat no.201,Mythri residency,13-6-429/21&22,Kanakadurga colony,mehdipatnam ring road,hyderabad-500067', 'hyderabad', 'telangana', 'india', '500067', '9246100515', '5/28/1943', 'Married', 'Mining', 'mIning engineer', 'NMDC limited', 'Executive director(retd.)', 'hyderabad', 'telangana', 'india', '500067', 'NMDC limited,castle hills,masab tank,hyderabad-500028', 'MIN/46/61'),
(9, 'Pankaj', 'Kumar', 1990, '', '1986', 'Bachelor of Technology', 'Mechanical Engineering', 'Nehru ?Hall', 'pkpankajkumar@gmail.com', 'Sterlite Copper,\nSipcot Imdustrial Complex,\nMadurai Bye pass road,\nTuticorin\n628002', 'Tuticorin', 'Tamil Nadu', 'India', '628002', '9597588588', '7/24/1968', 'Married', 'Metals', 'Private Srvice', 'Seas Sterlite', 'COO', 'Tuticorin', 'Tamil Nadu', 'India', '628002', 'Sterlite Copper,\nSesa Sterlite Ltd\nSipcot Industrial Complex,\nMadurai Bye Pass Road,\nTuticorin\n628002', '8626125'),
(10, 'Prakash', 'Bagri', 1990, '', '1986', 'Bachelor of Technology', 'Aerospace Engineering', 'Patel ?Hall', 'prakash.bagri@gmail.com', 'E25, Golden Enclave Apartments\nOld Airport Road', 'Bangalore', 'Karnataka', 'India', '560017', '9845013982', '6/7/1968', 'Married', 'Business Consulting', 'Business Consultant', 'PRB Partners', 'Founder & CEO', 'Bangalore', 'Karnataka', 'India', '560017', '', '8611102'),
(11, 'Satyajeet', 'Dodia', 1990, '', '1986', 'Bachelor of Technology', 'Computer Science & Engineering', 'Lala Lajpat Rai ?Hall', 'sdodia23@gmail.com', '10312 Dianella Ln', 'Austin', 'TX', 'USA', '78759', '5122992676', '9/9/1965', 'Married', 'Software', 'Business Analyst', 'Verizon Communications', 'Sr Member Tech Staff', 'Austin', 'TX', 'United States', '78759', '10312 Dianella Ln', ''),
(12, 'TAPAS', 'DAS', 1990, '', '1986', 'Bachelor of Technology', 'Electrical Engineering', 'Patel ?Hall', 'tapas_das@gail.co.in', 'FLAT NO - 167, GAIL APARTMENT, B - 9/1; SECTOR - 62, NOIDA - 201309', 'NOIDA', 'UTTAR PRADESH', 'INDIA', '201309', '9718291118', '11/8/1966', 'Married', 'GAS', 'SERVICE', 'GAIL (INDIA) LTD', 'DGM (O & M)', 'NOIDA', 'UTTAR PRADESH', 'INDIA', '201301', 'GAIL (INDIA) LTD, NCR (O & M), INFOHUB\nB - 35, 36, SECTOR - 1, NOIDA - 201301', '8618104'),
(13, 'rajesh', 'mehra', 1990, '', '1986', 'Bachelor of Technology', 'Aerospace Engineering', 'Lala Lajpat Rai ?Hall', 'rajesh_mehra@hotmail.com', '26/514, Air India Colony,\nSamtanagar,Kandivali(E),\nmumbai-400101', 'mumbai', 'maharashtra', 'india', '400101', '9820292458', '7/5/1967', 'Married', 'aviation', 'service', 'air india', 'chief aircraft engineer', 'mumbai', 'maharashtra', 'india', '400101', '', '8611101'),
(14, 'viraj', 'naidu', 1990, '', '1984', 'Bachelor of Technology', 'Mechanical Engineering', 'Radha Krishnan ?Hall', 'viraj.naidu@noricangroup.com', 'Alps 304, Heritage Estate, Doddaballapur Road, Yelahanka, Bangalore 560064', 'Bangalore', 'Karnataka', 'India', '560064', '9901451066', '9/17/1968', 'Married', 'Capital Equipment Manufacturing', 'Service', 'DISA INDIA LTD', 'Managing Director', 'Bangalore', 'Karnataka', 'India', '560058', 'DISA India Limited\n5th Floor, Kushal Garden Arcade\n1A , Peenya Industrial Area,\nIN Peenya II Phase,Bangalore - 560 058', ''),
(15, 'Manish', 'Chandra', 1990, '', '1986', 'Bachelor of Technology', 'Electrical Engineering', 'Radha Krishnan ?Hall', 'manish_chandra@hotmail.com', '16 Keats Grove', 'London', 'London', 'United Kingdom', '123456', '4.47776E+11', '4/4/1968', 'Married', 'Banking', '', 'BNP Paribas', '', 'London', '', '', '', '', ''),
(16, 'Vikas', 'Gangal', 1990, '', '1986', 'Bachelor of Technology', 'Civil Engineering', 'Nehru ?Hall', 'vikasgangal@gmail.com', 'J 402, Raghunath Vihar Sector 14, \nKharghar navi mumbai', 'Navi mumbai', 'Maharashtra', 'India', '410210', '9619336603', '2/20/1968', 'Married', 'Infrastructure', 'Service', 'Hindustan Colas ltd.', 'Regional Business Head', 'Mumbai', 'Maharashtra', 'India', '410210', '', ''),
(17, 'Prakash', 'Bagri', 1990, '', '1986', 'Bachelor of Technology', 'Aerospace Engineering', 'Patel ?Hall', 'prakash.bagri@gmail.com', 'E25, Golden Enclave Apartments\nOld Airport Road', 'Bangalore', 'Karnataka', 'India', '560017', '9845013982', '6/7/1968', 'Married', 'Business Consulting', 'Strategic Consultant', 'PRB Partners', 'Founder & CEO', 'Bangalore', 'Karnataka', 'India', '560017', '', '8611102'),
(18, 'Anupam', 'Mitra', 1990, '', '1986', 'Bachelor of Technology', 'Ocean Engineering & Naval Architecture', 'Lala Lajpat Rai ?Hall', 'anupam9178_2002@yahoo.co.in', '17/2,Mitrabagan Lane,Baidyapara,Baidyabati', 'Hooghly', 'West Bengal', 'India', '712222', '9836538086', '12/29/1967', 'Married', 'Shipping', 'Service', 'HDPEL', 'Head (Shipyard,Design & Planning)', 'Kolkata', 'West Bengal', 'India', '711106', '6,Howrah Road', '8629106'),
(19, 'Uday Shankar', 'Dutta', 1990, '', '1986', 'Bachelor of Technology', 'Mining Engineering', 'Patel ?Hall', 'usdutta@gmail.com', 'Fl#5, Narayani Apartment, 56 Rastraguru Avenue', 'Kolkata', 'West Bengal', 'India', '700028', '9830090084', '12/31/1967', 'Married', 'Engineering', 'Service', 'Va Tech Wabag Ltd', 'Dy. General Manager - Marketing', 'Kolkata', 'West Bengal', 'India', '700156', 'DLF IT Park, 3rd floor,\n8 M. A. R., New Town, Rajarhat,\nKolkata-700156', '8628107'),
(20, 'Rahul', 'Chakraborty', 1990, '', '1997', 'Bachelor of Technology', 'Mechanical Engineering', 'Rajendra Prasad ?Hall', 'chaxrahool@yahoo.com', 'Urban Regency, 443, Purbalok, Flat # C3, 3rd floor, PO - Mukundapur, Kolkata - 700 099', 'Kolkata', 'West Bengal', 'India', '700099', '9830794488', '6/8/1968', 'Married', '', '', 'West Bengal Pollution Control Board', '', 'Kolkata', '', '', '', '', ''),
(21, 'Naveen', 'Das', 1990, '', '1986', 'Bachelor of Technology', 'Civil Engineering', 'Nehru ?Hall', 'navdas@yahoo.com', '33, Lake Town, Block B\nKolkata', 'Kolkata', 'West Bengal', 'India', '700089', '9903090232', '8/11/1968', 'Married', 'Education', 'Professor', 'NSHM Business School', 'Director', 'Kolkata', 'West Bengal', 'India', '700053', 'NSHM Business School\n124 (60) BL Saha Road\nKolkata 700053', '8616119'),
(22, 'Nirav', 'Sampat', 1989, '', '1986', 'Bachelor of Science', 'Physics', 'Patel ?Hall', 'kloeckner@vedicsystems.com', '54, Clover Park Royale\nLane 7, Koregaon Park\nPune 411001', 'Pune', 'Maharashtra', 'India', '411001', '9823723123', '11/30/1967', 'Married', 'Chocolate/Confectionery/Food', 'Business', 'Vedic Pac-systems', 'Managing Director', 'Pune', 'Maharashtra', 'India', '411001', 'A/18, Mantri Manor\nLane 5, Koregaon Park \nPune 411001', ''),
(23, 'Rajesh', 'Agarwal', 1990, '', '1986', 'Bachelor of Technology', 'Electrical Engineering', 'Patel ?Hall', 'rajeshagar@gmail.com', 'D-803, Gulmohar\nAdarsh Palm Retreat\nDevarabeesanahalli\n(Near Intel)', 'Bangalore', 'Karnataka', 'India', '560103', '9880112175', '8/19/1967', 'Married', 'Information Technology', '', 'IBM', 'Operations Consulting Leader', 'Bangalore', '', 'India', '', '', '8623112'),
(24, 'Sanjeev', 'Sinha', 1990, '', '1986', 'Bachelor of Technology', 'Aerospace Engineering', 'Azad ?Hall', 'sanjeev700095@hotmail.com', 'Flat : 14/G, Tower-1, South City\n375 Prince Anwar Shah Road', 'Kolkata', 'WB', 'India', '700068', '9831172400', '7/27/1967', 'Married', 'IT', 'Service', 'Abzooba Inc.', 'EVP', 'Kolkata', 'WB', 'India', '700068', 'Infinity Benchmark, 18th Floor\nPlot ? G1, Block ? GP, \nSector - V, Salt Lake\nKolkata - 700091', '8611105'),
(25, 'Surojit', 'Bose', 1990, '', '1986', 'Bachelor of Technology', 'Civil Engineering', 'Patel ?Hall', 'surojit112233@gmail.com', 'P-24, Gariahat Road', 'Kolkata', 'West Bengal', 'India', '700029', '''+919831081453', '3/25/1966', 'Married', 'Civil Engineering', 'Consulting', 'Ernst & Young (EY)', 'Director', 'Bangalore', 'Karnataka', 'India', '560001', 'Ernst & Young LLP\n6th Floor, Canberra Block, UB City, 560001, Karnataka Bangalore, India', '8616120'),
(26, 'Sekhar', 'Reddy', 1990, '', '1986', 'Bachelor of Technology', 'Chemical Engineering', 'Patel ?Hall', 'reddysekhar@hotmail.com', '2856 Tansey lane\nChester springs\nPa-19425\nUSA', 'Chester springs', 'Pa', 'USA', '19425', '9492828597', '5/9/1968', 'Married', 'iT', 'Data sciences', 'Ust global', 'Director', 'Philadelphia', 'Pa', 'USA', '19425', '20 Enterprise, 4th Floor\nAliso Viejo, CA 92656', '8714102'),
(27, 'Praveen', 'Vashisht', 1991, '', '1986', 'Bachelor of Architecture', 'Architecture & Regional Planning', 'Patel ?Hall', 'pvashisht@hotmail.com', 'S-71 Second Floor\nGreater Kailash-2', 'New Delhi', 'Delhi', 'India', '110048', '9811117461', '6/15/1967', 'Married', 'Construction', 'Architect', 'Praveen Vashisht & Associates', 'Proprietor', 'New Delhi', 'Delhi', 'India', '110048', 'S-321, Greater Kailash-2\nNew Delhi', '8613113'),
(28, 'Puneet', 'Jasuja', 1990, '', '1986', 'Bachelor of Technology', 'Computer Science & Engineering', 'Patel ?Hall', 'pjasuja@hotmail.com', 'Turret House\nFitzgeorge Avenue\nNew Malden\n\nKT3 4SH', 'Kingston upon Thames', 'Surrey', 'UK', '99', '4.47854E+11', '5/27/1969', 'Married', '', '', 'HSBC', '', 'London', '', 'UK', '', '', ''),
(29, 'Arpan', 'Pal', 1990, '', '1986', 'Bachelor of Technology', 'Electronics and Electrical Communication Engineering', 'Nehru ?Hall', 'arpanpal2007@gmail.com', '1E-601, Alaktika Housing Complex\nNew Town, Rajarhat\nNear City Center 2', 'Kolkata', 'West Bengal', 'India', '700157', '9830112993', '8/2/1968', 'Married', 'ICT', 'R&D', 'Tata Consultancy Services Ltd.', 'Principal Scientist', 'Kolkata', 'West Bengal', 'India', '700156', 'Ecospace, Bldg. 1B\n4th Floor\nNew Town, Rajarhat', '105'),
(30, 'Jayanta', 'Roy', 1990, '', '1986', 'Bachelor of Technology', 'Electrical Engineering', 'Rajendra Prasad ?Hall', 'royjayant@gmail.com', 'Flat - A-4/5/18, Calcutta Greens\nH.I.G - A, Phase - I\n1050/2, Survey Park\nKolkata - 75', 'Kolkata', 'West Bengal', 'India', '700075', '9903394664', '9/26/1969', 'Married', '', '', 'ICRA Limited', '', 'Kolkata', 'West Bengal', 'India', '700020', 'ICRA Limited\nA-10 & A-11, F.M.C Fortuna, 3rd. Floor\n234/3A, A.J.C Bose Road\nKolkata - 700 020', '8618117'),
(31, 'Arindam', 'Chatterjee', 1990, '', '1986', 'Bachelor of Technology', 'Electronics and Electrical Communication Engineering', 'Rajendra Prasad ?Hall', 'arindamc68@gmail.com', 'Flat 2/4/16 HIG A Calcutta Green Ph-I, 1050/2 Survey Park', 'Kolkata', 'West Bengal', 'India', '700075', '9830060196', '4/9/1968', 'Married', 'IT Services', '', 'IBM India Pvt. :td.', '', 'Kolkata', '', '', '', '', '8619102'),
(32, 'Kishore', 'Ullal', 1965, '', '1960', 'Bachelor of Technology', 'Chemical Engineering', 'Nehru ?Hall', 'ksullal@yahoo.com', '"Sheel"\n124/7A  Erandavana', 'Pune', 'Maharashtra', 'India', '411004', '''+9860227633', '1/10/1944', 'Married', 'Chemical', 'Management', 'Indorama Synthetics', 'Technical Director', 'Jakata', '', 'Indonesia', '', 'PT Indorama Synthetics\nRasuna Said\nJakarata \nIndonesia', 'ChE/60/23'),
(33, 'Prithvi', 'Sarathy', 1965, '', '1960', 'Bachelor of Technology', 'Mechanical Engineering', 'Azad ?Hall', 'putsarathy@gmail.com', 'Apartment 403, Prestige Exotica,\n3, Cunningham Crescent Road,\nBangalore 560052.', 'Bangalore', 'Karnataka', 'India', '560052', '9880377640', '12/1/1944', 'Married', 'Auto & Steel', 'CEO', 'Rane(Madras)Ltd', 'President', 'Chennai', 'Tamilnadu', 'India', '', 'Retired', 'ME/60/97'),
(34, 'Sayantan', 'Bhowmik', 1990, '', '1986', 'Bachelor of Technology', 'Chemical Engineering', 'Radha Krishnan ?Hall', 'Sayantan.Bhowmik@ril.com', '303 Neel Avenue\nPlot No. 5\nSector-19\nNew Panvel', 'Navi Mumbai', 'Maharashtra', 'India', '410206', '9867740216', '9/26/1968', 'Single', 'Manufacturing', 'Management', 'Reliance Industries Limited', 'Assistant Vice-President', 'Patalganga', 'Maharashtra', 'India', '410220', 'Reliance Industries Limited\nB-4 MIDC Industrial Area\nPatalganga\nP.O. Rasayani\nDist. Raigad', '8614118'),
(35, 'Ranajoy', 'Ganguli', 1990, '', '1986', 'Bachelor of Technology', 'Civil Engineering', 'Rajendra Prasad ?Hall', 'ranajoy90@gmail.com', '930 Gannon Dr\nHoffman Estates, IL 60169', 'Hoffman Estates', 'Illinois', 'USA', '60169', '5074010304', '11/1/1967', 'Married', 'IT', '', 'IBM', 'Senior Manager', 'Chicago', '', '', '', '', '8616102'),
(36, 'Arpan', 'Pal', 1990, '', '1986', 'Bachelor of Technology', 'Electronics and Electrical Communication Engineering', 'Nehru ?Hall', 'arpanpal2007@gmail.com', '1E-601, Alaktika Housing Complex\nNew Town, Rajarhat', 'Kolkata', 'West Bengal', 'India', '700157', '9830112993', '8/2/1968', 'Married', 'ICT', 'R&D', 'Tata Consultancy Services Ltd.', 'Principal Scientist', 'Kolkata', 'West Bengal', 'India', '700157', 'Ecospace, Bldg. 1B, 4th Floor\nRajarhat, New Town\nKolkata - 700157', '105'),
(37, 'Probir', 'Gupta', 1965, '', '1960', 'Bachelor of Technology', 'Mechanical Engineering', 'Patel ?Hall', 'probir.gupta@gmail.com', '36C block B\nNew Alipore\nKolkata 700053', 'Kolkata', 'West Bengal', 'India', '700053', '9830898299', '12/4/1943', 'Single', 'Several', 'General Management', 'VGSOM', 'former Dean', 'Kolkata', 'WB', '', '', '', 'ME /60/86'),
(38, 'Dipak', 'Barma', 1975, '', '1970', 'Bachelor of Technology', 'Mechanical Engineering', 'Patel ?Hall', 'dipakbarma@gmail.com', '11 Mandeville Gardens', 'Kolkata', 'West Bengal', 'India', '700019', '9831800888', '3/24/1952', 'Married', 'HVAC', 'Business', 'Acrovent Systems Pvt Ltd', 'MD', 'Kolkata', 'West Bengal', 'India', '700019', '11 Mandeville Gardens', '224'),
(39, 'vikas', 'gangal', 1990, '', '1986', 'Bachelor of Technology', 'Civil Engineering', 'Nehru ?Hall', 'vikasgangal@gmail.com', 'J -402, Raghunath Vihar, Sector 14, Kharghar, \nNavi Mumbai', 'Navi Mumbai', 'Maharashtra', 'India', '410210', '9619336603', '2/20/1968', 'Married', 'Infrastructure', 'Service', 'HIndustan Colas Ltd.', 'Regional Business Head', 'Mumbai', 'Maharashtra', 'India', '410210', 'D - 500, TTC Industrial Area, Turbhe MIDC, Turbhe\nNavi Mumbai', ''),
(40, 'Pavan', 'Vaish', 1990, '', '1990', 'Bachelor of Technology', 'Electrical Engineering', 'Patel ?Hall', 'pavanvaish@vaishfamily.com', 'Court Greens 301A, Laburnum, Sector-28, Sushant Lok', 'Gurgaon', 'Haryana', 'India', '122002', '9810010092', '12/5/1967', 'Married', 'LPO', 'GlobaChief Operating Officer', 'United Lex', 'Global Chief Operating Officer', 'Gurgaon', 'Haryana', 'India', '122002', 'United Lex, Tower C, 15th Floor,\nBldg., 6, DLF Phase 3, W-Block\nDLF City, Gurgaon, Haryana', ''),
(41, 'Arun', 'Jain', 1990, '', '1986', 'Bachelor of Technology', 'Chemical Engineering', 'Azad ?Hall', 'arun.jain.18@gmail.com', 'A-401\nAvalon\nHiranandani Gardens\nPowai\nMumbai\n400076', 'Mumbai', 'Maharashtra', 'India', '400076', '9820588593', '12/18/1966', 'Married', 'Education', 'Teaching', 'IITians PACE', 'Sr. Faculty', 'Mumbai', '', '', '', '', '8614009'),
(42, 'Arunava', 'Chaudhuri', 1990, '', '1986', 'Bachelor of Technology', 'Electrical Engineering', 'Lala Lajpat Rai ?Hall', 'arunava.chaudhuri@gmail.com', '13240 Russet Leaf Lane', 'San diego', 'CA', 'USA', '92129', '''+18584490871', '1/5/1969', 'Married', '', '', 'Qualcomm', '', 'San diego', '', '', '', '', '8618118'),
(43, 'debjani', 'mandal', 2005, '', '2003', 'Master of Technology', 'Mechanical Engineering', 'Sarojini Naidu / Indira Gandhi ?Hall', 'debjani.mandal2009@gmail.com', 'newtown kolkata', 'kolkata', 'west bengal', 'India', '700091', '9831457464', '1/6/1981', 'Married', 'cts', 'Software engineer', 'cognizant technology solutions', 'Senior Consultant', 'kolkata', 'west bengal', 'India', '700091', 'bipl', ''),
(44, 'TAMAL', 'CHAKRAVORTY', 1965, '', '1960', 'Bachelor of Technology', 'Mechanical Engineering', 'Rajendra Prasad ?Hall', 'tamal.chakravorty@gmail.com', '10 SUNMAN APARTMENTS\n1077A SHIVAJINAGAR\nPUNE 411 106', 'PUNE', 'MAHARASHTRA', 'INDIA', '411016', '9422513712', '9/17/1942', 'Married', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '', 'I have retired since March, 2003, hence above fields are irrelevant', 'ME/137/60'),
(45, 'Sukanta', 'Padhy', 1986, '', '1986', 'Bachelor of Technology', 'Metallurgical & Materials Engineering', 'Azad ?Hall', 'skpadhy1232002@google.com', '402, Florencia, Sector-19,\nAiroli, Navi Mumbai, Maharastra\nPin : 400708', 'Mumbai', 'Maharastra', 'India', '400708', '9.1962E+11', '3/23/1968', 'Married', 'Manufacturing', 'Employeed', 'Alliance Tire Group', 'Chief Supply Chain Officer', 'Mumbai', 'Maharastra', 'India', '400002', 'Phoenix Mill compound, Block A , 5th Floor, Senapati Bapat Marg,\nLower Parel, Mumbai', ''),
(46, 'SUBRATA', 'DAS', 1990, '', '1990', 'Bachelor of Technology', 'Mining Engineering', 'Rajendra Prasad ?Hall', 'subratadas1967@yahoo.com', 'BUNGLOW NO 35\nDIGWADIH NO 12 COLONY\nTATA STEEL\nDHANBAD', 'DHANBAD', 'JHARKHAND', 'INDIA', '828112', '9234567846', '4/3/1968', 'Married', 'MINING AND METALS', 'SERVICE', 'TATA STEEL', 'CHIEF', 'DHANBAD', 'JHARKHAND', 'INDIA', '828112', 'Chief Office Jamadoba\nTata Steel\n828112', '28108(!?)'),
(47, 'SANTANU', 'BANERJEE', 1990, '', '1986', 'Bachelor of Technology', 'Mining Engineering', 'Nehru ?Hall', 'sbanerjee2@rediffmail.com', '27/L/5 RAJA S C MULLICK ROAD\nJADAVPUR\nKOLKATA - 700032', 'KOLKATA', 'WEST BENGAL', 'INDIA', '700032', '9831176702', '9/9/1968', 'Married', 'ENGINEERING', 'MARKETING AND SALES', 'TATA METALIKS DI PIPES LIMITED', 'GENERAL MANAGER', 'KOLKATA', 'WEST BENGAL', 'India', '700032', '27/L/5 RAJA S C MULLICK ROAD\nJADAVPUR\nKOLKATA - 700032', ''),
(48, 'Pankaj', 'Kumar', 1990, '', '1986', 'Bachelor of Technology', 'Mechanical Engineering', 'Nehru ?Hall', 'pkpankajkumar@gmail.com', 'COO,\nSterlite Copper,\nSipcot Industrial Complex,\nPO T V Puram,\nMadurai Bye Pass Road,', 'Tuticorin', 'Tamil Nadu', 'India', '628002', '9597588588', '7/24/1968', 'Married', 'Metals and Mining', 'Ind', 'Sesa Sterlite', 'COO', 'Tuticorin', 'Tamil Nadu', 'India', '', 'COO,\nSterlite Copper,\nSipcot Industrial Complex,\nPO T V Puram,\nMadurai Bye Pass Road,', '8626125'),
(49, 'Debjyoti', 'Gupta', 1990, '', '1986', 'Bachelor of Technology', 'Aerospace Engineering', 'Radha Krishnan ?Hall', 'debgupta09@gmail.com', 'T8/F1/E2 Eatern High Residential Complex, New Town , Rajarhat, Kolkata 700156', 'Kolkata', 'West Bengal', 'India', '700156', '8697247793', '9/17/1968', 'Married', 'IT', 'Software', 'Skytech Solutions Pvt Ltd', 'VP', 'Kolkata', 'WB', 'India', '700093', 'Bldg C, BIPPL, Block EP&GP\nBIPPL, Salt Lake Electorinic Complex\nSalt Lake, Sector V, Kolkata 700 156', ''),
(50, 'Jayanta', 'Roy', 1990, '', '1986', 'Bachelor of Technology', 'Electrical Engineering', 'Rajendra Prasad ?Hall', 'royjayant@gmail.com', 'Flat - A-4/5/18, Calcutta Greens\nH.I.G - A, Phase - I\n1050/2, Survey Park\nKolkata - 75', 'Kolkata', 'West Bengal', 'India', '700075', '9903394664', '9/26/1969', 'Married', '', '', 'ICRA Limited', '', 'Kolkata', 'West Bengal', 'India', '', 'Flat - A-4/5/18, Calcutta Greens\nH.I.G - A, Phase - I\n1050/2, Survey Park\nKolkata - 75', ''),
(51, 'BIJOY', 'DAS', 1965, '', '1960', 'Bachelor of Technology', 'Metallurgical & Materials Engineering', 'Patel Hall', 'bkdas45@yahoo.co.uk', 'B-202 Mahesh ApartmentsB-9 Vasundhara Enclave', 'New Delhi', 'Delhi', 'India', '110096', '9650979801', '5/1/1945', 'Married', 'National Labs', 'Scientist', 'Centre for Materials for Electronics Technology', 'Former Executive Director', 'Pune', 'Maharashtra', 'India', '411008', 'PanchawatiPune - 411008', 'MET/60/109'),
(52, 'PRASHANTA', 'CHATTERJEE', 1990, '', '1986', 'Bachelor of Technology', 'Mining Engineering', 'Rajendra Prasad ?Hall', 'prashantachatterjee1112@gmail.com', 'FLAT - C-26, V.N.COLONY, P.O.:BAHADURPUR Dt : BURDWAN\nWEST BENGAL  PIN - 713362', 'ASANSOL, INDIA', 'WEST BENGAL DO', 'INDIA', '713362', '9434795757', '8/9/1967', 'Married', 'C I L', 'MINING ENGINEER', 'C I L', 'Addl. General Manager', 'ASANSOL, INDIA', 'WEST BENGAL', 'INDIA', '713362', 'OFFICE OF THE GENERAL MANAGER, S.B.AREA  PO:BAHULA, \nDt: BURDWAN', '8628103'),
(53, 'Dipak', 'Barma', 1975, '', '1970', 'Bachelor of Technology', 'Mechanical Engineering', 'Patel ?Hall', 'db@dyhir.com', '11 Mandeville Gardens', 'Kolkata', 'West Bengal', 'India', '700019', '9831800888', '3/24/1952', 'Married', '', '', 'Acrovent SYSTEMS PVT LTD', 'Director', 'Kolkata', '', '', '', '', ''),
(54, 'Raj', 'Sengupta', 1975, '', '1970', 'Bachelor of Technology', 'Ocean Engineering & Naval Architecture', 'Patel ?Hall', 'rsengupta@mdoinc.net', '29 Gunpowder Drive', 'East Brunswick', 'New Jersey', 'USA', '8816', '19087200693', '7/12/1953', 'Married', 'Shipping', 'Naval Architect', 'Marine Design and Operations, Inc.', 'President', 'Colonia', 'New Jersey', 'USA', '7067', '15 Prospect Lane\nColonia, NJ. 07067\nUSA', '378'),
(55, 'DILIP', 'SAWANT', 1975, '', '1970', 'Bachelor of Technology', 'Ocean Engineering & Naval Architecture', 'Azad ?Hall', 'dilipnavalarc@rediffmail.com', '11, Sahjeevan Apartment, \nAirport  Road, \nChicalim,\nVasco-da-Gama\nGoa - 403 711', 'VASCO DA GAMA', 'GOA', 'INDIA', '403802', '9822581662', '1/22/1952', 'Married', 'Marine', 'Naval Architect', 'DILIP SAWANT', 'Proprietor', 'VASCO DA GAMA', 'GOA', 'INDIA', '403802', 'F02, Sapana Terraces\nSwatantra Path\nVasco da Gama\nGoa - 403 802', '70/NA/334');

-- --------------------------------------------------------

--
-- Table structure for table `callhistory`
--

CREATE TABLE IF NOT EXISTS `callhistory` (
  `alumid` int(11) NOT NULL,
  `callid` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(11) NOT NULL,
  `remarks` varchar(1000) NOT NULL,
  `nextdate` date NOT NULL,
  `nexttime` varchar(11) NOT NULL,
  PRIMARY KEY (`alumid`,`callid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `callhistory`
--

INSERT INTO `callhistory` (`alumid`, `callid`, `date`, `time`, `remarks`, `nextdate`, `nexttime`) VALUES
(3, 1, '2014-08-02', '10:54:24', 'never say never', '2014-08-29', 'scac'),
(3, 2, '2014-08-03', '12:27:30', 'asdas', '2014-08-14', 'sdas'),
(3, 3, '2014-08-04', '13:37:58', '', '2014-08-14', 'ghf6u'),
(3, 4, '2014-08-04', '17:55:42', '', '0000-00-00', ''),
(3, 5, '2014-08-06', '17:18:43', '', '0000-00-00', ''),
(3, 6, '2014-08-06', '17:18:46', '', '0000-00-00', ''),
(3, 7, '2014-08-06', '17:18:46', '', '0000-00-00', ''),
(3, 8, '2014-08-06', '17:18:47', '', '0000-00-00', ''),
(3, 9, '2014-08-06', '17:18:48', '', '0000-00-00', ''),
(3, 10, '2014-08-06', '17:18:48', '', '0000-00-00', ''),
(3, 11, '2014-08-06', '17:19:00', '', '0000-00-00', ''),
(5, 1, '2014-08-06', '17:19:07', 'dvfc', '2014-08-05', ''),
(5, 2, '2014-08-06', '17:19:13', '', '0000-00-00', ''),
(5, 3, '2014-08-06', '17:20:11', 'sdas', '2014-08-14', 'sada'),
(5, 4, '2014-08-12', '15:37:26', '', '0000-00-00', ''),
(5, 5, '2014-08-12', '15:37:40', '', '0000-00-00', ''),
(5, 6, '2014-08-12', '15:37:51', '', '0000-00-00', ''),
(5, 7, '2014-08-12', '15:39:15', '', '0000-00-00', ''),
(6, 1, '2014-08-04', '17:54:15', '', '0000-00-00', ''),
(6, 2, '2014-08-04', '17:54:53', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `notificationmembers`
--

CREATE TABLE IF NOT EXISTS `notificationmembers` (
  `userid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `message` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notificationmembers`
--

INSERT INTO `notificationmembers` (`userid`, `id`, `message`, `date`, `status`) VALUES
(2, 1, 'Alumni from 43 to 43 alloted to you', '2014-08-12', 1),
(2, 2, 'Alumni from 44 to 44 alloted to you', '2014-08-12', 1),
(2, 3, 'Alumni from 45 to 45 alloted to you', '2014-08-12', 1),
(2, 4, 'Alumni from 54 to 54 alloted to you', '2014-08-12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notificationsheads`
--

CREATE TABLE IF NOT EXISTS `notificationsheads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `notificationsheads`
--

INSERT INTO `notificationsheads` (`id`, `notification`, `date`, `status`) VALUES
(1, 'Alumni with id 7 has paid registration money', '2014-08-05', 1),
(2, 'Alumni with id 7 registered', '2014-08-05', 1),
(3, 'Alumni with id 3 has paid registration money', '2014-08-06', 1),
(4, 'Alumni with id 5 has paid registration money', '2014-08-06', 1),
(5, 'Alumni with id 1 registered', '2014-08-10', 1),
(6, 'Alumni with id 3 has paid registration money', '2014-08-12', 1),
(7, 'Alumni with id 3 has paid registration money', '2014-08-12', 1),
(8, 'Alumni with id 3 has paid registration money', '2014-08-12', 1),
(9, 'Alumni with id 3 has paid registration money', '2014-08-12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `alumid` int(11) NOT NULL,
  `paymentid` int(11) NOT NULL,
  `dateofpayment` date NOT NULL,
  `referenceNo` varchar(100) NOT NULL,
  `paymentAmt` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  PRIMARY KEY (`alumid`,`paymentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`alumid`, `paymentid`, `dateofpayment`, `referenceNo`, `paymentAmt`, `remarks`) VALUES
(3, 1, '2014-08-14', '12001', '1000', 'kldc'),
(3, 2, '0000-00-00', '', '', ''),
(3, 3, '2014-08-12', '111', '32', 'sdad'),
(3, 4, '2014-08-20', '1111', '1111', 'sda'),
(3, 5, '2014-08-13', 'SBI 1009', '50', 'free'),
(5, 1, '2014-08-14', 'sd', '11111', 'sda'),
(7, 1, '2014-08-20', 'iefb', '1000', 'kjdcn');

-- --------------------------------------------------------

--
-- Table structure for table `remarks`
--

CREATE TABLE IF NOT EXISTS `remarks` (
  `alumid` int(11) NOT NULL,
  `remark` varchar(100) NOT NULL,
  PRIMARY KEY (`alumid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remarks`
--

INSERT INTO `remarks` (`alumid`, `remark`) VALUES
(2, 'One Direction'),
(3, 'Let''s see if this works'),
(5, 'csdc');

-- --------------------------------------------------------

--
-- Table structure for table `sponsaux`
--

CREATE TABLE IF NOT EXISTS `sponsaux` (
  `companyid` int(10) NOT NULL,
  `howtopitch` varchar(500) NOT NULL,
  `finalstatus` varchar(500) NOT NULL,
  `remarks` varchar(500) NOT NULL,
  `completed` int(10) NOT NULL,
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsaux`
--

INSERT INTO `sponsaux` (`companyid`, `howtopitch`, `finalstatus`, `remarks`, `completed`) VALUES
(1, '', '', '', 0),
(2, '', '', '', 0),
(3, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sponscalling`
--

CREATE TABLE IF NOT EXISTS `sponscalling` (
  `companyid` int(10) NOT NULL,
  `firstcalldate` date NOT NULL,
  `latestcalldate` date NOT NULL,
  `nextcalldate` date NOT NULL,
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponscalling`
--

INSERT INTO `sponscalling` (`companyid`, `firstcalldate`, `latestcalldate`, `nextcalldate`) VALUES
(1, '0000-00-00', '0000-00-00', '0000-00-00'),
(2, '0000-00-00', '0000-00-00', '0000-00-00'),
(3, '0000-00-00', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `sponsdata`
--

CREATE TABLE IF NOT EXISTS `sponsdata` (
  `companyid` int(10) NOT NULL AUTO_INCREMENT,
  `touserid` int(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(300) NOT NULL,
  `contname` varchar(100) NOT NULL,
  `contdesig` varchar(200) NOT NULL,
  `contphone` varchar(50) NOT NULL,
  `contemailid` varchar(90) NOT NULL,
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sponsdata`
--

INSERT INTO `sponsdata` (`companyid`, `touserid`, `name`, `description`, `contname`, `contdesig`, `contphone`, `contemailid`) VALUES
(1, 8, 'Google', 'A software company', 'Larry Page', 'CEO', '444', 'larry.page@gmail.com'),
(2, 8, 'Google', 'A software company', 'Larry Page', 'CEO', '444', 'larry.page@gmail.com'),
(3, 9, 'GitHub', 'Code together, Code better', 'Tom Preston-Werner', 'CEO and Founder', '555', 'tom.preston.werner@github.com');

-- --------------------------------------------------------

--
-- Table structure for table `sponsproposal`
--

CREATE TABLE IF NOT EXISTS `sponsproposal` (
  `companyid` int(10) NOT NULL,
  `datesent` date NOT NULL,
  `toname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsproposal`
--

INSERT INTO `sponsproposal` (`companyid`, `datesent`, `toname`, `email`) VALUES
(1, '0000-00-00', '', ''),
(2, '0000-00-00', '', ''),
(3, '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `alumid` int(11) NOT NULL AUTO_INCREMENT,
  `search` int(11) NOT NULL,
  `called` int(11) NOT NULL,
  `register` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`alumid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='stores status about the alumni' AUTO_INCREMENT=55 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`alumid`, `search`, `called`, `register`, `pay`, `userid`) VALUES
(1, 0, 2, 2, 0, 2),
(2, 0, 0, 0, 0, 2),
(3, 2, 2, 2, 2, 2),
(4, 0, 0, 0, 0, 2),
(5, 1, 0, 2, 2, 2),
(6, 0, 0, 0, 0, 2),
(7, 0, 0, 2, 2, 2),
(8, 0, 0, 0, 0, 2),
(9, 0, 0, 0, 0, 2),
(10, 0, 0, 0, 0, 2),
(11, 0, 0, 0, 0, 3),
(12, 1, 3, 2, 0, 3),
(13, 0, 0, 0, 0, 3),
(14, 0, 0, 0, 0, 3),
(15, 0, 0, 0, 0, 3),
(16, 0, 0, 0, 0, 3),
(17, 0, 0, 0, 0, 3),
(18, 0, 0, 0, 0, 5),
(19, 0, 0, 0, 0, 5),
(20, 0, 0, 0, 0, 5),
(21, 0, 0, 0, 0, 5),
(22, 0, 0, 0, 0, 5),
(23, 0, 0, 0, 0, 5),
(24, 0, 0, 0, 0, 5),
(25, 0, 0, 0, 0, 5),
(26, 0, 0, 0, 0, 5),
(27, 0, 0, 0, 0, 5),
(28, 0, 0, 0, 0, 5),
(29, 0, 0, 0, 0, 5),
(30, 0, 0, 0, 0, 5),
(31, 0, 0, 0, 0, 5),
(32, 0, 0, 0, 0, 5),
(33, 0, 0, 0, 0, 5),
(34, 0, 0, 0, 0, 5),
(35, 0, 0, 0, 0, 5),
(36, 0, 0, 0, 0, 5),
(37, 0, 0, 0, 0, 2),
(38, 0, 0, 0, 0, 2),
(39, 0, 0, 0, 0, 2),
(40, 0, 0, 0, 0, 2),
(41, 0, 0, 0, 0, 2),
(42, 0, 0, 0, 0, 2),
(43, 0, 0, 0, 0, 2),
(44, 0, 0, 0, 0, 2),
(45, 0, 0, 0, 0, 2),
(46, 0, 0, 0, 0, 2),
(47, 0, 0, 0, 0, 2),
(48, 0, 0, 0, 0, 2),
(49, 0, 0, 0, 0, 2),
(50, 0, 0, 0, 0, 2),
(51, 0, 0, 0, 0, 2),
(52, 0, 0, 0, 0, 2),
(53, 0, 0, 0, 0, 2),
(54, 0, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `privilege` int(11) NOT NULL COMMENT 'can have 4 values',
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `name`, `username`, `password`, `privilege`, `email`) VALUES
(1, 'Admin', 'admin', '33ee7e1eb504b6619c1b445ca1442c21', 3, 'mishra.rahul1712@gmail.com'),
(2, 'Arpit', 'arpit', '33ee7e1eb504b6619c1b445ca1442c21', 1, 'arpit366@gmail.com'),
(3, 'Rahul', 'root', '33ee7e1eb504b6619c1b445ca1442c21', 1, 'namannishesh@gmail.com'),
(4, 'testuser', 'test', '33ee7e1eb504b6619c1b445ca1442c21', 2, 'user@user.com'),
(5, 'GSEC 1', 'gsec', '33ee7e1eb504b6619c1b445ca1442c21', 1, 'kannan.siddharth12@gmail.com'),
(6, 'MEMBER', 'studmem', '33ee7e1eb504b6619c1b445ca1442c21', 2, 'kannan.siddharth12@gmail.com'),
(7, 'rahul', 'acyut', 'f650cc053a33e3a12f2ef3a87fd2dcf1', 1, 'acyut.rahul@gmail.com'),
(8, 'Sushim Kumar Dasgupta', 'jhi', 'f650cc053a33e3a12f2ef3a87fd2dcf1', 1, 'bu@b.com'),
(9, 'mujk', 'hjk', 'f650cc053a33e3a12f2ef3a87fd2dcf1', 1, 'fg@gmail.com'),
(10, 'skdjn', 'jhg', '25d55ad283aa400af464c76d713c07ad', 1, 'nh@gmail.com');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accompaniants`
--
ALTER TABLE `accompaniants`
  ADD CONSTRAINT `accompaniants_ibfk_1` FOREIGN KEY (`alumid`) REFERENCES `alumni` (`alumid`);

--
-- Constraints for table `callhistory`
--
ALTER TABLE `callhistory`
  ADD CONSTRAINT `callhistory_ibfk_1` FOREIGN KEY (`alumid`) REFERENCES `alumni` (`alumid`);

--
-- Constraints for table `notificationmembers`
--
ALTER TABLE `notificationmembers`
  ADD CONSTRAINT `notificationmembers_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`alumid`) REFERENCES `alumni` (`alumid`);

--
-- Constraints for table `remarks`
--
ALTER TABLE `remarks`
  ADD CONSTRAINT `remarks_ibfk_1` FOREIGN KEY (`alumid`) REFERENCES `alumni` (`alumid`);

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`alumid`) REFERENCES `alumni` (`alumid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;');
?>