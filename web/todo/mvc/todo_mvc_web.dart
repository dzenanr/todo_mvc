 
// web/todo/mvc/todo_mvc_web.dart 
 
import "dart:html"; 
 
import "package:dartling_default_app/dartling_default_app.dart"; 
import "package:todo_mvc/todo_mvc.dart"; 
 
initData(Repository repository) { 
   var todoDomain = repository.getDomainModels("Todo"); 
   var mvcModel = todoDomain.getModelEntries("Mvc"); 
   mvcModel.init(); 
   //mvcModel.display(); 
} 
 
showData(Repository repository) { 
   var mainView = new View(document, "main"); 
   mainView.repo = repository; 
   new RepoMainSection(mainView); 
} 
 
void main() { 
  var repository = new Repository(); 
  initData(repository); 
  showData(repository); 
} 
 
