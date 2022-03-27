import React, {useState} from 'react'
import Tab from '@material-ui/core/Tab';
import TabContext from '@material-ui/lab/TabContext';
import TabList from '@material-ui/lab/TabList';
import TabPanel from '@material-ui/lab/TabPanel';
import Test from '../stocktable/test';
import { Container, 
  createTheme, 
  TextField, 
  ThemeProvider,
  Typography, 
} from '@material-ui/core'
import useStyles from './style'


const darkTheme = createTheme({
  palette: {
    primary: {
      main: "#fff",
    },
    type: "dark",
  },
});


const StockExchange = ({user}) => {
  const classes = useStyles()
  const [value, setValue] = React.useState('1');
  const [search,setSearch] = React.useState('');

  const handleChange = (event, newValue) => {
    setValue(newValue);
  };



  return (
    
      <Container style={{textAlign: 'center'}}>
        <Typography
            variant="h4"
            style={{margin: 18, fontFamily: 'Montserrat'}}
            >
                Stock Prices by Market Cap
            </Typography>
            <ThemeProvider theme={darkTheme}>
              <TextField 
                  label={<Typography className={classes.label}>Search for a Stock Ticker...</Typography>}
                  variant="outlined"
                  className={classes.text}
                  style={{fontFamily: "Montserrat"}}
                  onChange={(e) => setSearch(e.target.value)}
                  >
              </TextField>
            </ThemeProvider>

        <TabContext value={value}>
          
            <TabList
            className={classes.tablist}
            onChange={handleChange} 
            aria-label="simple tabs "
            TabIndicatorProps={{
            style: {
              backgroundColor: "#D97D54"
            }
            }}>
              <Tab label="HOSE" value="1" className={classes.tab}/>
              <Tab label="HNX" value="2" className={classes.tab}/>
              <Tab label="UPCOM" value="3" className={classes.tab}/>
            </TabList>
  
          <TabPanel value="1"><Test stockExchange={'hose'} user={user}/></TabPanel>
          <TabPanel value="2"><Test stockExchange={'hnx'} user={user}/></TabPanel>
          <TabPanel value="3"><Test stockExchange={'upcom'} user={user}/></TabPanel>
        </TabContext>
        
      
      
      </Container>
    
  )
}

export default StockExchange