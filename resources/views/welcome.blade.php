<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Juego del Calamar para Niños</title>
    <link rel="stylesheet" href="{{ asset('css/custom/estilos.css') }}">
    <link rel="stylesheet" href="{{ asset('css/custom/tabla.css') }}">
    
    {{-- pie de pagina  --}}
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,400,600,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="{{ asset('css/pie/ionicons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/pie/style.css') }}">
    <link rel="stylesheet" href="{{ asset('css/pie/bootstrap.min.css') }}">

{{--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% encabezado --}}
    <link rel="stylesheet" type="text/css" href="{{ asset('css/header/style.css') }}">
    <!-- Responsive-->
    <link rel="stylesheet" href="{{ asset('css/header/responsive.css') }}">
    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="{{ asset('css/header/jquery.mCustomScrollbar.min.css') }}">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <!-- fonts -->
    {{-- <link href="https://fonts.googleapis.com/css?family=Poppins:400,700|Roboto:400,700&display=swap" rel="stylesheet"> --}}
    <!-- owl stylesheets --> 
    <link rel="stylesheet" href="{{ asset('css/header/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/header/owl.theme.default.min.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    {{-- data datable --}}
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">

</head>
<body>

    <div class="header_section">
        <div class="container-fluid">
           <nav class="navbar navbar-expand-lg navbar-light bg-light">
              <a class="navbar-brand" href="index.html"><img src="images/logo.png"></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                 <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                       <a class="nav-link" href="{{ url('admin') }}">Iniciar Sesion</a>
                    </li>
                    <li class="nav-item">
                       <a class="nav-link" href="{{ route('registro') }}">Registrare</a>
                    </li>
                    <li class="nav-item">
                       <a class="nav-link" href="https://wa.me/59171039910"><i class="fa-brands fa-whatsapp fa-beat fa-2x" style="color: #2ba81a;"></i></a>
                    </li>
                 </ul>
                 <form class="form-inline my-2 my-lg-0">
                    <div class="user_icon"><a href="#"><i class="fa fa-user" aria-hidden="true"></i></a></div>
                    <div class="user_icon"><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></div>
                 </form>
                 <div class="call_btn"><a href="#"><i class="fa fa-phone" aria-hidden="true"></i><span class="padding_left10">Llamar : 60902299</span></a></div>
              </div>
           </nav>
        </div>
     </div>

    <!-- Sección de Bienvenida -->
    <section class="welcome-section">
        <div class="welcome-container">
            <h1>¡Bienvenidos al Mundo del Juego del Calamar!</h1>
            <p>¿Estás listo para sumergirte en una aventura llena de diversión, desafíos y emociones? ¡Regístrate y únete a la diversión!</p>
            <a href="{{ route('registrar_jugador') }}" class="register-button">¡Regístrate Ahora! 🎉</a>
        </div>
    </section>
        <!-- Sección de Contáctanos - Únete a Nosotros -->
<section class="join-us-section">
    <div class="join-us-container">
        <h2>Únete a Nosotros</h2>
        <p>¿Quieres ser parte de nuestra comunidad? Tenemos varias formas en las que puedes participar. ¡Elige la que más te guste!</p>

        <!-- Tarjetas de Opciones -->
       
            <!-- Opción 1: Guardia -->
          

            <!-- Opción 2: Acompañante en Recorridos -->
            <div class="join-options">
                <div class="join-card">
                    <h3>👮‍♂️ Sé un Guardia</h3>
                    <p>Cuida a los participantes y asegúrate de que todos sigan las reglas del juego. ¡Tu ayuda es invaluable!</p>
                    <a href="https://wa.me/59160902299?text=Quiero%20ser%20guardia,%20más%20información%20por%20favor." class="btn-join" target="_blank">Más Información</a>
                </div>

                <!-- Opción 1: Acompáñanos en Recorridos -->
                <div class="join-card">
                    <h3>👫Recorridos</h3>
                    <p>Únete a nuestros recorridos con la muñeca en esta emocionante aventura.</p>
                    <a href="https://wa.me/59160902299?text=Quiero%20ser%20acompañante%20en%20recorridos,%20más%20información%20por%20favor." class="btn-join" target="_blank">Más Información</a>
                </div>
            
                <!-- Opción 2: Voluntariado -->
                <div class="join-card">
                    <h3>🤝 Voluntariado</h3>
                    <p>Participa como voluntario y contribuye a hacer de este evento una experiencia inolvidable para todos.</p>
                    <a href="https://wa.me/59160902299?text=Quiero%20ser%20voluntario,%20más%20información%20por%20favor." class="btn-join" target="_blank">Más Información</a>
                </div>
            
                <!-- Opción 3: Otros Roles -->
                <div class="join-card">
                    <h3>🌟 Otros Roles</h3>
                    <p>Tenemos muchas otras formas en las que puedes ayudar. ¡Contáctanos para saber más!</p>
                    <a href="https://wa.me/59160902299?text=Quiero%20saber%20más%20sobre%20otros%20roles,%20más%20información%20por%20favor." class="btn-join" target="_blank">Más Información</a>
                </div>
            </div>

       
    </div>
</section>
   

<section class="info-section">
    <table id="jugadores-table" class="display">
        <thead>
            <tr>
                <th>Número de Jugador</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Foto</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            @foreach($jugadores as $jugador)
                <tr>
                    <td>{{ $jugador->numero_jugador }}</td>
                    <td>{{ $jugador->nombre }}</td>
                    <td>{{ $jugador->apellidos }}</td>
                    <td>
                        <img src="{{ asset('storage/' . $jugador->foto) }}" alt="Foto" width="50">
                    </td>
                    <td>
                        <a href="{{ route('generarPDF', $jugador->id) }}" target="_blank">
                            <button style="background-color:rgb(55,95,122); color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;">
                                Imprimir
                            </button>
                        </a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</section>


    <!-- Sección de Información del Juego -->
    <section class="info-section">
        <div class="info-container">
            <h2>¿Cómo Funciona?</h2>
            <div class="features">
                <div class="feature">
                    <span>✅</span>
                    <p><strong>Regístrate</strong> de manera fácil y rápida.</p>
                </div>
                <div class="feature">
                    <span>✅</span>
                    <p><strong>Elige</strong> tu numero de jugador</p>
                </div>
                <div class="feature">
                    <span>✅</span>
                    <p><strong>Participa</strong> tu y tus amigos</p>
                </div>
                <div class="feature">
                    <span>✅</span>
                    <p><strong>Imprime</strong> tu número de jugador.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Sección de Registro -->
    <section class="register-section">
        <div class="register-container">
            <h2>Siguenos en tik tok</h2>
            <a href="https://www.tiktok.com/@ite_educabol" target="_blank" class="btn-join">Seguir</a>
        </div>
    </section>



    <!-- Sección de Contacto -->
   <!-- Sección de Contáctanos -->
<section class="contact-section">
    <div class="contact-container">
        <h2>Contáctanos</h2>
        <p>¿Tienes preguntas, sugerencias o necesitas ayuda? ¡Estamos aquí para ti! Escríbenos o visítanos.</p>
        
        <div class="contact-content">
            <!-- Formulario de Contacto Simplificado -->
            <div class="contact-form">
                <h3>Envíanos un comentario</h3>
                <form id="whatsappForm">
                    <textarea id="message" placeholder="Escribe tu comentario aquí..." rows="5" required></textarea>
                    <button type="button" onclick="sendToWhatsApp()">Enviar</button>
                </form>
            </div>
        
            <!-- Información de Contacto -->
            <div class="contact-info">
                <h3>Información de Contacto</h3>
                <ul>
                    <li>📍 <strong>Dirección:</strong> Villa 1 de mayo, calle 16 oeste #9, Santa Cruz</li>
                    <li>📧 <strong>Email:</strong> <a href="mailto:info@ite.com.bo">info@ite.com.bo</a></li>
                    <li>📞 <strong>Teléfono:</strong> <a href="tel:+59160902299">+59160902299</a></li>
                    <li>🕒 <strong>Horario:</strong> Lunes a Sábado, 07:30 - 18:30</li>
                </ul>
            </div>
        </div>
        <!-- Mapa de Ubicación (opcional) -->
        <div class="contact-map">
            <h3>¿Dónde Estamos?</h3>
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3798.955174060949!2d-63.1385769!3d-17.8017627!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93f1e9948f88a431%3A0x448c1b5adb32a0f0!2sITE%20(Central)!5e0!3m2!1sen!2sus!4v1695671234567!5m2!1sen!2sus"
                width="100%"
                height="300"
                style="border:0;"
                allowfullscreen=""
                loading="lazy">
            </iframe>
        </div>
    </div>
</section>

<footer class="footer-10">
    <div class="container">
       
        <div class="row">
            <div class="col-md-7">
                <div class="row">
                    <div class="col-md-4 mb-md-0 mb-4">
                        <h2 class="footer-heading">Acerca de ITE</h2>
                        <ul class="list-unstyled">
                            <li><a href="https://ite.com.bo/" class="d-block">Página web</a></li>
                            <li><a href="https://services.ite.com.bo/" class="d-block">Servicios</a></li>
                            <li><a href="https://redes.ite.com.bo" class="d-block">Redes</a></li>
                            <li><a href="https://www.facebook.com/ite.educabol" class="d-block">Facebook</a></li>
                            <li><a href="https://www.tiktok.com/@ite_educabol" class="d-block">Tik Tok</a></li>
                            <li><a href="https://www.instagram.com/ite.educabol/" class="d-block">Instagram</a></li>
                            <li><a href="https://api.whatsapp.com/send/?phone=59171039910" class="d-block">Whatsapp</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 mb-md-0 mb-4">
                        <h2 class="footer-heading">Servicios</h2>
                        <ul class="list-unstyled">
                            <li><a href="https://services.ite.com.bo/modalidades/1" class="d-block">Inicial</a></li>
                            <li><a href="https://services.ite.com.bo/modalidades/2" class="d-block">Primaria</a></li>
                            <li><a href="https://services.ite.com.bo/modalidades/3" class="d-block">Secundaria</a></li>
                            <li><a href="https://services.ite.com.bo/modalidades/4" class="d-block">Pre universitario</a></li>
                            <li><a href="https://services.ite.com.bo/modalidades/5" class="d-block">Institutos</a></li>
                            <li><a href="https://ite.com.bo/universitario" class="d-block">Universitario</a></li>
                            <li><a href="https://ite.com.bo/programacion" class="d-block">Programación</a></li>
                            <li><a href="https://services.ite.com.bo/modalidades/7" class="d-block">Computación</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 mb-md-0 mb-4">
                        <h2 class="footer-heading">services</h2>
                        <ul class="list-unstyled">
                            <li><a href="https://services.ite.com.bo/modalidades/8" class="d-block">Cubo Rubik</a></li>
                            <li><a href="https://services.ite.com.bo/modalidades/9" class="d-block">Ajedrez</a></li>
                            <li><a href="https://services.ite.com.bo/modalidades/11" class="d-block">Dactilografía</a></li>
                            <li><a href="https://services.ite.com.bo/modalidades/12" class="d-block">Oratoria</a></li>
                            <li><a href="https://services.ite.com.bo/modalidades/13" class="d-block">Lectura Escritura</a></li>
                            <li><a href="https://services.ite.com.bo/modalidades/14" class="d-block">Súper Memoria</a></li>
                            <li><a href="https://services.ite.com.bo/modalidades/15" class="d-block">Robótica</a></li>
                            <li><a href="https://services.ite.com.bo/modalidades/16" class="d-block">Programación</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-5 mb-md-0 mb-4">
                <h2 class="footer-heading">Suscríbete</h2>
                <form action="#" class="subscribe-form">
                    <div class="form-group d-flex">
                        <ul class="list-unstyled">
                            <li><a href="https://redes.ite.com.bo" class="d-block">Redes</a></li>
                            <li><a href="https://www.facebook.com/ite.educabol" class="d-block">Facebook</a></li>
                            <li><a href="https://www.tiktok.com/@ite_educabol" class="d-block">Tik Tok</a></li>
                            <li><a href="https://www.instagram.com/ite.educabol/" class="d-block">Instagram</a></li>
                            <li><a href="https://api.whatsapp.com/send/?phone=59171039910" class="d-block">Whatsapp</a></li>
                        </ul>
                    </div>
                    <span class="subheading"><a class="nav-link" href="https://wa.me/59171039910"><i class="fa-brands fa-whatsapp fa-beat fa-3x" style="color: #2ba81a;"></i></a></span>
                </form>
            </div>
        </div>
        <div class="row mt-5 pt-4 border-top">
            <div class="col-md-6 col-lg-8 mb-md-0 mb-4">
                <p class="copyright mb-0 fa-1x">
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados. | Desarrollado por David Flores
                </p>
            </div>
            <div class="col-md-6 col-lg-4 text-md-right">
                <ul class="ftco-footer-social p-0">
                    {{-- <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><span class="ion-logo-twitter"></span></a></li>
                    <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><span class="ion-logo-facebook"></span></a></li>
                    <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><span class="ion-logo-instagram"></span></a></li> --}}
                </ul>
            </div>
        </div>
    </div>
</footer>
<script src="{{ asset('js/pie/jquery.min.js') }}"></script>
<script src="{{ asset('js/pie/popper.js') }}"></script>
<script src="{{ asset('js/pie/bootstrap.min.js') }}"></script>
<script src="{{ asset('js/pie/main.js') }}"></script>

<script src="{{ asset('js/header/bootstrap.bundle.min.js') }}"></script>
<script src="{{ asset('js/header/jquery-3.0.0.min.js') }}"></script>
<script src="{{ asset('js/header/plugin.js') }}"></script>
<!-- sidebar -->
<script src="{{ asset('js/header/jquery.mCustomScrollbar.concat.min.js') }}"></script>
<script src="{{ asset('js/header/custom.js') }}"></script>
<!-- javascript --> 
<script src="{{ asset('js/header/owl.carousel.js') }}"></script>


<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function() {
        // Inicializar DataTable
        $('#jugadores-table').DataTable({
           "language": {
                    "decimal": ",",
                    "thousands": ".",
                    "lengthMenu": "Mostrar _MENU_ registros por página",
                    "zeroRecords": "No se encontraron resultados",
                    "info": "Mostrando página _PAGE_ de _PAGES_",
                    "infoEmpty": "No hay registros disponibles",
                    "infoFiltered": "(filtrado de _MAX_ registros totales)",
                    "search": "Buscar:",
                    "paginate": {
                        "first": "Primera",
                        "last": "Última",
                        "next": "Siguiente",
                        "previous": "Anterior"
                    },
                    "loadingRecords": "Cargando...",
                    "processing": "Procesando...",
                    "emptyTable": "No hay datos disponibles en la tabla",
                    "aria": {
                        "sortAscending": ": activar para ordenar la columna en orden ascendente",
                        "sortDescending": ": activar para ordenar la columna en orden descendente"
                    }
                }
        });
    });

    // Función para imprimir
    function imprimirJugador(id) {
        alert("Imprimir jugador con ID: " + id);
        // Aquí puedes agregar la lógica para imprimir
    }
</script>


<script>
    $('.owl-carousel').owlCarousel({
    loop:true,
    margin:35,
    nav:true,
    center: true,
    responsive:{
        0:{
            items:1,
            margin:0
            },
        575:{
            items:1,
            margin:0
        },
        768:{
            items:3,
            margin:0
        },
        1000:{
            items:3
        }
    }
    })   
</script>  

    <script>
    function sendToWhatsApp() {
        // Captura el mensaje del textarea
        const message = document.getElementById('message').value;

        // Número de teléfono (reemplaza con el tuyo)
        const phoneNumber = "59160902299"; // Código de país + número

        // Codifica el mensaje para que sea válido en una URL
        const encodedMessage = encodeURIComponent(message);

        // Crea el enlace de WhatsApp
        const whatsappLink = `https://wa.me/${phoneNumber}?text=${encodedMessage}`;

        // Abre el enlace en una nueva pestaña
        window.open(whatsappLink, '_blank');
    }
    </script>
</body>
</html>