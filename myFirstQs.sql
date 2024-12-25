--first query--
CREATE VIEW amount_of_lessons_this_year AS -- create a view (virtual table) for easier access

SELECT
    TO_CHAR(TO_DATE(l.date, 'YYYY-MM-DD'), 'Mon') AS month_of_lesson, -- converting VARCHAR type for date to DATE and to CHAR type and alias 
    COUNT(*) AS total_lessons, -- calculates the total number of lessons
    SUM(CASE WHEN pl.lessonType = 'individual' THEN 1 ELSE 0 END) AS individual_lesson, -- calculates the total number of individual lessons and alias column
    SUM(CASE WHEN pl.lessonType = 'group' THEN 1 ELSE 0 END) AS group_lesson, -- calculates the total number of group lessons and alias column
    SUM(CASE WHEN pl.lessonType = 'ensemble' THEN 1 ELSE 0 END) AS ensemble_lesson -- calculates the total number of ensemble lessons and alias column
FROM
    lesson l -- lesson table
JOIN
    price_list pl ON l.priceID = pl.priceID -- joins lesson and price_list through priceID to access lesson type
WHERE
    EXTRACT(YEAR FROM TO_DATE(l.date, 'YYYY-MM-DD')) = 2024 -- limits the search for only 2024
GROUP BY
    TO_CHAR(TO_DATE(l.date, 'YYYY-MM-DD'), 'Mon') -- total of lessons are grouped by month
ORDER BY
    TO_DATE(TO_CHAR(TO_DATE(l.date, 'YYYY-MM-DD'), 'Mon'), 'Mon'); -- months are chronologically ordered (ASC on defualt)

--second query--

CREATE VIEW students_and_siblings AS -- create a view (virtual table) for easier access

WITH siblingCounts AS ( -- temp. table for count
    SELECT
        s.studentID, -- fetching each studentID
        COUNT(sib.studentID) AS num_siblings -- count how many studentIDs are referenced in a students studentID_0 (sibling) and alias column and NOT referenced
    FROM
        student s -- student table
    LEFT JOIN
        student sib ON s.studentID = sib.studentID_0 -- joining students to match for a potential sibling/s
    GROUP BY
        s.studentID -- count is unique for each studentID
)
SELECT
    num_siblings AS no_of_siblings, -- fetching data from the sibling count prior for future grouping and alias column
    COUNT(studentID) AS no_of_students -- count for how many students have 0, 1 or 2 sibling/s
FROM
    siblingCounts -- temp. table siblingCounts
GROUP BY
    num_siblings -- grouping by 0, 1 or 2 sibling/s
ORDER BY
    num_siblings; -- ordering by 0, 1 and 2 (ASC on defualt)

--third query--

CREATE VIEW lessons_given_current_month AS -- create a view (virtual table) for easier access

WITH lessonsCurrentMonth AS ( -- temp. table for counting how many lessons given by instructor for a given month
  SELECT
        l.instructorID, -- fetch instructorID in lesson
        i.firstName, -- matches it to a first name
        i.lastName,  -- and a last name
        COUNT(l.lessonID) AS lesson_count -- count amount of lessons
    FROM
        lesson l -- from lesson table
    JOIN
        instructor i ON l.instructorID = i.instructorID --join by common instructorID in both tables
    WHERE
      EXTRACT(MONTH FROM TO_DATE(l.date, 'YYYY-MM-DD')) = 2 -- extract from the current month febuary, 1 if january
      AND EXTRACT(YEAR FROM TO_DATE(l.date, 'YYYY-MM-DD')) = 2024 --limits search to 2024
  
    GROUP BY
      l.instructorID, i.firstName, i.lastName -- grouping the specific instructor with the amount of lessons from COUNT
)
SELECT
    instructorID AS instructorID, -- alias for column
    firstName AS first_name,  -- alias for column
    lastName AS last_name, -- alias for column
    lesson_count AS no_of_lessons -- alias for column
FROM
    lessonsCurrentMonth -- from temp. table lessonsCurrentMonth
WHERE
    lesson_count > 0 -- only shows instructors that have given atleast one lesson on current month
ORDER BY
    lesson_count DESC; -- orders the no. of lessons given from the most to the least

--fourth query--

CREATE VIEW room_for_ensemble AS -- create a view (virtual table) for easier access
  
SELECT
	TO_CHAR(TO_DATE(l.date, 'YYYY-MM-DD'), 'Day') AS day, -- converting VARCHAR type for date to DATE type and then to CHAR type with alias for day column
	e.genre AS genre, -- alias for genre column
	CASE -- check if specific case is met
        WHEN 15 - COUNT(sl.studentID) = 0 THEN 'no_seats' -- if 15 - count of students taking lesson = 0, there is no room
        WHEN 15 - COUNT(sl.studentID) <= 2 THEN '1_or_2_seats' -- if 15 - count of students taking lesson <= 2, there is some room
        ELSE 'many_seats' -- if not set as many seats left
    END AS "no_of_free_seats" -- alias for no of free seats column
FROM
    ensemble_lesson e -- ensemble_lesson table
JOIN
    lesson l ON e.lessonID = l.lessonID -- join through common lessonID through tables to see the day for the lesson
JOIN
    student_lesson sl ON e.lessonID = sl.lessonID -- join thorugh common lessonID to see how many students have booked ensemble
WHERE
    TO_DATE(l.date, 'YYYY-MM-DD') BETWEEN '2024-01-15' AND '2024-01-22' -- checking a week in january
GROUP BY
    e.genre, e.lessonID, l.date -- grouping by genre, lesson and date
ORDER BY
    TO_DATE(l.date, 'YYYY-MM-DD'), e.genre; -- order by day (ASC on defualt) and genre






