import SwiftUI
import Guide

struct CreatureEditor: View {
    @State var newCreature: Creature = Creature(name: "", emoji: "")
    @EnvironmentObject var data: CreatureZoo
    @Environment(\.dismiss) private var dismiss
    //#-learning-code-snippet(defineVariablesCreatureEditor)
    //#-learning-code-snippet(environmentValue)
    
    var body: some View {
        SPCAssessableGroup(view: self) {
            VStack(alignment: .leading) {
                //#-learning-code-snippet(defineYourView)
                Form{
                    Section("Name"){
                        TextField(text: $newCreature.name, label:{
                            Text("name")
                        })
                    }
                    Section("Emoji"){
                        TextField("emoji", text: $newCreature.emoji)
                    }
                    Section("Creature Preview"){
                        CreatureRow(creature: newCreature)
                    }
                }
            }.toolbar{
                ToolbarItem{
                    Button("Add"){
                        data.creatures.append(newCreature)
                        dismiss()
                    }
                }
            }
            //#-learning-code-snippet(addButtonToToolbar)
        }
    }
}

struct CreatureEditor_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack() {
            CreatureEditor().environmentObject(CreatureZoo())
        }
    }
}

