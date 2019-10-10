
INSERT INTO regiones (id, nombre) VALUES (1, 'Sudamérica')
INSERT INTO regiones (id, nombre) VALUES (2, 'Centroamérica')
INSERT INTO regiones (id, nombre) VALUES (3, 'Norteamérica')
INSERT INTO regiones (id, nombre) VALUES (4, 'Europa')
INSERT INTO regiones (id, nombre) VALUES (5, 'Asia')
INSERT INTO regiones (id, nombre) VALUES (6, 'Oceanía')
INSERT INTO regiones (id, nombre) VALUES (7, 'Africa')
INSERT INTO regiones (id, nombre) VALUES (8, 'Antartica')

INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (1, 'Andres', 'Guzman', 'profesor@bolsadeideas.com', '2018-01-01')
INSERT INTO clientes (region_id, nombre, apellido, email, create_at, foto) VALUES (2, 'Dario', 'Zubaray', 'dzubary@mail.com', '2019-01-16', '9218a8de-59b7-4d72-a36b-f3ca551ba5f4Penguins.jpg')
INSERT INTO clientes (region_id, nombre, apellido, email, create_at, foto) VALUES (2, 'Julieta', 'Zubaray', 'jzubaray@mail.com', '2019-10-28', 'ece4569c-ffaf-4229-a0a6-bb006e4cda60Tulips.jpg')
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (3, 'Agustin', 'Zubaray', 'azubaray@mail.com', '2019-07-18')
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (4, 'Benjamin', 'Zubaray', 'bzubaray@mail.com', '2019-09-07')
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (4, 'Lola', 'Rosa Zubaray', 'lrosa@mail.com', '2019-04-10')

INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (5, 'Erich', 'Gamma', 'egamma@mail.com', '2019-04-10')
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (8, 'John', 'Vlissides', 'jvlissides@mail.com', '2019-04-10')
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (7, 'Richard', 'Helm', 'rhelm@mail.com', '2019-04-10')
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (3, 'Ralph', 'Johnson', 'rjohnson@mail.com', '2019-04-10')
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (3, 'Joshua', 'Bloch', 'jbloch@mail.com', '2019-04-10')
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (4, 'Robert C', 'Martin', 'rmartin@mail.com', '2019-04-10')
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (1, 'Craig', 'Walls', 'rwalls@mail.com', '2019-04-10')

INSERT INTO usuarios (username, password, enabled, nombre, apellido, email) VALUES ('dario', '$2a$10$N05.w4rbGY1EMC5N21IuruS7PeVz54vCF/b5kqRBPRVsa9Ey1D0o2', 1, 'Dario', 'Zubaray', 'dzubary@mail.com')
INSERT INTO usuarios (username, password, enabled, nombre, apellido, email) VALUES ('admin', '$2a$10$vF5QIpdbCvtl/h5mBYyjB.aQV0jXgh1k5YBlM1eJ0WFOZ5YaE80lC', 1, 'Julieta', 'Zubaray', 'jzubaray@mail.com')
INSERT INTO usuarios (username, password, enabled, nombre, apellido, email) VALUES ('usuario', '$2a$10$Y3iuApVlx/xUWyPrljIqy.Tk8t4a.XZCzmdH4r9ICJMvteMZ2kq5q', 1, 'Agustin', 'Zubaray', 'azubaray@mail.com')
INSERT INTO usuarios (username, password, enabled, nombre, apellido, email) VALUES ('invitado', '$2a$10$tYTCR67.D4eKG1aeojw8huht9R/1RaplaDdqFFxt8/lFnsF97uIU2', 1, 'Benjamin', 'Zubaray', 'bzubaray@mail.com')

INSERT INTO role (name) VALUES ('ROLE_USER')
INSERT INTO role (name) VALUES ('ROLE_ADMIN')

INSERT INTO user_authorities (user_id, role_id) VALUES (1, 1)
INSERT INTO user_authorities (user_id, role_id) VALUES (1, 2)
INSERT INTO user_authorities (user_id, role_id) VALUES (2, 1)
INSERT INTO user_authorities (user_id, role_id) VALUES (2, 2)
INSERT INTO user_authorities (user_id, role_id) VALUES (3, 1)
INSERT INTO user_authorities (user_id, role_id) VALUES (4, 1)

INSERT INTO productos (nombre, precio, create_at) VALUES ('Mini Teclado Inalambrico Tv Box Touchpad Smart Tv Iluminado', 850.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Joystick Ps4 Sony Inalambrico Original Dualshock 4 camuflado', 5199.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Traje Lluvia Moto Hevik Talle 3xl Negro Gris Alta Calidad', 2702.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Braun Bt3020 Recortadora De Barba 1 A 10mm 20 Posiciones', 1994.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Mochila Antirrobo Inteligente Impermeable Con Usb', 1599.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Disco De Estado Solido Ssd Kingston 480gb A400 2,5 Sata 3', 4499.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Auricular Kolke Gamer V1 Headset Gamer Pc C/micrófono Gaming', 875.55, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Huawei P20 lite Dual SIM 32 GB Azul Klein', 22900.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Par De Almohadas Piero Moonlight 70x50 Fibra De Poliéster', 960.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Pedal De Sustain Midiplus Sp2 Para Teclado Korg Casio Yamaha', 558.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Cargador Usb Multiple Kolke Zapatilla 4 Usb 220v 3a Celular', 230.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Aspiradora Mano Inalambrica Black & Decker 7202 Polvo Y Agua', 2799.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Edifier M1360 Parlantes 2.1 Mute Pc Tv Control Volumen', 3590.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Casco Moto Rebatible Zeus Gj3000 Azul Cuotas Devotobikes', 5717.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Licuadora Shake N Take Deportiva 2 Vasos Portatil Botella', 1795.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Olla Arrocera Oster 2,2 Lt Sofrito Tapa De Vidrio Sushi Gtia Of', 2499.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Caloventor Estufa Calefactor Electrico Winco W116 Termostato', 1099.0, NOW())
INSERT INTO productos (nombre, precio, create_at) VALUES ('Manta Termica De Cama 2 Plazas 3 Temperaturas Silfab Mtd200', 5376.0, NOW())

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Factura de pendientes', null, 1, NOW())
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 1)
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (2, 1, 3)
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 4)
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 6)

