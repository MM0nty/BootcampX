const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const sqlquery =
`SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM assistance_requests JOIN teachers ON teacher_id = teachers.id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE $1
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name`;
const values = [`%${process.argv[2]}%`];
pool.query(sqlquery, values)
.then(response => { 
  console.log(response.rows);
})
.catch(error => console.error('query error', error.stack));