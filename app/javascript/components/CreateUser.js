import React, { Component } from 'react'

class CreateUser extends Component {
  handleSubmit() {
    console.log("aca llegue")
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit()}>
        <span>Nombre</span>
        <input type='text'></input>
        <span>Apellido</span>
        <input type='text'></input>
        <span>Telefono</span>
        <input type='tel'></input>
        <input type='submit' value='submit'></input>
      </form>
    )
  }
}

export default CreateUser
