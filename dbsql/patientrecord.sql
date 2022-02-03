-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2022 at 03:56 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patientrecord`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_patientadmission`
--

CREATE TABLE `add_patientadmission` (
  `a_id` int(11) NOT NULL,
  `a_wardname` varchar(255) NOT NULL,
  `a_date` date NOT NULL,
  `a_admittedby` varchar(255) NOT NULL,
  `a_user_id` int(11) NOT NULL,
  `a_fname` varchar(255) NOT NULL,
  `a_mname` varchar(255) NOT NULL,
  `a_lname` varchar(255) NOT NULL,
  `a_gender` varchar(255) NOT NULL,
  `a_age` varchar(255) NOT NULL,
  `a_physician_id` varchar(255) NOT NULL,
  `a_father` varchar(255) NOT NULL,
  `a_mother` varchar(255) NOT NULL,
  `a_chargetoaccount` varchar(255) NOT NULL,
  `a_relationtopatient` varchar(255) NOT NULL,
  `a_address` varchar(255) NOT NULL,
  `a_number` varchar(255) NOT NULL,
  `a_totalpayment` varchar(255) NOT NULL,
  `a_dischargedate` date NOT NULL,
  `a_complaint` text NOT NULL,
  `a_completediagnosis` text NOT NULL,
  `a_medication` varchar(255) NOT NULL,
  `a_conditiontodischarge` varchar(255) NOT NULL,
  `a_remarks` varchar(255) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_patientadmission`
--

-- INSERT INTO `add_patientadmission` (`a_id`, `a_wardname`, `a_date`, `a_admittedby`, `a_user_id`, `a_fname`, `a_mname`, `a_lname`, `a_gender`, `a_age`, `a_physician_id`, `a_father`, `a_mother`, `a_chargetoaccount`, `a_relationtopatient`, `a_address`, `a_number`, `a_totalpayment`, `a_dischargedate`, `a_complaint`, `a_completediagnosis`, `a_medication`, `a_conditiontodischarge`, `a_remarks`, `log_time`) VALUES
-- (5, 'Pulmonary', '2019-05-02', 'Nina', 1, 'James', 'Fernandez', 'Navarro', 'Male', '25', '53', '', '', '', '', '', '', '', '0000-00-00', '', 'abab', 'ab', '', '', '2019-05-02 15:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `add_patientfindings`
--

CREATE TABLE `add_patientfindings` (
  `a_id` int(11) NOT NULL,
  `a_user_id` int(11) NOT NULL,
  `a_fname` varchar(255) NOT NULL,
  `a_mname` varchar(255) NOT NULL,
  `a_lname` varchar(255) NOT NULL,
  `a_gender` varchar(255) NOT NULL,
  `a_age` int(11) NOT NULL,
  `a_complaint` text NOT NULL,
  `a_historypresentillness` text NOT NULL,
  `a_bp` varchar(255) NOT NULL,
  `a_rr` varchar(255) NOT NULL,
  `a_cr` varchar(255) NOT NULL,
  `a_temp` varchar(255) NOT NULL,
  `a_wt` varchar(255) NOT NULL,
  `a_pr` varchar(255) NOT NULL,
  `a_physicalexam` text NOT NULL,
  `a_diagnosis` text NOT NULL,
  `a_medication` text NOT NULL,
  `a_physician_id` int(11) NOT NULL,
  `a_date` date NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admission_record`
--

CREATE TABLE `admission_record` (
  `ad_id` int(11) NOT NULL,
  `ad_wardname` varchar(255) NOT NULL,
  `ad_date` date NOT NULL,
  `ad_admittedby` varchar(255) NOT NULL,
  `pr_admission_id` int(11) NOT NULL,
  `ad_physician` varchar(255) NOT NULL,
  `ad_father` varchar(255) NOT NULL,
  `ad_mother` varchar(255) NOT NULL,
  `ad_chargetoaccount` varchar(255) NOT NULL,
  `ad_relationtopatient` varchar(255) NOT NULL,
  `ad_address` varchar(255) NOT NULL,
  `ad_number` varchar(255) NOT NULL,
  `ad_totalpayment` varchar(255) NOT NULL,
  `ad_dischargedate` date NOT NULL,
  `ad_complaint` text NOT NULL,
  `ad_completediagnosis` text NOT NULL,
  `ad_medication` varchar(255) NOT NULL,
  `ad_conditiontodischarge` varchar(255) NOT NULL,
  `ad_remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admission_record`
--

-- INSERT INTO `admission_record` (`ad_id`, `ad_wardname`, `ad_date`, `ad_admittedby`, `pr_admission_id`, `ad_physician`, `ad_father`, `ad_mother`, `ad_chargetoaccount`, `ad_relationtopatient`, `ad_address`, `ad_number`, `ad_totalpayment`, `ad_dischargedate`, `ad_complaint`, `ad_completediagnosis`, `ad_medication`, `ad_conditiontodischarge`, `ad_remarks`) VALUES
-- (11, 'ICU', '2019-04-21', 'Neli', 3, 'James.Santos', '', '', '', '', '', '', '', '0000-00-00', '', ' Coughing up blood', 'Isoniazid', '', ''),
-- (12, '*Under.Observation', '2019-04-21', 'Neli', 2, 'Jobelle.Castro', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', ''),
-- (13, 'Male', '2019-05-01', 'Noel', 4, 'Gabriel.Lopez', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', ''),
-- (14, 'Gyne', '2019-05-02', '', 2, 'Jobelle.Castro', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `civilstat`
--

CREATE TABLE `civilstat` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `civilstat`
--

INSERT INTO `civilstat` (`c_id`, `c_name`) VALUES
(1, 'Single'),
(2, 'Married'),
(3, 'Separated');

-- --------------------------------------------------------

--
-- Table structure for table `civilstat`

--

CREATE TABLE `civilstat` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `civilstat`
--

INSERT INTO `devstage` (`c_id`, `c_name`) VALUES
(1, 'Infant (0-12 mos)'),
(2, 'Toddler (1-3 yrs)'),
(3, 'Preschool (4-5 yrs)'),
(4, 'School Age (6-12 yrs)'),
(5, 'Adolescents (13-18 yrs)');


-- --------------------------------------------------------

--
-- Table structure for table `devstage`

--

CREATE TABLE `civilstat` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `civilstat`
--


INSERT INTO `devstage` (`c_id`, `c_name`) VALUES
(1, 'Infant (0-12 mos)'),
(2, 'Toddler (1-3 yrs)'),
(3, 'Preschool (4-5 yrs)'),
(4, 'School Age (6-12 yrs)'),
(5, 'Adolescents (13-18 yrs)');


-- --------------------------------------------------------

--
-- Table structure for table `fieldsphysician`
--

CREATE TABLE `fieldsphysician` (
  `fp_id` int(11) NOT NULL,
  `fp_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fieldsphysician`
--

INSERT INTO `fieldsphysician` (`fp_id`, `fp_name`) VALUES
(1, 'Pediatrician');

-- --------------------------------------------------------

--
-- Table structure for table `findings`
--

CREATE TABLE `findings` (
  `f_id` int(11) NOT NULL,
  `pr_findings_id` int(11) NOT NULL,
  `f_chiefcomplaint` text NOT NULL,
  `f_historypresentillness` text NOT NULL,
  `f_status` varchar(255) NOT NULL,
  `f_bp` varchar(255) NOT NULL,
  `f_rr` varchar(255) NOT NULL,
  `f_cr` varchar(255) NOT NULL,
  `f_temp` varchar(255) NOT NULL,
  `f_wt` varchar(255) NOT NULL,
  `f_pr` varchar(255) NOT NULL,
  `f_physicalexam` text NOT NULL,
  `f_diagnosis` text NOT NULL,
  `f_medication` text NOT NULL,
  `f_nameofphysician` varchar(255) NOT NULL,
  `f_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `g_id` int(11) NOT NULL,
  `g_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`g_id`, `g_name`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `log_admission`
--

CREATE TABLE `log_admission` (
  `lo_id` int(11) NOT NULL,
  `lo_wardname` varchar(255) NOT NULL,
  `lo_date` date NOT NULL,
  `lo_admittedby` varchar(255) NOT NULL,
  `lo_user_id` int(11) NOT NULL,
  `lo_fname` varchar(255) NOT NULL,
  `lo_mname` varchar(255) NOT NULL,
  `lo_lname` varchar(255) NOT NULL,
  `lo_gender` varchar(255) NOT NULL,
  `lo_age` varchar(255) NOT NULL,
  `lo_physician_id` varchar(255) NOT NULL,
  `lo_father` varchar(255) NOT NULL,
  `lo_mother` varchar(255) NOT NULL,
  `lo_chargetoaccount` varchar(255) NOT NULL,
  `lo_relationtopatient` varchar(255) NOT NULL,
  `lo_address` varchar(255) NOT NULL,
  `lo_number` varchar(255) NOT NULL,
  `lo_totalpayment` varchar(255) NOT NULL,
  `lo_dischargedate` date NOT NULL,
  `lo_complaint` text NOT NULL,
  `lo_completediagnosis` text NOT NULL,
  `lo_medication` varchar(255) NOT NULL,
  `lo_conditiontodischarge` varchar(255) NOT NULL,
  `lo_remarks` varchar(255) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_admission`
--

-- INSERT INTO `log_admission` (`lo_id`, `lo_wardname`, `lo_date`, `lo_admittedby`, `lo_user_id`, `lo_fname`, `lo_mname`, `lo_lname`, `lo_gender`, `lo_age`, `lo_physician_id`, `lo_father`, `lo_mother`, `lo_chargetoaccount`, `lo_relationtopatient`, `lo_address`, `lo_number`, `lo_totalpayment`, `lo_dischargedate`, `lo_complaint`, `lo_completediagnosis`, `lo_medication`, `lo_conditiontodischarge`, `lo_remarks`, `log_time`) VALUES
-- (16, 'Pulmonary', '0000-00-00', 'Nina', 53, 'James', 'Fernandez', 'Navarro', '', '', '1', '', '', '', '', '', '', '', '0000-00-00', '', 'abab', 'ab', '', '', '2019-05-02 16:14:53'),
-- (17, 'Pulmonary', '0000-00-00', 'Nina', 53, 'James', 'Fernandez', 'Navarro', '', '', '1', '', '', '', '', '', '', '', '0000-00-00', '', 'abab', 'ab', '', '', '2019-05-03 03:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `log_findings`
--

CREATE TABLE `log_findings` (
  `lo_id` int(11) NOT NULL,
  `lo_user_id` varchar(255) NOT NULL,
  `lo_fname` varchar(255) NOT NULL,
  `lo_mname` varchar(255) NOT NULL,
  `lo_lname` varchar(255) NOT NULL,
  `lo_gender` varchar(255) NOT NULL,
  `lo_age` int(11) NOT NULL,
  `lo_complaint` text NOT NULL,
  `lo_historypresentillness` text NOT NULL,
  `lo_bp` varchar(255) NOT NULL,
  `lo_rr` varchar(255) NOT NULL,
  `lo_cr` varchar(255) NOT NULL,
  `lo_temp` varchar(255) NOT NULL,
  `lo_wt` varchar(255) NOT NULL,
  `lo_pr` varchar(255) NOT NULL,
  `lo_physicalexam` text NOT NULL,
  `lo_diagnosis` text NOT NULL,
  `lo_medication` text NOT NULL,
  `lo_physician_id` int(11) NOT NULL,
  `lo_date` date NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oldadmission`
--

CREATE TABLE `oldadmission` (
  `oad_id` int(11) NOT NULL,
  `oad_wardname` varchar(255) NOT NULL,
  `oad_date` date NOT NULL,
  `oad_admittedby` varchar(255) NOT NULL,
  `oad_user_id` int(11) NOT NULL,
  `oad_fname` varchar(255) NOT NULL,
  `oad_mname` varchar(255) NOT NULL,
  `oad_lname` varchar(255) NOT NULL,
  `oad_gender` varchar(255) NOT NULL,
  `oad_age` varchar(255) NOT NULL,
  `oad_physician_id` varchar(255) NOT NULL,
  `oad_father` varchar(255) NOT NULL,
  `oad_mother` varchar(255) NOT NULL,
  `oad_chargetoaccount` varchar(255) NOT NULL,
  `oad_relationtopatient` varchar(255) NOT NULL,
  `oad_address` varchar(255) NOT NULL,
  `oad_number` varchar(255) NOT NULL,
  `oad_totalpayment` varchar(255) NOT NULL,
  `oad_dischargedate` date NOT NULL,
  `oad_complaint` text NOT NULL,
  `oad_completediagnosis` text NOT NULL,
  `oad_medication` varchar(255) NOT NULL,
  `oad_conditiontodischarge` varchar(255) NOT NULL,
  `oad_remarks` varchar(255) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oldadmission`
--

-- INSERT INTO `oldadmission` (`oad_id`, `oad_wardname`, `oad_date`, `oad_admittedby`, `oad_user_id`, `oad_fname`, `oad_mname`, `oad_lname`, `oad_gender`, `oad_age`, `oad_physician_id`, `oad_father`, `oad_mother`, `oad_chargetoaccount`, `oad_relationtopatient`, `oad_address`, `oad_number`, `oad_totalpayment`, `oad_dischargedate`, `oad_complaint`, `oad_completediagnosis`, `oad_medication`, `oad_conditiontodischarge`, `oad_remarks`, `log_time`) VALUES
-- (1, 'Gyne', '2019-05-02', '', 1, 'James', 'Fernandez', 'Navarro', 'Male', '25', '53', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '2019-05-02 09:18:19'),
-- (2, 'Gyne', '2022-01-25', '', 1, 'James', 'Fernandez', 'Navarro', 'Male', '25', '60', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '2022-01-25 07:47:30'),
-- (3, 'Gyne', '2022-01-25', '', 1, 'James', 'Fernandez', 'Navarro', 'Male', '25', '61', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '2022-01-25 07:48:45');


-- --------------------------------------------------------

--
-- Table structure for table `oldfindings`
--

CREATE TABLE `oldfindings` (
  `of_id` int(11) NOT NULL,
  `of_user_id` int(11) NOT NULL,
  `of_fname` varchar(255) NOT NULL,
  `of_mname` varchar(255) NOT NULL,
  `of_lname` varchar(255) NOT NULL,
  `of_gender` varchar(255) NOT NULL,
  `of_age` int(11) NOT NULL,
  `of_complaint` text NOT NULL,
  `of_historypresentillness` text NOT NULL,
  `of_bp` varchar(255) NOT NULL,
  `of_rr` varchar(255) NOT NULL,
  `of_cr` varchar(255) NOT NULL,
  `of_temp` varchar(255) NOT NULL,
  `of_wt` varchar(255) NOT NULL,
  `of_pr` varchar(255) NOT NULL,
  `of_physicalexam` text NOT NULL,
  `of_diagnosis` text NOT NULL,
  `of_medication` text NOT NULL,
  `of_physician_id` int(11) NOT NULL,
  `of_date` date NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oldfindings`
--


-- INSERT INTO `oldfindings` (`of_id`, `of_user_id`, `of_fname`, `of_mname`, `of_lname`, `of_gender`, `of_age`, `of_complaint`, `of_historypresentillness`, `of_bp`, `of_rr`, `of_cr`, `of_temp`, `of_wt`, `of_pr`, `of_physicalexam`, `of_diagnosis`, `of_medication`, `of_physician_id`, `of_date`, `log_time`) VALUES
-- (4, 1, 'Jenna', 'Castro', 'Hassan', 'Female', 26, '', 'Headache', '', '', '', '', '', '', '', 'vomiting', 'ibuprofen ', 53, '2019-05-02', '2019-05-02 08:04:09'),
-- (5, 1, 'Rialyn', 'N', 'Evangelista', 'Female', 55, 'wala', 'inatake sa bituka ng lamok', '', '', '', '', '', '', '', 'ha', 'ha', 61, '2022-01-25', '2022-01-25 10:16:31'),
-- (6, 1, 'Rialyn', 'N', 'Evangelista', 'Female', 10, 'wala', 'inatake sa bituka ng lamok', '', '', '', '', '', '', '', 'ha', 'ha', 61, '2022-01-25', '2022-01-25 10:18:45'),
-- (7, 1, 'a', 'a', 'a', 'Male', 12, 'asd', 'asd', 'a', '', '', '', '', '', '', 'asd', 'asd', 61, '2022-01-25', '2022-01-25 10:49:26'),
-- (8, 1, 'b', 'b', 'b', 'Female', 10, '', 'asd', '', '', '', '', '', '', '', '', '', 61, '2022-01-25', '2022-01-25 10:52:20'),
-- (9, 1, 'b', 'b', 'b', 'Female', 10, '', 'asd', '', '', '', '', '', '', '', '', '', 61, '2022-01-25', '2022-01-25 10:52:36');


-- --------------------------------------------------------

--
-- Table structure for table `patient_record`
--

CREATE TABLE `patient_record` (
  `pr_id` int(11) NOT NULL,
  `pr_user_id` int(11) NOT NULL,
  `pr_date` date NOT NULL,
  `pr_lname` varchar(255) NOT NULL,
  `pr_fname` varchar(255) NOT NULL,
  `pr_mname` varchar(255) NOT NULL,
  `pr_addrs` varchar(255) NOT NULL,
  `pr_age` int(11) NOT NULL,
  `pr_bdate` date NOT NULL,
  `pr_bplace` varchar(255) NOT NULL,
  `pr_civilstat` varchar(255) NOT NULL,
  `pr_gen` varchar(255) NOT NULL,
  `pr_number` varchar(255) NOT NULL,
  `pr_religion` varchar(255) NOT NULL,

  `pr_nationality` varchar(255) NOT NULL,
  `pr_height` int(11) NOT NULL,
  `pr_weight` int(11) NOT NULL,
  `pr_grdnname` varchar(255) NOT NULL,
  `pr_grdnemail` varchar(255) NOT NULL,
  `pr_grdnrelation` varchar(255) NOT NULL,
  `pr_schname` varchar(255) NOT NULL,
  `pr_schaddress` varchar(255) NOT NULL,

  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `physicians`
--

CREATE TABLE `physicians` (
  `ph_id` int(11) NOT NULL,
  `ph_name` varchar(255) NOT NULL,
  `ph_fieldofphysician` varchar(255) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `standardusers`
--

CREATE TABLE `standardusers` (
  `su_id` int(11) NOT NULL,
  `su_userid` int(11) NOT NULL,
  `su_user` varchar(255) NOT NULL,
  `su_pass` varchar(255) NOT NULL,
  `su_fname` varchar(255) NOT NULL,
  `su_position` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `u_fname` varchar(255) NOT NULL,
  `u_user` varchar(255) NOT NULL,
  `u_pass` varchar(255) NOT NULL,
  `u_secretquestion` varchar(255) NOT NULL,
  `u_secretanswer` varchar(255) NOT NULL,
  `date_registered` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_fname`, `u_user`, `u_pass`, `u_secretquestion`, `u_secretanswer`, `date_registered`) VALUES
(1, 'admin', 'admin1', '$2y$10$Xx3WjAfR3q97Qm3R9LFu4.ToPO3UJOy5aCg81WYkmaL65zLamIBuy', 'What was your childhood nickname?', 'a58f327705b16842a432710949f4fc0cee0071da', '2019-05-09 02:22:24'),

(2, 'admin2', 'admin2', 'admin2pass', '', '', '2022-02-03 14:53:43');


-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `w_id` int(11) NOT NULL,
  `w_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`w_id`, `w_name`) VALUES
(1, 'Male Ward'),
(2, 'Female Ward'),
(3, 'Pulmonary'),
(4, 'ICU'),
(5, 'Gyne'),
(6, 'Caesarian Section'),
(7, 'NSD'),
(8, 'MaleSurgical'),
(9, 'FemaleSurgical'),
(10, 'Pedia'),
(11, 'OB-Gyne'),
(13, '*Under.Observation');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_patientadmission`
--
ALTER TABLE `add_patientadmission`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `add_patientfindings`
--
ALTER TABLE `add_patientfindings`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `admission_record`
--
ALTER TABLE `admission_record`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `civilstat`

--
ALTER TABLE `civilstat`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `devstage`

--
ALTER TABLE `civilstat`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `fieldsphysician`
--
ALTER TABLE `fieldsphysician`
  ADD PRIMARY KEY (`fp_id`);

--
-- Indexes for table `findings`
--
ALTER TABLE `findings`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `log_admission`
--
ALTER TABLE `log_admission`
  ADD PRIMARY KEY (`lo_id`);

--
-- Indexes for table `log_findings`
--
ALTER TABLE `log_findings`
  ADD PRIMARY KEY (`lo_id`);

--
-- Indexes for table `oldadmission`
--
ALTER TABLE `oldadmission`
  ADD PRIMARY KEY (`oad_id`);

--
-- Indexes for table `oldfindings`
--
ALTER TABLE `oldfindings`
  ADD PRIMARY KEY (`of_id`);

--
-- Indexes for table `patient_record`
--
ALTER TABLE `patient_record`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `physicians`
--
ALTER TABLE `physicians`
  ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `standardusers`
--
ALTER TABLE `standardusers`
  ADD PRIMARY KEY (`su_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_patientadmission`
--
ALTER TABLE `add_patientadmission`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `add_patientfindings`
--
ALTER TABLE `add_patientfindings`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `admission_record`
--
ALTER TABLE `admission_record`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `civilstat`

--
ALTER TABLE `civilstat`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `devstage`
--
ALTER TABLE `devstage`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fieldsphysician`
--
ALTER TABLE `fieldsphysician`
  MODIFY `fp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `findings`
--
ALTER TABLE `findings`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log_admission`
--
ALTER TABLE `log_admission`
  MODIFY `lo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `log_findings`
--
ALTER TABLE `log_findings`
  MODIFY `lo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `oldadmission`
--
ALTER TABLE `oldadmission`
  MODIFY `oad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oldfindings`
--
ALTER TABLE `oldfindings`
  MODIFY `of_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `patient_record`
--
ALTER TABLE `patient_record`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `physicians`
--
ALTER TABLE `physicians`
  MODIFY `ph_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `standardusers`
--
ALTER TABLE `standardusers`
  MODIFY `su_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
