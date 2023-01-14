Surgiu uma demanda para construir a arquitetura de um sistema para locação de veículos.
Esta demanda é para um projeto grande onde terá várias pessoas no time de desenvolvimento.
Você como líder do projeto ficou responsável por criar esta arquitetura.

- - -

### Algumas funções deste sistema incluem:

#### Envio de email
#### Envio de SMS
#### Uso de gateway de pagamento
#### Envio de comprovante em PDF

- - -

- app
  - controllers
  - mailers
    - send_receipt_mailer.rb
  - jobs
    - create_pay_slip_job.rb
    - notify_by_sms_job.rb
  - models
    - vehicle
      - lease.rb
      - inspection.rb
      - insurance.rb
    - customer.rb
    - invoice.rb
    - payment.rb
    - rent.rb
    - service_station.rb
    - user.rb
    - vehicle.rb
    - vehicle_stock.rb
  - validators
  - views
- lib
  - pay_slip
    - pay_slip_client.rb 
  - payment_gateway
    - provider # TODO: waiting definition
      - provider_client.rb
      - provider.rb
    - payment_gateway_abstract.rb
  - sms
    - twilio
      - twilio_client.rb
      - twilio.rb
    - sms_abstract.rb
  - sms.rb
  - payment_gateway.rb
- config
  - sidekiq.rb
- Dockerfile
- docker-compose.yml
- .gitignore

Obs: não precisa ter implementação de código, a avaliação será feita somente na estrutura de arquivos e organização do projeto
