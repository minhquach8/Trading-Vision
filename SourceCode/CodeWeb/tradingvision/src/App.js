import { BrowserRouter as Router, Route, Routes, Navigate } from "react-router-dom";
import './App.css';
import Header from '././components/header/Header';
import Homepage from './pages/homepage/Homepage';
import Stockpage from './pages/specificticker/Stockpage';
import { makeStyles } from "@material-ui/core";
import { FooterContainer } from './containers/footer';
import Favorite from "./pages/favorite/Favorite";
import Reminder from "./pages/reminder/Reminder";
import Login from "./pages/login/Login";
import Profile from "./pages/profile/Profile";
import React, {useState, useEffect} from 'react';
import axios from "axios";
const useStyles = makeStyles(()=>({
  App:{
    backgroundColor: "black",
    color: "white",
    minHeight: "100vh",
  
  }
}));

function App() {
  
  const classes = useStyles() 
  const [user,setUser] = useState(null);

  useEffect(() => {
    const getUser = () => {
      axios.get('/auth/success')
        .then((response) => {
          if (response.status === 200) return response;
          throw new Error("authentication has been failed!");
        })
        .then((resObject) => {
          setUser(resObject.data.user);
        })
        .catch((err) => {
          console.log(err);
        });
    };
    getUser();
  }, []);

  return (
    <div className={classes.App} >
      <Router >
          <Header user={user}/>
          <Routes>
            <Route exact path="/" element={<Homepage/>} />
            <Route exact path="/stocks/:ticker" element={user ? <Stockpage /> : <Navigate to="/login"/>} />
            <Route path="/favorite" element={user ? <Favorite/>:<Navigate to="/login"/> }/>
            <Route path="/reminder" element={user ? <Reminder/>: <Navigate to="/login"/>} />
            <Route path="/login" element={user ? <Navigate to="/"/> : <Login/>} />
            <Route path="/profile" element={<Profile user={user}/>}/>
          </Routes>
          <FooterContainer />
      </Router>
    </div>
  );
}

export default App;
