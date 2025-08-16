const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.send('Hola Mundo, Justin Ferreras 2023-1863');
});

app.listen(port, () => {
    console.log(`App escuchando en http://localhost:${port}`);
});
