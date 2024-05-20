import SwiftUI
import Guide

struct ContentView: View {
    //#-learning-code-snippet(usingCreatureZoo)
    
    @EnvironmentObject var data : CreatureZoo
    
    var body: some View {
        SPCAssessableGroup(view: self) {
            List {
                Text("ContentView")
                
                Section("Dance") {
                    //#-learning-code-snippet(addNavLinkCreatureDance)
                    NavigationLink("Make the Creatures Dance"){
                        DancingCreatures()
                            .navigationTitle("Dancing Creatures")
                    }
                    
                    
                }

                
                ForEach(data.creatures){creature in
                    NavigationLink{
                        CreatureDetail(creature: creature)
                            .navigationTitle(creature.name)
                    } label:{
                        CreatureRow(creature: creature)
                    }   
                }
                .onDelete{ indexSet in
                    data.creatures.remove(atOffsets: indexSet)
                }
                
                //#-learning-code-snippet(createAList)
                //#-learning-code-snippet(deleteACreature)
                                
            }.toolbar { 
                ToolbarItem { 
                    NavigationLink("Add") { 
                        CreatureEditor()
                            .navigationTitle("Add Creature")
                    }
                }
            }
            //#-learning-code-snippet(addToolBarContentView)
        }
    }
}

