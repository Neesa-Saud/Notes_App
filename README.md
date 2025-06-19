# Notes_App
Note app using Flutter provider and named router
https://notes-app-5ugs.vercel.app/
 <p>
 Here 
 use
 Map<.......> routes ={
    ....
    ....
 }
 other wise 
 Map<....> getRoutes(){
    ...
    ....
 }

 getRoutes is suitable for the conditional approach 

<p>
<h1>In main.dart</h1>
✅ routes: OurRoutes.getRoutes() registers all named routes.
✅ Without it → Navigator.pushNamed has no mapping → you get an error.

 </p>

 <pre>
  For  using provider 
  use
  Consumer<name of your provider class>(builder:(context,model,child)=> Scaffold{
    ...
    ...
    ...
    ...
  })


  model can be of any name according to user
 </pre>
