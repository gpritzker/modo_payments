ModoPayments
ModoPayments es una gema Ruby diseñada para facilitar la interacción con la API de Modo Payments, permitiendo realizar operaciones esenciales como la generación de tokens y la creación de intenciones de pago.

Instalación
Para instalar ModoPayments, añade la siguiente línea a tu archivo Gemfile:

gem 'modo_payments', git: 'https://github.com/gpritzker/modo_payments.git'

Posteriormente, ejecuta el siguiente comando para instalar la gema:

$ bundle install

Configuración
Antes de utilizar ModoPayments, es necesario configurar tus credenciales de acceso:

Crea un inicializador en config/initializers/modo_payments.rb:

ModoPayments.configure do |config|
  config.client_id = "YOUR_CLIENT_ID"
  config.client_secret = "YOUR_CLIENT_SECRET"
end


¡Claro! A continuación, te presento el README.md con todo el contenido y el formato Markdown apropiado:

ModoPayments
ModoPayments es una gema Ruby diseñada para facilitar la interacción con la API de Modo Payments, permitiendo realizar operaciones esenciales como la generación de tokens y la creación de intenciones de pago.

Instalación
Para instalar ModoPayments, añade la siguiente línea a tu archivo Gemfile:

ruby
Copy code
gem 'modo_payments', git: 'https://github.com/gpritzker/modo_payments.git'
Posteriormente, ejecuta el siguiente comando para instalar la gema:

bash
Copy code
$ bundle install
Configuración
Antes de utilizar ModoPayments, es necesario configurar tus credenciales de acceso:

Crea un inicializador en config/initializers/modo_payments.rb:

ruby
Copy code
ModoPayments.configure do |config|
  config.client_id = "YOUR_CLIENT_ID"
  config.client_secret = "YOUR_CLIENT_SECRET"
end

No olvides reemplazar "YOUR_CLIENT_ID" y "YOUR_CLIENT_SECRET" con tus credenciales reales.


## Uso
Generar Token de Acceso
Para obtener un token de acceso:
´´´
token = ModoPayments.generate_access_token
´´´

Crear Intención de Pago
Para crear una intención de pago:

response = ModoPayments.create_payment_intention(
  product_name: 'Nombre del producto',
  price: 1000,
  currency: 'ARS',
  expiration_date: '2021-12-31 18:50'
)

## Desarrollo
Después de hacer check-out del repositorio, ejecuta bin/setup para instalar las dependencias. Luego, puedes correr rake test para ejecutar las pruebas unitarias. Si deseas iniciar una sesión interactiva que te permita experimentar, puedes ejecutar bin/console.

## Contribución
Si deseas contribuir al desarrollo de ModoPayments, sigue estos pasos:

## Haz Fork del repositorio.
    Crea tu Feature Branch (git checkout -b feature/AmazingFeature).
    Realiza y commit de tus cambios (git commit -m 'Add some AmazingFeature').
    Hacer Push a la Branch (git push origin feature/AmazingFeature).
    Abre un Pull Request.
## Licencia
ModoPayments está disponible como software de código abierto bajo los términos de la Licencia MIT.
