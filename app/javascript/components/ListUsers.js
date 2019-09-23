import React, { Component } from 'react'
import CreateUser from './CreateUser'
import $ from 'jquery'

class ListUsers extends Component {
  constructor(props) {
    super(props)
  }

  handleDelete(id_user) {
    $.ajax({
      type: "DELETE",
      data: { authenticity_token: $('[name="csrf-token"]')[0].content, id: id_user },
      url: this.props.url
    })
  }

  renderUsers() {
    const users = this.props.users
    return users.map((value, index) => {
      return (
        <tr>
          <td>{value.first_name}</td>
          <td>{value.last_name}</td>
          <td>{value.phone}</td>
          <td>
            <button onClick={ this.handleDelete.bind(this, value.id) }>Eliminar</button>
          </td>
        </tr>
      )
    })
  }

  render() {
    return (
      <div>
        {
          <CreateUser />
        }
        <table>
          <tbody>
            <tr>
              <th>Nombre</th>
              <th>Apellido</th>
              <th>Telefono</th>
            </tr>
            { this.renderUsers() }
          </tbody>
        </table>
      </div>
    )
  }
}

export default ListUsers
