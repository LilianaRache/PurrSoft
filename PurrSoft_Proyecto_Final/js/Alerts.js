//Exitoso Mascota
function update_success_modal() {

    Swal.fire({
        title: 'Registro actualizado exitosamente',
        width: 400,
        padding: '3em',
        background: '#fff url(/images/trees.png)',
        backdrop: `rgba(0,0,123,0.4) url("../Images/nyan-cat.gif") left top no-repeat`
    })

}

function create_success_modal() {

    Swal.fire({
        title: ' Se registro exitosamente',
        width: 400,
        padding: '3em',
        background: '#fff url(/images/trees.png)',
        backdrop: `rgba(0,0,123,0.4) url("../Images/nyan-cat.gif") left top no-repeat`
    })

}

function delete_success_modal() {

    Swal.fire({
        title: 'Eliminado exitosamente',
        width: 400,
        padding: '3em',
        background: '#fff url(/images/trees.png)',
        backdrop: `rgba(0,0,123,0.4) url("../Images/nyan-cat.gif") left top no-repeat  width:100px`
    })

}

function activate_success_modal() {

    Swal.fire({
        title: 'Activado exitosamente',
        width: 400,
        padding: '3em',
        background: '#fff url(/images/trees.png)',
        backdrop: `rgba(0,0,123,0.4) url("../Images/nyan-cat.gif") left top no-repeat`
    })

}

// Error Mascota
function update_fail_modal() {
    Swal.fire({
        icon: 'error',
        title: 'Oops... no se pudo actualizar correctamente'
    })
}

function create_fail_modal() {
    Swal.fire({
        icon: 'error',
        title: 'Oops... no se pudo registrar correctamente'
    })
}

function delete_fail_modal() {
    Swal.fire({
        icon: 'error',
        title: 'Oops... no se pudo eliminar correctamente'
    })
}

function activate_fail_modal() {
    Swal.fire({
        icon: 'error',
        title: 'Oops... no se pudo activar correctamente'
    })
}


function search_fail_modal() {
    Swal.fire({
        icon: 'error',
        title: 'Oops... no se pudo encontrar el usuario. Digite correctamente los datos'
    })
}
//Exitoso Usuario

function create_success_user_modal() {
    Swal.fire(
        'Que Bien!',
        'El usuario se registro correctamente',
        'success'
        
    )
}

function update_success_user_modal() {
    Swal.fire(
        'Que Bien!',
        'El usuario se actualizo exitosamente',
        'success'
    )
}

// Error Usuario

function create_fail_user_modal() {
    Swal.fire({
        icon: 'error',
        title: 'Oops... no se pudo registrar el usuario correctamente'
    })
}
function update_fail_user_modal() {
    Swal.fire({
        icon: 'error',
        title: 'Oops... no se pudo actualizar el usuario correctamente'
    })
}
//Error Login
function login_error_modal() {
    Swal.fire({
        icon: 'error',
        title: 'Oops... no pudo ingresar, por favor ingrese los datos correctos'
    })
}

//Registro de historia

function create_success_detail_modal() {

    Swal.fire({
        title: ' Se registro exitosamente',
        width: 300,
        padding: '3em',
        background: '#fff url(/images/trees.png)',
        backdrop: `rgba(0,0,123,0.4) url("../Images/detalleOK.gif") left top no-repeat`
    })

}

function create_fail_detail_modal() {
    Swal.fire({
        icon: 'error',
        title: 'Oops... no se pudo registrar el detalle correctamente'
    })
}


