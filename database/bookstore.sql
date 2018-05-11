-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2018 at 08:55 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminuser`
--

CREATE TABLE `adminuser` (
  `id` int(6) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminuser`
--

INSERT INTO `adminuser` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'cpan', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `ISBN` varchar(14) NOT NULL,
  `title` varchar(80) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `year` smallint(4) DEFAULT NULL,
  `category` varchar(40) DEFAULT NULL,
  `author` varchar(60) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `pages` smallint(4) DEFAULT NULL,
  `publisher` varchar(60) DEFAULT NULL,
  `rating` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`ISBN`, `title`, `price`, `year`, `category`, `author`, `description`, `pages`, `publisher`, `rating`) VALUES
('978-0071326247', 'Introduction to Environmental Engineering', '90.00', 2012, 'Engineering', 'Mackenzie Davis, David Cornwell', 'Introduction to Environmental Engineering, 5/e contains the fundamental science and engineering principles needed for introductory courses and used as the basis for more advanced courses in environmental engineering. Updated with latest EPA regulations, Davis and Cornwell apply the concepts of sustainability and materials and energy balance as a means of understanding and solving environmental engineering issues.', 1024, 'McGraw-Hill Education', 4),
('978-0073386126', 'Elementary Statistics 1st Edition', '36.47', 2012, 'Math', 'William Navidi, Barry Monk', 'Provides students with examples of how to use the TI-83 Plus and TI-84 Plus Graphing Calculators, Microsoft Excel and Minitab.', 631, 'McGraw-Hill', NULL),
('978-0073401188', 'Wastewater Engineering: Treatment and Resource Recovery', '125.00', 2013, 'Engineering', 'Inc. Metcalf & Eddy, George Tchobanoglous, H. David Stensel,', 'Wastewater Engineering: Treatment and Resource Recovery, 5/e is a thorough update of McGraw-Hill\'s authoritative book on wastewater treatment. No environmental engineering professional or civil or environmental engineering major should be without a copy of this book - describing the rapidly evolving field of wastewater engineering technological and regulatory changes that have occurred over the last ten years in this discipline.', 2048, 'McGraw-Hill Education', 3),
('978-0073526645', 'World Music: Traditions and Transformations 2nd Edition', '77.41', 2011, 'Music', 'Michael B. Bakan', 'From jeliya to cha cha chá, Shandong to sean nós, and the Beatles and beleganjur to Bollywood and belly dance, the second edition of World Music: Traditions and Transformations takes students on an exciting global journey of musical and cultural discovery, exploration, and experience.', 416, 'McGraw-Hill Education', NULL),
('978-0078022074', 'Java Programming: A Comprehensive Introduction, First edition', '158.27', 2012, 'Computer Sciences', 'Herbert Schildt, Dale Skrien', 'Java Programming: A Comprehensive Introduction is designed for an introductory programming course using Java. This text takes a logical approach to the presentation of core topics, moving step-by-step from the basics to more advanced material, with objects being introduced at the appropriate time.', 1184, 'McGraw-Hill Higher Education', 4),
('978-0078025143', 'Tonal Harmony 7th Edition', '150.00', 2012, 'Music', 'Stefan Kostka,? Dorothy Payne,? Byron Almen', 'For over two decades Tonal Harmony has been the leading text for the two-year theory curriculum for music majors. Used at nearly 800 schools, Tonal Harmony has been consistently praised for its practicality and ease of use for student and instructor alike. The straightforward approach is supported by well-chosen examples and thoughtful exercises, and the total presentation is compatible with differing teaching styles and theoretical points of view.', 688, 'McGraw-Hill Education', NULL),
('978-0078025891', 'Financial Accounting: Information for Decisions, 7th Edition', '32.98', 2014, 'Math', 'John J Wild', 'Financial Accounting: Information for Decisions, addresses the topics and issues typically covered in the financial accounting course, while at the same time motivating student interest in accounting through its extensive use of entrepreneurial examples, application of analysis skills, integration of online course management, and a highly engaging pedagogical design.', 744, 'McGraw-Hill Education', NULL),
('978-0130406026', 'Studying Rhythm (3rd Edition)', '115.00', 2004, 'Music', 'Anne C. Hall', 'Featuring over 300 metrical rhythmic studies in simple musical forms — carefully graded, with short preliminary exercises — this volume introduces readers to the basic processes and complexities of musical rhythm and helps them develop the ability to perform all kinds of rhythmic patterns accurately at sight.', 176, 'Pearson', NULL),
('978-0131103627', 'C Programming Language (2nd Edition)', '70.00', 1988, 'Computer Science', 'Gordon S. Linoff', 'The authors present the complete guide to ANSI standard C language programming. Written by the developers of C, this new version helps readers keep up with the finalized ANSI standard for C while showing how to take advantage of C\'s rich set of operators, economy of expression, improved control flow, and data structures. The 2/E has been completely rewritten with additional examples and problem sets to clarify the implementation of difficult language constructs.', 274, 'Prentice Hall', 5),
('978-0131357808', 'Literature: An Introduction to Fiction, Poetry, Drama, and Writing: AP Edition', '8.00', 2008, 'Literature', 'X. J. Kennedy, Dana Gioia', 'Bringing together contributions from over two dozen specialists in the field, this text explains how the resource and environmental management process works; the types of strategies used; the various technical and non-technical considerations that influence decisions; and the tradeoffs that must be made to accommodate a broad range of legitimate societal interests.', 1538, 'Pearson', 5),
('978-0132833219', 'Water-Resources Engineering (3rd Edition)', '190.00', 2012, 'Engineering', 'David A. Chin', 'Water-Resources Engineering provides comprehensive coverage of hydraulics, hydrology, and water-resources planning and management. Presented from first principles, the material is rigorous, relevant to the practice of water resources engineering, and reinforced by detailed presentations of design applications. Prior knowledge of fluid mechanics and calculus (up to differential equations) is assumed.', 960, 'Pearson', 3),
('978-0134286884', 'Politics, Power and the Common Good: An Introduction to Political Science (5th E', '145.00', 2016, 'Political Science', 'Eric Mintz,? David Close,? Osvaldo Croci', 'The fifth edition of Politics, Power, and the Common Good continues to present clear explanations on the basics of politics, while at the same time raising challenging questions that encourage students to think deeply about the contemporary political world. Updated to reflect the current changing political atmosphere, the text teaches students about the contending perspectives that can be used to understand the world, the problems of the more than one billion people who live in extreme poverty, the global political systems of the twenty-first century, and much more.', 504, 'Pearson Canada', NULL),
('978-0134402857', 'Political Science: An Introduction (14th Edition)', '145.00', 2016, 'Political Science', 'Michael G. Roskin,? Robert L. Cord,? James A. Medeiros,? Wal', 'The Fourteenth Edition asks readers to explore the controversial topic of exported democracy, and whether certain countries are ready and equipped to apply our form of government. By examining issues such as the Iraq war and the difficulty of adapting our own democracy in the U.S., the text prompts readers to form their own opinions about democracy and political science.', 384, 'Pearson', NULL),
('978-0134706054', 'Android Programming: The Big Nerd Ranch Guide (3rd Edition)', '45.00', 2017, 'Computer Science', 'Bill Phillips, Chris Stewart,  Kristin Marsicano', 'Android Programming: The Big Nerd Ranch Guide is an introductory Android book for programmers with Java experience.', 624, 'Big Nerd Ranch Guides', 4),
('978-0176531713', 'Psychology: Themes and Variations', '89.00', 2015, 'Psychology', 'Dr. Wayne Weiten,? Dr. Doug McCann,? Diane F. Halpern', 'The Fourth Canadian edition maintains this book\'s strengths while addressing market changes with new learning objectives, a complete update with over 700 new references to research, theory, application, and context in psychology from all over the world--and a more concise, new design.', 880, 'Nelson College Indigenous', NULL),
('978-0190254773', 'Philosophy: The Quest for Truth', '105.00', 2016, 'Philosophy', 'Louis P. Pojman,? Lewis Vaughn', 'Praised for its unique combination of accessibility and comprehensiveness, Philosophy: The Quest for Truth, Tenth Edition, provides an excellent selection of ninety-five classical and contemporary readings - on twenty key problems in philosophy - carefully organized so that they present pro/con dialogues that allow students to compare and contrast the philosophers\' positions.', 816, 'Oxford University Press', NULL),
('978-0195170108', 'Engaging Music: Essays in Music Analysis 1st Edition', '89.00', 2005, 'Music', 'Deborah Stein', 'The first collection of its kind, Engaging Music: Essays in Music Analysis includes twenty-two selections by highly esteemed contemporary music theorists, sixteen of which were written especially for this volume. Featuring work by such luminaries as Charles Burkhart, Edward T. Cone, Allen Forte, David B. Lewin, and Carl Schachter, the book is an ideal text for undergraduate and graduate courses in form and analysis.', 346, 'Oxford University Press', NULL),
('978-0195425017', 'Environmental Change and Challenge: A Canadian Perspective', '120.00', 2006, 'Geography', 'Philip Dearden, Bruce Mitchell', 'Environmental Change and Challenge: A Canadian Perspective, Updated Second Edition with DVD helps students understand the ongoing change, complexity, and conflict associated with environmental issues. Introducing the basic scientific concepts relevant to the study of the global environment, this text explains the application of science to resource management.', 554, 'Oxford University Press', 5),
('978-0199002429', 'The Regional Geography of Canada', '65.00', 2013, 'Geography', 'Robert M. Bone', 'Identifying and exploring Canada\'s six regions - Atlantic Canada, Quebec, Ontario, Western Canada, British Columbia, and the Territorial North - author Robert Bone guides students through the basic physical, historical, cultural, social, and economic features of each region, nurturing an appreciation of this country\'s amazing diversity.', 528, 'Oxford University Press', 4),
('978-0199009886', 'Resource and Environmental Management in Canada: Addressing Conflict and Uncerta', '55.00', 2015, 'Geography', 'Bruce Mitchell', 'Bringing together contributions from over two dozen specialists in the field, this text explains how the resource and environmental management process works; the types of strategies used; the various technical and non-technical considerations that influence decisions; and the tradeoffs that must be made to accommodate a broad range of legitimate societal interests.', 608, 'Oxford University Press', 4),
('978-0199019557', 'Human Geography', '25.00', 2016, 'Geography', 'William Norton, Michael Mercier', 'With a well-balanced mix of international and Canadian examples, the ninth edition of this bestselling text traces the evolution of the discipline across the globe, examining the ways in which human behaviour transforms the earth\'s surface in response to changing social, cultural, political, and environmental needs.', 584, 'Oxford University Press', 4),
('978-0205647620', 'Fundamentals of Philosophy (7th Edition)', '54.00', 2009, 'Philosophy', 'David Stewart, H. Gene Blocker, James Petrik', 'An accessible reader/text for beginning students of philosophy, this volume offers a broad scope of diverse classic and contemporary selections – with a narrative and format that presents difficult issues and readings in a simplified but not condescending manner.', 528, 'Pearson', NULL),
('978-0205938339', 'Music for Sight Singing (9th Edition)', '114.00', 2013, 'Music', 'Nancy Rogers, Robert W. Ottman', 'The ninth edition continues to introduce a host of important musical considerations beyond pitch and rhythm- including dynamics, accents, articulations, slurs, repeat signs, and tempo markings.', 432, 'Pearson', NULL),
('978-0273717638', 'Urban Social Geography: An Introduction', '55.00', 2009, 'Geography', 'Paul Knox, Steven Pinch', 'The 6th edition of this highly respected text builds upon the successful structure, engaging writing style and clear presentation of previous editions. Examining urban social geography from a theoretical and historical perspective, it also explores how it has developed into the modern day. Taking account of recent critical work, whilst simultaneously presenting well established approaches to the subject, it ensures students are well-informed about all the issues. The result is a topical book that is clear and accessible for students', 392, 'Pearson Canada', 3),
('978-0312201562', 'Falling into Theory: Conflicting Views on Reading Literature, 2nd Edition', '15.00', 1999, 'Literature', 'David H. Richter, Gerald Graff', 'Falling into Theory is a brief and inexpensive collection of essays that asks literature students to think about the fundamental questions of literary studies today.', 414, 'Bedford/St. Martin\'s', 4),
('978-0314027306', 'Experimental Psychology: Understanding Psychological Research', '75.00', 1994, 'Psychology', 'Barry H. Kantowitz,? Henry L., Iii Roediger,? David G. Elmes', 'Kantowitz, Roediger, and Elmes, all prominent researchers, take an example-based approach to the fundamentals of research methodology. The book is organized by topic--such as research in human factors, learning, thinking, and problem solving--and the authors discuss and clarify research methods in the context of actual research conducted in these specific areas. This unique feature helps readers connect the concepts of sound methodology with their practical applications.', 596, 'West Group', NULL),
('978-0321693990', 'College Algebra (4th Edition)', '13.00', 2011, 'Math', 'Judith A. Beecher, Judith A. Penna,? Marvin L. Bittinger', 'Beecher, Penna, and Bittinger\'s College Algebra is known for enabling students to “see the math” through its focus on visualization and early introduction to functions. With the Fourth Edition, the authors continue to innovate by incorporating more ongoing review to help students develop their understanding and study effectively.', 800, 'Pearson', NULL),
('978-0321940520', 'Learn to Code HTML and CSS: Develop and Style Websites', '266.77', 2014, 'Computer Science', 'Shay Howe', 'HTML and CSS can be a little daunting at first but fear not. This book, based on Shay Howe\'s popular workshop covers the basics and breaks down the barrier to entry, showing readers how they can start using HTML and CSS through practical techniques today.', 304, 'New Riders', 5),
('978-0393912807', 'Essential Readings in Comparative Politics', '78.00', 2012, 'Political Science', 'Patrick H O\'Neil', 'From Weber\'s conception of the state to Marx\'s prescription for a Communist utopia, the text offers a foundation in the traditional literature on key political concepts. And just as important, readers will also find divergent, often opposing, recent perspectives on these topics.', 630, 'W W Norton & Co Inc', NULL),
('978-0393927122', 'Norton Psychology Reader', '65.00', 2005, 'Psychology', 'Gary Marcus', 'The perfect supplement to introductory psychology texts, The Norton Psychology Reader includes the best contemporary writing on the study of human behavior.', 654, 'W W Norton & Co Inc', NULL),
('978-0393932928', 'The Norton Anthology of Theory and Criticism 2nd Edition', '70.00', 2008, 'Literature', 'Terry Eagleton', 'The Norton Anthology of Theory and Criticism is the gold standard for anyone who wishes to understand the development and current state of literary theory. Offering 185 pieces (31 of them new) by 148 authors (18 of them new).', 2800, 'W. W. Norton & Company', 4),
('978-0415398046', 'The Civil Engineering Handbook', '40.00', 1995, 'Engineering', 'Wai-Fah Chen', 'The Civil Engineering Handbook provides extensive coverage of the major areas of civil engineering. Divided into eight comprehensive sections, the handbook covers:Construction. Environmental Engineering; Geotechnical Engineering; Hydraulics; Materials Engineering; Structural Engineering; Surveying Engineering; Transportation Engineering.', 2640, 'CRC-Press', 3),
('978-0415810517', 'Analyzing American Democracy: Politics and Political Science', '70.00', 2013, 'Political Science', 'Jon R. Bond,? Kevin B. Smith', 'Analyzing American Democracy teaches students to think analytically by presenting current political science theories and research in answering the engaging, big questions facing American politics today. It serves as both an introduction to American politics and to the discipline of political science by reflecting the theoretical developments and empirical inquiry conducted by researchers.', 752, 'Routledge', NULL),
('978-0486411217', 'The Republic', '15.00', 2000, 'Philosophy', 'Plato', 'Often ranked as the greatest of Plato\'s many remarkable writings, this celebrated philosophical work of the fourth century B.C. contemplates the elements of an ideal state, serving as the forerunner for such other classics of political thought as Cicero\'s De Republica, St. Augustine\'s City of God, and Thomas More\'s Utopia.', 288, 'Dover Publications', NULL),
('978-0486426921', 'On the Social Contract', '20.00', 2003, 'Philosophy', 'Jean-Jacques Rousseau', 'A milestone of political science, these essays introduced the inflammatory ideas that led to the chaos of the French Revolution, and are considered essential reading for students of history, philosophy, and other social sciences.', 112, 'Dover Publications', NULL),
('978-0495916079', 'Anthology for Musical Analysis 7th Edition', '155.00', 2011, 'Music', 'Charles Burkhart,? William Rothstein', 'A landmark collection of over 200 complete musical compositions and movements, ranging from the Middle Ages to the present, Anthology for Musical Analysis offers first- and second-year music theory students a wealth of illustrations of chords, voice-leading techniques, and forms, plus some material for figured-bass realization and score reading.', 688, 'Schirmer', NULL),
('978-0547491103', 'Geography: Student Edition 2012', '65.00', 2010, 'Geography', 'Holt McDougal', '', 856, 'Houghton Mifflin Harcourt', 5),
('978-0596158101', 'Programming Python: Powerful Object-Oriented Programming', '50.00', 2011, 'Computer Science', 'Mark Lutz', 'Programming Python will show you how, with in-depth tutorials on the language\'s primary application domains: system administration, GUIs, and the Web. You\'ll also explore how Python is used in databases, networking, front-end scripting layers, text processing, and more.', 1632, 'O\'Reilly Media', 5),
('978-0596517748', 'JavaScript: The Good Parts', '34.51', 2008, 'Computer Science', 'Douglas Crockford', 'Most programming languages contain good and bad parts, but JavaScript has more than its share of the bad, having been developed and released in a hurry before it could be refined. This authoritative book scrapes away these bad features to reveal a subset of JavaScript that\'s more reliable, readable, and maintainable than the language as a whole—a subset you can use to create truly extensible and efficient code.', 172, 'Yahoo Press', 4),
('978-0671201586', 'History of Western Philosophy', '27.00', 1967, 'Philosophy', 'Bertrand Russell', 'Hailed as “lucid and magisterial” by The Observer, this book is universally acclaimed as the outstanding one-volume work on the subject of Western philosophy. Considered to be one of the most important philosophical works of all time, the History of Western Philosophy is a dazzlingly unique exploration of the ideologies of significant philosophers throughout the ages—from Plato and Aristotle through to Spinoza, Kant and the twentieth century.', 895, 'Touchstone', NULL),
('978-0691130880', 'The Calculus Lifesaver: All the Tools You Need to Excel at Calculus', '30.51', 2007, 'Math', 'Adrian Banner', 'All of the material in this user-friendly study guide has been proven to get results. The book arose from Adrian Banner\'s popular calculus review course at Princeton University, which he developed especially for students who are motivated to earn A\'s but get only average grades on exams.', 752, 'Princeton University Press', NULL),
('978-0716706175', 'Psychology', '95.00', 2006, 'Psychology', 'Peter O. Gray', 'With the new edition, Gray has taken care to ensure that his comprehensive, thought-provoking, and contemporary coverage is well-attuned to the needs and interests of today\'s students.', 654, 'Worth Pub', NULL),
('978-0739053010', 'Alfred\'s Group Piano for Adults Student Book 1 (Second Edition)', '42.00', 2008, 'Music', 'E. L. Lancaster, Kenon D. Renfrow', 'Designed for collegiate non-keyboard music majors with little or no keyboard experience, the easy-to-use text contains 26 units, each intended to be covered in one week, thus fulfilling two semesters or three quarters of study.', 360, 'Alfred Music', NULL),
('978-0816654475', 'Literary Theory: An Introduction 3rd Edition', '15.00', 2008, 'Literature', 'Terry Eagleton', '“This concise and lucid volume offers a satisfying survey of all the major theories, from structuralism in the 1960s to deconstruction today, that have made academic criticism both intriguing and off-putting to the outsider.” —New York Times Book Review', 240, 'University Of Minnesota Press', 3),
('978-0826490735', 'Literary Theory: A Guide for the Perplexed (Guides for the Perplexed)', '20.00', 2007, 'Literature', 'Mary Klages', 'This Guide for the Perplexed provides an advanced introduction to literary theory from basic information and orientation for the uninformed leading on to more sophisticated readings. It engages directly with the difficulty many students find intimidating, asking what is Literary Theory, and offering a clear, concise, accessible guide to the major theories and theorists, including: humanism; structuralism; poststructuralism.', 192, 'Bloomsbury Academic', 4),
('978-1107579248', 'Mathematics for the IB Diploma Standard Level Solutions Manual', '36.95', 2016, 'Math', 'Paul Fannon,? Vesna Kadelburg,? Ben Woolley,? Stephen Ward', 'This is a series of fully worked solutions manuals for Mathematics Standard Level for the IB Diploma and Mathematics Higher Level for the IB Diploma. This solutions manual for Mathematics Standard Level for the IB Diploma contains approximately 750 fully worked solutions to the colour-coded examination-style questions contained in the coursebook.', 234, 'Cambridge University Press', NULL),
('978-1107621664', 'The Fundamentals of Political Science Research', '60.00', 2013, 'Political Science', 'Paul M. Kellstedt,? Guy D. Whitten', 'The Fundamentals of Political Science Research provides an introduction to the scientific study of politics. It offers the basic tools necessary for readers to become both critical consumers and beginning producers of scientific research on politics. Professors Kellstedt and Whitten present an integrated approach to research design and empirical analyses in which researchers can develop and test causal theories.', 342, 'Cambridge University Press', NULL),
('978-1119021438', 'Data Analysis Using SQL and Excel', '56.62', 2015, 'Computer Science', 'Gordon S. Linoff', 'A practical guide to data mining using SQL and Excel Data Analysis Using SQL and Excel, 2nd Edition shows you how to leverage the two most popular tools for data query and analysis—SQL and Excel—to perform sophisticated data analysis without the need for complex and expensive data mining tools. Written by a leading expert on business data mining, this book shows you how to extract useful business information from relational databases.', 792, 'Wiley', 4),
('978-1133612100', 'Philosophy: A Text with Readings 12th Edition', '165.00', 2013, 'Philosophy', 'Manuel Velasquez', 'Engaging and compelling on every page, Velasquez\'s text helps you explore and understand philosophy while it helps you appreciate the relevance of philosophy to your day-to-day life and the larger social world. This trusted text combines clear prose and primary source readings to take you on a meaningful exploration of a range of philosophical topics.', 672, 'Cengage Learning', NULL),
('978-1137324030', 'Political Science: A Comparative Introduction', '30.00', 2013, 'Political Science', 'Rod Hague,? Martin Harrop', 'Long established as the leading text in the field, the new edition has been comprehensively updated and rewritten. Accessible, student-friendly and truly international in its coverage, this edition includes an brand new chapter on voters and increased coverage of rising powers, such as India and Brazil.', 464, 'Palgrave Macmillan', NULL),
('978-1137601230', 'Political Science: A Comparative Introduction', '85.00', 2017, 'Political Science', 'Rod Hague,? Martin Harrop,? John McCormick', 'Long established as the leading text in the field, the new edition has been comprehensively updated and rewritten. Accessible, student-friendly and truly international in its coverage, this edition includes more on authoritarian states as well as a much wider variety of country studies more generally.', 392, 'Palgrave', NULL),
('978-1259870545', 'Music: An Appreciation, Brief Edition 9th Edition', '90.00', 2017, 'Music', 'Roger Kamien', 'Music: An Appreciation remains the time-tested solution for welcoming non-majors to the art of listening to great music. Now, Roger Kamien places a renewed focus on learning the elements of music, fostering each student\'s unique path to listening and understanding. This is achieved through step-by-step guidance as they learn the elements of music, as well as an increased number of musical selections to appreciate, and an enhanced McGraw-Hill Connect experience.', 496, 'McGraw-Hill Education', NULL),
('978-1292057668', 'College Mathematics for Business, Economics, Life Sciences and Social Sciences, ', '53.95', 2014, 'Math', 'Raymond A. Barnett,? Michael R. Ziegler,? Karl E. Byleen', 'This text offers more built-in guidance than any other on the market–with special emphasis on prerequisites skills–and a host of student-friendly features to help students catch up or learn on their own. The content is organized into three parts: (1) A Library of Elementary Functions (Chapters 1-2), (2) Finite Mathematics (Chapters 3-9), and (3) Calculus (Chapters 10-15).', 1040, 'Pearson Education', NULL),
('978-1292183404', 'Edexcel A level Mathematics Pure Mathematics Year 2', '35.98', 2017, 'Math', 'Harry Smith,? Greg Attwood,? Jack Barraclough,? Ian Bettison', 'With over 1.3 million copies sold of the previous edition, Pearson\'s textbooks are the market-leading and most trusted resources for AS and A level Mathematics. This book can be used alongside the Year 1 book to cover all the content needed for the Edexcel A level Pure Mathematics exams.', 424, 'Pearson Education', 4),
('978-1305635180', 'Fundamentals of Geotechnical Engineering', '50.00', 2016, 'Engineering', 'Braja Das, Nagaratnam Sivakugan', 'Discover the essential components of two market-leading engineering texts in one powerful combined book. FUNDAMENTALS OF GEOTECHNICAL ENGINEERING, 5E offers a concise blend of critical information from Braja Das\' market leading PRINCIPLES OF GEOTECHNICAL ENGINEERING and PRINCIPLES OF FOUNDATION ENGINEERING. This valuable, cohesive book focuses on the fundamental concepts of both soil mechanics and foundation engineering without the distraction of excessive details or cumbersome alternatives.', 800, 'Thomson-Engineering', 4),
('978-1330407158', 'Introduction to Political Science (Classic Reprint)', '20.00', 2012, 'Political Science', 'Raymond Garfield Gettell', 'At the present time no field of knowledge is growing more rapidly into favor, both in the colleges and universities, and among thinking people in general, than that of the social sciences. Looking to the past, they are linked with the whole process of biologic and psychologic evolution, and trace the origin and development of human institutions and ideas.', 452, 'Forgotten Books', NULL),
('978-1337705028', 'Principles of Foundation Engineering', '160.00', 2018, 'Engineering', 'Braja Das, Nagaratnam Sivakugan', 'A must-have resource for all foundation engineering courses, PRINCIPLES OF FOUNDATION ENGINEERING, 9th Edition provides a careful balance between current research and practical field applications as it introduces civil engineering students to the core concepts and applications of foundation analysis design.', 944, 'Thomson-Engineering', 5),
('978-1405106962', 'Literary Theory: An Anthology, 2nd Edition', '65.00', 2004, 'Literature', 'Julie Rivkin, Michael Ryan', 'This anthology of classic and cutting-edge statements in literary theory has now been updated to include recent influential texts in the areas of Ethnic Studies, Postcolonialism and International Studies', 1336, 'Blackwell', 4),
('978-1408504079', 'Geography: An Integrated Approach, 4th edition', '75.00', 2009, 'Geography', 'David Waugh', 'The fourth edition of this comprehensive course supports individual enquiry and research as well as encouraging discussion and debate. It sets concepts and skills in context and can be used by students following any A Level specification or the International Baccalaureate.', 656, 'Trans-Atlantic', 5),
('978-1413030549', 'Perrine\'s Sound and Sense: An Introduction to Poetry 12th Edition', '45.00', 2007, 'Literature', 'Thomas R. Arp, Greg Johnson', 'There\'s no better way for you to learn about poetry and understand its elements than with PERRINE\'S SOUND AND SENSE. Both a concise introduction to poetry and an anthology, this classic best-seller succinctly covers the basics of poetry with chapters on evaluating poetry, exemplary poetry selections that you\'ll enjoy reading, and exercises that help you understand each selection. Every poem included in this collection is not only a perfect illustration of the poetic concept at hand, but a remarkable work in its own right.', 452, 'Thomson / Wadsworth', 3),
('978-1429237215', 'Psychology (Canadian Edition)', '90.00', 2014, 'Psychology', 'Daniel L. Schacter,? Daniel T. Gilbert,? Daniel M. Wegner', 'Schacter, Gilbert, Wegner, and Nock\'s Psychology, Third Edition is widely acclaimed for captivating students with contemporary psychology research on the major topics of the introductory course, while helping them develop critical thinking skills that will stay with them beyond the course term.', 800, 'Worth Pub', NULL),
('978-1438003924', 'Barron\'s IB Math SL', '25.42', 2014, 'Math', 'Stella Carey M.Ed.', 'This all-encompassing book can also serve as a supplement to classroom instruction throughout the two-year IB Math SL course, a resource for the Internal Assessment project, and a review resource during first year college math courses.', 448, 'Barron\'s Educational Series', NULL),
('978-1440543906', 'Psych 101: Psychology Facts, Basics, Statistics, Tests, and More!', '15.00', 2012, 'Psychology', 'Paul Kleinman', 'Too often, textbooks turn the noteworthy theories, principles, and experiments of psychology into tedious discourse that even Freud would want to repress. Psych 101 cuts out the boring details and statistics, and instead, gives you a lesson in psychology that keeps you engaged - and your synapses firing.', 288, 'Adams Media', NULL),
('978-1440567674', 'Philosophy 101: From Plato and Socrates to Ethics and Metaphysics, an Essential ', '10.00', 2013, 'Philosophy', 'Paul Kleinman', 'Too often, textbooks turn the noteworthy theories, principles, and figures of philosophy into tedious discourse that even Plato would reject. Philosophy 101 cuts out the boring details and exhausting philosophical methodology, and instead, gives you a lesson in philosophy that keeps you engaged as you explore the fascinating history of human thought and inquisition.', 288, 'Adams Media', NULL),
('978-1442205215', 'Critical Reasoning and Philosophy: A Concise Guide to Reading, Evaluating, and W', '80.00', 2011, 'Philosophy', 'M. Andrew Holowchak', 'Critical Reasoning & Philosophy has been praised as an innovative and clearly written handbook that teaches new philosophy students how to read, evaluate, and write in a critical manner. Concise, accessible language and ample use of examples and study modules help students gain the basic knowledge necessary to succeed in undergraduate philosophy courses, and to apply that knowledge to achieve success in other disciplines as well.', 164, 'Rowman & Littlefield Publishers', NULL),
('978-1464140815', 'Psychology', '300.00', 2015, 'Psychology', 'David G., PhD Myers,? C. Nathan Dewall', 'With this new edition of the #1 bestselling Psychology, Myers and DeWall take full advantage of what an integrated text/media learning combination can do. New features move students from reading the chapter to actively learning online.', 912, 'Worth Pub', NULL),
('978-1473609303', 'Psychology: A Complete Introduction', '15.00', 2016, 'Psychology', 'Sandi Mann', 'Psychology: A Complete Introduction is designed to give you everything you need to succeed, all in one place. It covers the key areas that students are expected to be confident in, outlining the basics in clear jargon-free English, and then providing added-value features like summaries of key experiments, and even lists of questions you might be asked in your seminar or exam.', 400, 'Teach Yourself', NULL),
('978-1491929124', 'Site Reliability Engineering: How Google Runs Production Systems', '40.00', 2016, 'Engineering', 'Niall Richard Murphy, Betsy Beyer, Chris Jones, Jennifer Pet', 'In this collection of essays and articles, key members of Google\'s Site Reliability Team explain how and why their commitment to the entire lifecycle has enabled the company to successfully build, deploy, monitor, and maintain some of the largest software systems in the world. You’ll learn the principles and practices that enable Google engineers to make systems more scalable, reliable, and efficient—lessons directly applicable to your organization.', 552, 'O\'Reilly Media', 4),
('978-1491969090', 'PHP Pocket Reference: PHP in your pocket', '17.55', 2018, 'Computer Science', 'Davey Shafik', 'Updated to cover PHP 7, the third edition of this compact reference is the perfect toolbox full of need-to-know information for experienced PHP programmers. Author Davey Shafik provides a complete revision to this reference guide to cover milestones PHP has made in the last decade, including everything from modernizations with PHP 5.x to incredible speed and performance improvements with PHP 7 and beyond.', 200, 'O\'Reilly Media', 4),
('978-1603292627', 'MLA Handbook 8th Edition', '12.00', 2016, 'Literature', 'The Modern Language Association of America', 'Shorter and redesigned for easy use, the eighth edition of the MLA Handbook guides writers through the principles behind evaluating sources for their research. It then shows them how to cite sources in their writing and create useful entries for the works-cited list.', 160, 'The Modern Language Association of America', 5),
('978-1781255308', 'Geography: Ideas in Profile', '10.00', 2016, 'Geography', 'Danny Dorling, Carl Lee', 'Geography gives shape to our innate curiosity; cartography is older than writing. Channelling our twin urges to explore and understand, geographers uncover the hidden connections of human existence, from infant mortality in inner cities to the decision-makers who fly overhead in executive jets, from natural disasters to over-use of fossil fuels.', 175, 'Profile Books', 5),
('978-1851686629', 'Engineering: A Beginner\'s Guide', '8.00', 2009, 'Engineering', 'Natasha McCarthy', 'Engineering is more than nuts and bolts, bricks and mortar; more than the tangible evidence of man-made solutions, and imaginative buildings. McCarthy reveals how every aspect of our lives has been engineered: from how we travel and communicate to our very means of survival. Natasha McCarthy is policy advisor at the Royal Academy of Engineering, UK.', 184, 'Oneworld Publications', 4),
('978-1944325022', 'Abstract Algebra: Theory and Applications', '32.74', 2016, 'Math', 'Thomas W Judson', 'Abstract Algebra: Theory and Applications is an open-source textbook that is designed to teach the principles and theory of abstract algebra to college juniors and seniors in a rigorous manner. Its strengths include a wide range of exercises, both computational and theoretical.', 418, 'Orthogonal Publishing', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `username` varchar(6) NOT NULL,
  `password` varchar(6) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `address` varchar(89) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`username`, `password`, `name`, `email`, `address`, `phone`) VALUES
('jhjj', '898989', 'sandeeo', 'tu@hh.com', 'ytuytut', 76768980),
('raaone', 'simmi', 'ravneet', 'raone@werbest.com', 'rrrrrrrrrrrrrrrrrrr', 656566543),
('raaou', 'simmi', 'rr', 'sandeep@k.com', 'uu', 2147483647),
('rav89', '897', 'ravneet', 'et@ta.com', 'ghghfftryt', 2147483647),
('rav89e', '897e', 'ravneet', 'saaaaa@e.com', '205 HUMBER COLLEGE BLVD', 322343454),
('rav89s', '897s', 'Sandeep Sidhu', 'sss@e.com', 'sss', 2147483647),
('ravn', '786767', 'rav', 'yu@hum.com', 'ghghfftryt', 2147483647),
('ravsan', '897ttt', 'Sandeep Kaur Sidhu', 'sss@e.com', 'eeeeeeeeeeeeee', 2147483647),
('sandee', '789678', 'sandy', 'tu@hh.com', 'GHJGJG', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `custfeedbackid` int(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(50) NOT NULL,
  `email` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`) VALUES
(1, 'vasd@fbgd.ds');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminuser`
--
ALTER TABLE `adminuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`custfeedbackid`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminuser`
--
ALTER TABLE `adminuser`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `custfeedbackid` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
