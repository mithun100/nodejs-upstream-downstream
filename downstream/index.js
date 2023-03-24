const express = require('express');

const app = express();
const port = process.env.PORT || 5555;


app.get('/', (req, res) => {
  res.send('Hello from downstream!');
});

app.listen(port, () => {
  console.log(`Downstream application listening at http://localhost:${port}`);
});

