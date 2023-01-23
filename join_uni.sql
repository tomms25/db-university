-- -- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.*
FROM `students`
  JOIN `degrees`
    ON `degrees`.`id` = `students`.`degree_id`
WHERE `degrees`.`name` LIKE 'Corso di Laurea in Economia';

-- -- 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT * 
FROM `degrees`
  JOIN `departments`
    ON `departments`.`id` = `degrees`.`department_id`
WHERE `degrees`.`level` LIKE 'magistrale'
AND `departments`.`name` LIKE 'Dipartimento di Neuroscienze';

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `teachers`.`name`,`teachers`.`surname`,`courses`.*
FROM `teachers`
  JOIN `course_teacher`
    ON `teachers`.`id` = `course_teacher`.`teacher_id`  
  JOIN `courses`
    ON `courses`.`id` = `course_teacher`.`course_id`
WHERE `teachers`.`id` = 44;


-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.* 
FROM `students`
  JOIN `degrees`
    ON `degrees`.`id` = `students`.`degree_id`
  JOIN `departments`
    ON `departments`.`id` = `degrees`.`department_id`
ORDER BY `students`.`surname`,`students`.`name`;