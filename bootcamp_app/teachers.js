  
const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

let which_month = process.argv[2];
let limit2 = process.argv[3];
pool.query(`
SELECT DISTINCT (teachers.name) as teacher,  cohorts.name as cohorts
FROM teachers 
JOIn assistance_requests ON assistance_requests.teacher_id = teachers.id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = $1
ORDER BY teacher
`, [which_month])
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohorts}: ${user.teacher}`);
  })
}).catch(err => console.error('query error', err.stack));
