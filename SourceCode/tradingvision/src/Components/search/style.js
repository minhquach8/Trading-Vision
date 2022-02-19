import {makeStyles} from '@material-ui/core'


const useStyles = makeStyles((theme)=>({
    search: {
        position: 'relative',
        borderRadius: theme.shape.borderRadius,
        backgroundColor: "rgba(55,58,109,0.8)",
        '&:hover': {
          backgroundColor: "rgba(55,58,109,0.5)",
        },
        marginRight: theme.spacing(5),
        marginLeft: theme.spacing(5),
        width: '100%',
        [theme.breakpoints.up('sm')]: {
          marginLeft: theme.spacing(5),
          width: 'auto',
        },
      },
      searchIcon: {
        padding: theme.spacing(1, 2),
        height: '100%',
        position: 'absolute',
        pointerEvents: 'none',
        display: 'flex',
      },
      inputRoot: {
        color: 'inherit',
      },
      inputInput: {
        padding: theme.spacing(1, 1, 1, 0),
        // vertical padding + font size from searchIcon
        paddingLeft: `calc(1em + ${theme.spacing(4)}px)`,
        transition: theme.transitions.create('width'),
        width: '100%',
        [theme.breakpoints.up('md')]: {
          width: '20ch',
        },
      },
      tablist:{
        indicatorColor: "primary",
        color: "orange",
        
      },
      tab:{
        marginTop: 15,
        fontFamily: "Montserrat",
      },
      tablehead:{
        backgroundColor:"#131110",
      },
      tablecell:{
        color: "white",
        fontWeight: "700",
        fontFamily: "Montserrat",
      },
      row: {
        backgroundColor: "#131110",
        cursor: "pointer",
        "&:hover": {
          backgroundColor: "#36454F",
        },
        fontFamily: "Montserrat",
      },
      cell:{
        
        color:'white',
      },
      tableContainer: {
        marginTop: 10,
        maxHeight: 400,
      },
}))

export default useStyles