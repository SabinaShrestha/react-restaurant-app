import React from 'react';
import {Link} from 'react-router-dom';
import axios from 'axios';
// import Form from './Form';

class Restaurant extends React.Component {
  state = { menus: [] }

  componentDidMount(){
    axios.get('/api/menus')
      .then(({data}) => this.setState({menus: data}))
  }

  render(){
    const { menus } = this.state
    return (
      <div>
        <h2>Hello World</h2>
        <ul>
          { menus.map( m =>
              <li key={m.id}>
                <Link to={`/menus/${m.id}`}>
                  {m.option}
                </Link>
              </li>
            )
          }
        </ul>
      </div>
    )
  }





}


export default Restaurant;
