const express = require('express');
const axios = require('axios');

const app = express();
const port = process.env.PORT || 4444;
const downstream_url = process.env.DOWNSTREAM_URL || 'http://localhost:5555';

console.log(` Downstream URL ${downstream_url}`);

app.get('/', async (req, res) => {
  try {
    const downstreamResponse = await axios.get(`${downstream_url}`);
    res.send(downstreamResponse.data);
  } catch (error) {
    console.error(error);
    res.sendStatus(500);
  }
});

app.listen(port, () => {
  console.log(`Upstream application listening at http://localhost:${port}`);
});

