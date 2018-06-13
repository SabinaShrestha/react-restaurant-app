import React from 'react';
import { NavLink, withRouter } from 'react-router-dom';


const styles = {
  active: {
    textDecoration: 'none',
    fontWeight: 'bold',
    color: 'black'
  },
  link: {
    textDecoration: 'underline',
    color: 'blue',
    cursor: 'pointer',
  }
}


const NavBar = ({ history }) => (
  <nav>
    <NavLink exact activeStyle={styles.active} to="/">Restaurant</NavLink>
  </nav>
)

export default withRouter(NavBar);
