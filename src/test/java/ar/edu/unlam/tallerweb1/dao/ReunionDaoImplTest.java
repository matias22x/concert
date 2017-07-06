package ar.edu.unlam.tallerweb1.dao;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

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
public class ReunionDaoImplTest {

    @Inject
    private ReunionDao reunionDao;

    @Inject
    private UsuarioDao usuarioDao;

    private Usuario usuario;

    private Reunion reunion;

    @Test
    public void sacarUsuarioDeReunion() {

        /* Inicialización */
        usuario = new Usuario();
        usuario.setId(2L);
        usuario.setEmail("email2");
        usuario.setPassword("pass2");
        usuario.setApellido("apellido2");
        usuario.setNombre("nombre2");

        usuarioDao.registrarUsuario(usuario);

        Evento evento = new Evento();

        reunion = new Reunion();
        reunion.setidReunion(200L);
        reunion.setNombreReunion("Nombre 1");
        reunion.setEvento(evento);
        reunionDao.crearReunionDAO(reunion);

        reunionDao.agregarUsuarioAReunionDAO(reunion, usuario);

        Usuario usuarioConReunion = usuarioDao.consultarUsuario(usuario);
        List<Reunion> reunionConUsuario = reunionDao.busquedaReunionesDao("Nombre 1");

        assertThat(usuarioConReunion.getReuniones()).hasSize(1);
        assertThat(reunionConUsuario.get(1).getUsuarios()).hasSize(1);

        /* Operación */
        reunionDao.salirDeReunionDao(reunion, usuario);

        /* Verificación */
        Usuario usuarioSinReunion = usuarioDao.consultarUsuario(usuario);
        List<Reunion> reunionSinUsuario = reunionDao.busquedaReunionesDao("Nombre 1");

        assertThat(usuarioSinReunion.getReuniones()).isEmpty();
        assertThat(reunionSinUsuario.get(1).getUsuarios()).isEmpty();
    }
}
