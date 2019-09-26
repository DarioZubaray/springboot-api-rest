package com.github.dariozubaray.springboot.api.rest.models.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import com.github.dariozubaray.springboot.api.rest.models.entity.Cliente;
import com.github.dariozubaray.springboot.api.rest.models.services.IClienteService;

@CrossOrigin(origins = {"http://localhost:4200"})
@RestController
@RequestMapping("/api")
public class ClienteRestController {

    @Autowired
    private IClienteService clienteService;

    @GetMapping("/clientes")
    public List<Cliente> index() {
        return clienteService.findAll();
    }

    @GetMapping("/clientes/{id}")
    public ResponseEntity<?> show(@PathVariable Long id) {
        Cliente cliente =  null;
        Map<String, Object> response = new HashMap<>();

        try {
            cliente = clienteService.findById(id);
        } catch (DataAccessException e) {
            response.put("mensaje", "Error al ejecutar la consulta en la BD");
            response.put("error", e.getMessage().concat(e.getMostSpecificCause().getMessage()));
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }

        if(cliente == null) {
            response.put("mensaje", "El cliente con el ID " + id + " no existe en la BD");
            return new ResponseEntity<>(response, HttpStatus.NOT_FOUND);
        }

        return new ResponseEntity<>(cliente, HttpStatus.OK);
    }

    @PostMapping("/clientes")
    @ResponseStatus(code = HttpStatus.CREATED)
    public ResponseEntity<?> create(@RequestBody Cliente cliente) {
        Cliente clienteCreado =  null;
        Map<String, Object> response = new HashMap<>();

        try {
            clienteCreado = clienteService.save(cliente);
        } catch (DataAccessException e) {
            response.put("mensaje", "Error al ejecutar la actualizacion en la BD");
            response.put("error", e.getMessage().concat(e.getMostSpecificCause().getMessage()));
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }

        response.put("mensaje", "El cliente ha sido creado con exito");
        response.put("cliente", clienteCreado);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PutMapping("/clientes/{id}")
    @ResponseStatus(code = HttpStatus.CREATED)
    public ResponseEntity<?> update(@RequestBody Cliente cliente, @PathVariable Long id) {
        Cliente clienteActualizado = null;
        Map<String, Object> response = new HashMap<>();

        Cliente clienteDB = null;
        try {
            clienteDB = clienteService.findById(id);
        } catch (DataAccessException e) {
            response.put("mensaje", "Error al ejecutar la consulta en la BD");
            response.put("error", e.getMessage().concat(e.getMostSpecificCause().getMessage()));
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }

        if(clienteDB == null) {
            response.put("mensaje", "El cliente con el ID " + id + " no existe en la BD");
            return new ResponseEntity<>(response, HttpStatus.NOT_FOUND);
        }

        if (cliente.getNombre() != null) {
            clienteDB.setNombre(cliente.getNombre());
        }
        if (cliente.getApellido() != null) {
            clienteDB.setApellido(cliente.getApellido());
        }
        if (cliente.getEmail() != null) {
            clienteDB.setEmail(cliente.getEmail());
        }
        if (cliente.getCreateAt() != null) {
            clienteDB.setCreateAt(cliente.getCreateAt());
        }

        try {
            clienteActualizado = clienteService.save(clienteDB);
        } catch (DataAccessException e) {
            response.put("mensaje", "Error al ejecutar la actualizacion en la BD");
            response.put("error", e.getMessage().concat(e.getMostSpecificCause().getMessage()));
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }

        response.put("mensaje", "El cliente ha sido actualizado con exito");
        response.put("cliente", clienteActualizado);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @DeleteMapping("/clientes/{id}")
    public ResponseEntity<?> delete(@PathVariable Long id) {
        Map<String, Object> response = new HashMap<>();

        try {
            clienteService.delete(id);
        } catch (DataAccessException e) {
            response.put("mensaje", "Error al ejecutar la eliminacion en la BD");
            response.put("error", e.getMessage().concat(e.getMostSpecificCause().getMessage()));
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }

        response.put("mensaje", "El cliente ha sido eliminado con exito");
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
}
