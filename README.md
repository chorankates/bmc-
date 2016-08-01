# bmcplusplus
BMCs don't have to have terrible APIs

## design

  * `BmcPlusPlus::Client` talks to the Server over HTTP
  * `BmcPlusPlus::Server` talks to the parent node through IPMI

## TODO

  * authN
  * authZ (?) maybe RO vs RW
  * write API route stubs
  * use sequel
    * storing users/passwords (? or do we delegate to the OS?)
    * log events

  * figure out how to provide console
    * add a logging facility to this -- so by default we know what is currently being displayed on the screen