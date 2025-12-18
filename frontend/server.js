const express = require('express');
const path = require('path');
const app = express();
const PORT = process.env.PORT || 3000;


// serve static files in public/
app.use(express.static(path.join(__dirname, 'public')));


// an optional convenience proxy endpoint in case you want the server
// to forward requests to Flask backend (useful in some hosting setups).
app.use('/api/proxy', express.json(), async (req, res) => {
    // This is optional; by default the client posts directly to the Flask service.
    res.status(501).json({ message: 'Not implemented proxy. Post directly to backend.' });
});


app.listen(PORT, "0.0.0.0", () => {
    console.log(`Frontend server listening on port ${PORT}`);
});
