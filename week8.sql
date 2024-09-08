-- Create Regions Table
CREATE TABLE Regions (
    region_id INT AUTO_INCREMENT PRIMARY KEY,
    region_name VARCHAR(100) NOT NULL
);

-- Create Students Table
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    region_id INT,
    FOREIGN KEY (region_id) REFERENCES Regions(region_id)
);

-- Create Courses Table
CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    subject VARCHAR(100)
);

-- Create Enrollments Table
CREATE TABLE Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade DECIMAL(4, 2),
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Insert Regions
INSERT INTO Regions (region_name) VALUES
('North Region'),
('East Region'),
('South Region'),
('West Region');

-- Insert Students
INSERT INTO Students (name, age, gender, region_id) VALUES
('Alice Johnson', 16, 'Female', 1),
('Bob Smith', 18, 'Male', 2),
('Catherine Lewis', 17, 'Female', 3),
('David Miller', 19, 'Male', 4);

-- Insert Courses
INSERT INTO Courses (course_name, subject) VALUES
('Mathematics 101', 'Mathematics'),
('English Literature', 'English'),
('Physics 101', 'Physics'),
('History of Civilizations', 'History');

-- Insert Enrollments
INSERT INTO Enrollments (student_id, course_id, grade, enrollment_date) VALUES
(1, 1, 88.5, '2024-01-15'),
(2, 2, 76.0, '2024-01-20'),
(3, 3, 91.0, '2024-02-01'),
(4, 4, 85.5, '2024-02-05');



