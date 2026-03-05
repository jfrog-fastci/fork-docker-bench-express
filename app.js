const express = require('express');
const cors = require('cors');
const morgan = require('morgan');

const app = express();
const port = 3000;

app.use(cors());
app.use(morgan('combined'));
app.use(express.json());

app.get('/', (req, res) => {
  res.json({ message: 'Hello from Express!' });
});

app.get('/health', (req, res) => {
  res.json({ status: 'healthy' });
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
