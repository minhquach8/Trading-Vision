//* Import modules
require("express-async-errors");
const morgan = require("morgan");
const connectDB = require("./config/db");
const passport = require("passport");
const session = require("express-session");
const MongoStore = require("connect-mongo")(session);
const mongoose = require("mongoose");

//* Import express and initialize
const express = require("express");
const app = express();

/* Load Config */
//.env
require("dotenv").config({ path: "./config/.env" });
//.passport
require("./config/passport")(passport);

// CONSTANT VARIABLES
const PORT = process.env.PORT || 5000;

// Sessions
app.use(
	session({
		secret: process.env.SECRET_KEY,
		// Forces the session to be saved back to the session store
		resave: true,
		// Forces the session that is 'uninitialized to be saved to the store
		saveUninitialized: false,
		cookie: {
			expires: 60 * 15 * 1000,
		},
		store: new MongoStore({ mongooseConnection: mongoose.connection }),
	})
);

/* ====================================================== */
/* MIDDLEWARE */
const notFoundMiddleware = require("./middleware/not-found");
const errorHandlerMiddleware = require("./middleware/error-handler");
const { ensureAuth } = require("./middleware/googleAuth.js");

app.use(express.json());
app.use(morgan("dev"));
app.use(passport.initialize());
app.use(passport.session());

/* ====================================================== */
/* ROUTES */
// GoogleAuth
const googleAuthRoutes = require("./routes/googleAuth.route");
app.use(googleAuthRoutes);

// Company Info
const companyinfoRoutes = require("./routes/companyinfo.route");
app.use("/api/companyinfo", companyinfoRoutes);

// Stocks
const stocksRoutes = require("./routes/stock.route");
app.use("/api/stocks", stocksRoutes);

// Predictions
const predictionRoutes = require("./routes/prediction.route");
app.use("/api/predictions", predictionRoutes);

// Reminders
const reminderRoutes = require("./routes/reminder.route");
app.use("/api/reminders", ensureAuth, reminderRoutes);

app.use(notFoundMiddleware);
app.use(errorHandlerMiddleware);
/* ====================================================== */
// Server is listening
const start = async () => {
	try {
		await connectDB();
		app.listen(PORT, console.log(`Server is running on port ${PORT}`));
	} catch (error) {
		console.log(error);
	}
};

start();
