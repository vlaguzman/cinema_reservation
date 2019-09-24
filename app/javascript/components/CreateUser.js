import React, { Component } from 'react'
import classNames from 'classnames'

class CreateUser extends Component {
  constructor(props) {
    super(props)
  }

  render() {
    return (
      <form onSubmit={this.props.handleSubmit} action='/user' method='post'>
        <h3>Crear Usuario</h3>
        <label>Nombre</label>
        <input type='text' name='user[first_name]' id='user_first_name'></input>
        <label>Apellido</label>
        <input type='text' name='user[last_name]' id='user_last_name'></input>
        <label>Telefono</label>
        <input type='tel' name='user[phone]' id='user_phone'></input>
        <input className='button-create' type='submit' value='submit'></input>
        <span>Para ver reflejado el usuario en la tabla, por favor recarge la pagina</span>
      </form>
    )
  }
}

export default CreateUser
