-- Step 2: Drop and create the cipher table
DROP TABLE IF EXISTS cipher;
CREATE TABLE IF NOT EXISTS cipher (
    sentence_id INT,
    pos_char INT,
    length INT,
    FOREIGN KEY (sentence_id) REFERENCES sentences(id) ON DELETE CASCADE
);

-- Step 3: Insert triplet values into the cipher table
INSERT INTO cipher (sentence_id, pos_char, length)
VALUES
(14, 98, 4),
(114, 3, 5),
(618, 72, 9),
(630, 7, 3),
(932, 12, 5),
(2230, 50, 7),
(2346, 44, 10),
(3041, 14, 5);

-- Step 4: Create a view for extracted text
DROP VIEW IF EXISTS sentence_view;
CREATE VIEW sentence_view AS
SELECT
    cipher.sentence_id,
    TRIM(SUBSTRING(sentence, pos_char, length)) AS extracted_text
FROM cipher
JOIN sentences ON sentences.id = cipher.sentence_id;

-- Step 5: Create the final view to concatenate without extra commas or spaces
DROP VIEW IF EXISTS message;
CREATE VIEW message AS
SELECT
    TRIM(GROUP_CONCAT(TRIM(extracted_text) SEPARATOR ' ')) AS phrase
FROM sentence_view;

-- Step 6: Retrieve the final decoded message
SELECT phrase FROM message;
