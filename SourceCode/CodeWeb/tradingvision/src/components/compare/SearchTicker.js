import React, {useEffect, useState} from 'react'
import useStyles from '../search/style'
import {  
  createTheme, 
  ThemeProvider, 
  TableContainer, 
  LinearProgress,
  Table,
  TableHead,
  TableRow,
  TableCell,
  TableBody,
  Paper,
} from '@material-ui/core'
import { useNavigate } from 'react-router-dom';
import axios from 'axios';


const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#fff",
      },
      type: "dark",
      fontFamily: "Montserrat",
    },
  });


// const rows = [
//   { id: 1, ticker: 'ACB', description: "Asia Commercial Joint Stock Bank", industry:"Financials"},
//   { id: 2, ticker: 'ACB', description: "Asia Commercial Joint Stock Bank", industry:"Financials"},  
//   { id: 3, ticker: 'BID', description: "JOINT STOCK COMMERCIAL BANK FOR INVESTMENT AND DEVELOPMENT OF VIETNAM", industry:"Financials"},

// ]; 
const SearchTicker = (props) => {
    const classes = useStyles()
    const [loading, setLoading] = React.useState(false)
    const history = useNavigate()
    const handleOpen = () => setLoading(true);
    const handleClosed = () => setLoading(false);

    const [companies, setCompanies] = useState([]);

    // 
    useEffect(() => {
      componentDidMount()
    },[])

    const componentDidMount = async() =>{
       axios.get("/api/companyinfo")
       .then((response)=>{
          setCompanies(response.data.companyinfo);
       })
    }

    const rows = companies
    .filter((company) => company.StockExchange === props.stockExchange)
    .map((company) => {
        return {
          id: company._id,
          ticker: company.Ticker,
          companyName: company.CompanyName,
          industry: company.Industry,
          
        };
      
    })
  return (
    <ThemeProvider theme={darkTheme}>
      <TableContainer 
            className={classes.tableContainer}
            component={Paper}>
                {
                    loading? (
                        <LinearProgress style={{backgroundColor:"primary"}}/>
                    ):(
                        <Table stickyHeader aria-label="sticky table">
                            <TableHead  className={classes.tablehead}
                            rowCount={rows.length}>
                                <TableRow>
                                {["TICKER", "DESCRIPTION", "INDUSTRY"].map((head) => (
                                    <TableCell
                                    className={classes.tablecell}
                                    key={head}
                                    align={head === "TICKER" ? "" : "left"}
                                    >
                                    {head}
                                    </TableCell>
                                ))}
                                </TableRow>
                            </TableHead>
                    
                            <TableBody>
                                {props.handleSearch(rows)
                                .map((row)=> (
                                    <TableRow                                   
                                    ref = {props.myRef}
                                    className ={classes.row}
                                    onClick={() => {
                                      props.onSelectRow(row.id);
                                      props.executeScroll();
                                    }}
                                    
                                    selected={props.RowID === row.id}
                                    classes={{
                                      root: classes.tableRowRoot,
                                      selected: classes. tableRowSelected,
                                    }}
                                    key={row.ticker}>
                                    
                                    <TableCell component='th' scope='row'
                                        style={{
                                          fontWeight: 'bold',
                                        }}
                                        className={classes.cell}
                                        onClick={handleClosed}> {row.ticker}
                                        
                                    </TableCell>
                                    <TableCell align="left" className={classes.cell}>{row.companyName}</TableCell>
                                    <TableCell align="left" className={classes.cell}>{row.industry}</TableCell>
                                    
                                </TableRow>
                                ))}
                            </TableBody>
                        </Table>
                    )
                }
            </TableContainer>
    </ThemeProvider>
  )
}

export default SearchTicker