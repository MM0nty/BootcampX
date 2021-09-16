const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const sqlquery =
`SELECT students.id, students.name AS student, cohorts.name AS cohort
FROM students JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE $1
LIMIT $2`;
const cohortName = process.argv[2];
const limit = process.argv[3];
const values = [`%${cohortName}%`, limit];
pool.query(sqlquery, values)
.then(response => { 
  response.rows.forEach(user => {
      console.log(`${user.student} has an id of ${user.id} and was in the ${user.cohort} cohort`);
  })
})
.catch(error => console.error('query error', error.stack));