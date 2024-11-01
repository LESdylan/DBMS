-- Step 1: Drop indexes if they exist
DROP INDEX IF EXISTS search_enroll_sem_by_id;
DROP INDEX IF EXISTS search_enroll_by_student_id;
DROP INDEX IF EXISTS search_enroll_by_course_id;
DROP INDEX IF EXISTS search_idx_stud_id;
DROP INDEX IF EXISTS search_enrollement_course_id;
DROP INDEX IF EXISTS idx_courses_department_number_semester;
DROP INDEX IF EXISTS idx_courses_covering;
DROP INDEX IF EXISTS search_by_semester_depart_number_title_count_enrollment; -- Remove parentheses for naming
DROP INDEX IF EXISTS idx_satisfies_course_id;
DROP INDEX IF EXISTS idx_courses_title_semester;
DROP INDEX IF EXISTS search_enrollments_by_student_id;
DROP INDEX IF EXISTS search_enrollments_by_course_id;
DROP INDEX IF EXISTS search_by_courses;
DROP INDEX IF EXISTS search_by_semester;
DROP INDEX IF EXISTS idx_satisfies_course_id;

-- Step 2: Create indexes for enrollments table
CREATE INDEX search_enroll_by_student_id ON enrollments (student_id);
CREATE INDEX search_enroll_by_course_id ON enrollments (course_id);

-- Step 3: Create indexes for students table
CREATE INDEX search_idx_stud_id ON students (id);

-- Step 4: Create indexes for courses table
CREATE INDEX search_by_semester ON courses (semester);
CREATE INDEX idx_courses_covering ON courses (id, department, number, title, semester);
CREATE INDEX idx_courses_department_number_semester ON courses (department, number, semester);
CREATE INDEX idx_courses_title_semester ON courses (title, semester);

-- Step 5: Create index for satisfies table
CREATE INDEX idx_satisfies_course_id ON satisfies (course_id);
