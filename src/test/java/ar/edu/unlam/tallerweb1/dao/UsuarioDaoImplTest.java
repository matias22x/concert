package ar.edu.unlam.tallerweb1.dao;

import static org.assertj.core.api.Assertions.assertThat;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Reunion;
import ar.edu.unlam.tallerweb1.modelo.Usuario;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test-applicationContext.xml" })
public class UsuarioDaoImplTest {

    @Inject
    private ReunionDao reunionDao;

    @Inject
    private UsuarioDao usuarioDao;

    private Usuario usuario;

    private Reunion reunion;

    @Test
    public void consultarUsuarioObtieneLasReuniones() {

        /* Inicializaci�n */
        usuario = new Usuario();
        usuario.setId(1L);
        usuario.setEmail("cambiarmail");
        usuario.setPassword("pass1");
        usuario.setApellido("apellido1");
        usuario.setNombre("nombre1");

        usuarioDao.registrarUsuario(usuario);

        Evento evento = new Evento();

        reunion = new Reunion();
        reunion.setidReunion(100L);
        reunion.setEvento(evento);
        reunionDao.crearReunionDAO(reunion);

        reunionDao.agregarUsuarioAReunionDAO(reunion, usuario);

        /* Operaci�n */
        Usuario resultado = usuarioDao.consultarUsuario(usuario);

        /* Verificaci�n */
        assertThat(resultado.getReuniones()).hasSize(1);
    }

}
