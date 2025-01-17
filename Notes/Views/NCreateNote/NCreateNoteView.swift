//
//  NCreateNoteView.swift
//  Notes
//
//  Created by Gino Alejandro on 16/01/25.
//

import SwiftUI

struct NCreateNoteView: View {
    
    @StateObject var viewModel: NCNCreateNoteViewModel = NCNCreateNoteViewModel()
    
    var onNoteCreated: ((NCard) -> Void)?
    
    func onTap(){
        let card = viewModel.createNote()
        onNoteCreated?(card)
    }
    
    var body: some View {
        ScrollView{
            VStack{
                Text("Crear Nueva Nota ")
                    .bold()
                    .font(.largeTitle)
                    .padding(.bottom, 10)
                
                NTextField(placeholder: "Título", text: $viewModel.title)
                
                TextEditor(text: $viewModel.text)
                    .scrollContentBackground(.hidden)
                    .frame(height: 150)
                    .font(.body)
                    .padding()
                    .background(
                        Color.gray
                            .opacity(0.1)
                    )
                    .cornerRadius(8)
                
                HStack{
                    Text("Tamaño")
                    Spacer()
                    Picker("Tamaños", selection: $viewModel.size) {
                        Text("Pequeño").tag(NCardType.small)
                        Text("Mediano").tag(NCardType.medium)
                    }
                }
                .padding()
                Toggle("Marca como favorito", isOn: $viewModel.isFavorite)
                    .padding()
                
                Button{
                    onTap()
                } label: {
                    Text("Guardar Nota ")
                        .font(.headline)
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding(.top, 20)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .padding()
        .background(Color.cyan.opacity(0.2))
    }
}

#Preview {
    NCreateNoteView()
}
