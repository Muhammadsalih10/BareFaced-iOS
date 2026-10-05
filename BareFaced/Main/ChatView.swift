//
//  ChatView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 03/05/2022.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    @State var messages: [String] = ["Welcome to BareFaced Clinic"]
    
    var body: some View {
        VStack{
            HStack {
                Text("BareFaced")
                    .font(.largeTitle)
                    .bold()
                
                Image(systemName: "bubble.left.fill")
                    .font(.system(size: 26))
                    .foregroundColor(Color.blue)
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(messages, id: \.self) { message in
                    if message.contains("[USER]") {
                        let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                        HStack {
                            Spacer()
                            Text(newMessage)
                                .padding()
                                .foregroundColor(.white)
                                .background(.blue.opacity(0.8))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                        }
                    } else {
                        HStack {
                            Text(message)
                                .padding()
                                .background(.gray.opacity(0.15))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                            Spacer()
                        }
                        
                    }
                }.rotationEffect(.degrees(180))
            }//: SCROLL
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(MotionAnimationView())
            .rotationEffect(.degrees(180))
                .background(Color.gray.opacity(0.10))
            
            HStack {
                TextField("Type something", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .onSubmit {
                     sendMessage(message: messageText)
                        
                    }
                
                Button {
                   sendMessage(message: messageText)
                } label: {
                    Image(systemName: "paperplane.fill")
                }
                .font(.system(size: 26))
                .padding(.horizontal, 10)
            }
            .padding()
        }
    }
    
    func sendMessage(message: String) {
        withAnimation {
            messages.append("[USER]" + message)
            self.messageText = ""
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            withAnimation {
                messages.append(getBareFacedResponse(message: message))
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
