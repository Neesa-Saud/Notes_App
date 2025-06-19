# Notes_App
Note app using Flutter provider and named router
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