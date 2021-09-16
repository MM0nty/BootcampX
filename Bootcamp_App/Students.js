const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT students.id, students.name AS student, cohorts.name AS cohort
FROM students JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE '%${process.argv[2]}%'
LIMIT ${process.argv[3]};
`)
.then(response => { 
  response.rows.forEach(user => {
      console.log(`${user.student} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
  })
})
.catch(error => console.error('query error', error.stack));