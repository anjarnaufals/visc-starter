# APP ARCHITECTURE

usually online application is managing data, either get post update or delete data from remote source.

this template is implementing simple architecture.

for example you have to implementing feature for Manage Product, usually the case is view list product, create, update or delete product, event share product.

this architecture provide step by step to add new feature

1. **Entity**

    My understanding about entity is something that we should take care. for example I mention before, Product is entity.

    * create entity

      how about naming convention related entity, my opinion is just name it with simple, if before i have something
      that we have to control is called Product that mean "product" be name of entity.


2. **USE CASE**

    My understanding about use case is something we can do related entity. In other words I call it "Bussiness Rule" related to that entity. But I limit this layer to become just Abstraction.

    * create USE CASE ak Bussines Rules

      the example before i have entity "product", for simplicity I named it "ProductBR", and the purpose is just abstraction rules related, so we can easy observing every main feature that related to the entity.


3. **Repository**

    My understanding about repository is "a central layer in which data is stored and manage".

    The repository responsible as Implementator every logical process bussiness rule.

    * create repository

      the example before i have use case "ProductBR", then I will create 

      "Class ProductRepository Implement ProductBR ". inside this class is implementing whatever

      things to do for the entity.

      example : 

      get data from remote source, parse it to model entity then serve it for states in UI through state management.  

4. **State Management**

    Why I choose Bloc Architecture ?

    the main reason is Bloc separated things into 3 layer, there is "state", "bloc" or "cubit", "event".

    for Simply application I prefer use Cubit so doesn't need use "event".

    but if the application feature getting more complex I prefer use "bloc".

    this separated idea is make development easy to observing. I can control separated which variable are become 
    related entitiy state, which are for UI states, etc.

5. **external**

    Maybe you noticed there is folder named "external", I provide this folder puposed to isolate implementation related package used, 

    for example I need to create feature face detector use "google ml kit", then I create implementation about that feature and save isolated on that folder.

    so whereas that bussiness rule that need face detector as a factor to complete the feature, that feature just 
    need call directly.

    I analogize this things as a tool to complete feature done.


6. **infras**

    There is folder called infras , all functionality related REQUEST REST API and LOCAL STORAGE NO SQL is handled inside it. 

    you can read the implementation inside folder lib/data/remote/your_app_client.dart



