//
//  OnboardingView.swift
//  TrimMate
//
//  Created by Irvan P. Saragi on 04/06/23.
//
//popopo
import SwiftUI

struct OnboardingView: View {
    @Binding var onboardingData : DataModel
    @Binding var ActiveScrenn : Int
    var body: some View {
        VStack {
            GeometryReader{
                geo in
                ZStack{
                        Image(onboardingData.subPicture)
                            .resizable()
                            .scaledToFill()
                            .position(x: geo.size.width/2, y: geo.size.height/2.5)
                        Image(onboardingData.Picture)
                            .resizable()
//                            .scaledToFit()
                            .position(x: geo.size.width/2, y: geo.size.height/2.2)
                            .padding(.trailing, 40)
                }
                
            }
                        VStack{
                ZStack{
                
                    RoundedRectangle(cornerRadius: 13.5)
                        .frame(width: 49, height: 23)
                        .foregroundColor(Color("Third"))
                    Text("\(ActiveScrenn) of \(DataModels.count)")
                        .font(.system(size: 13))
                }
                .frame(maxWidth: .infinity, alignment:.leading)
                .padding(.top, 11)
                
                Text(onboardingData.Title)
                    .fontWeight(.bold)
                    .font(.system(size: 26))
                    .padding(.top, 21)
                    .foregroundColor(Color("Fourth"))
                Text(onboardingData.SubTitle)
                    .fontWeight(.regular)
                    .font(.system(size: 14))
                    .padding(.top, 15)
                    .foregroundColor(Color("Scond"))
                HStack(spacing : 5){
                    ForEach(1..<4){ index in
                    Circle()
                            .frame(width: 5, height: 5)
                            .foregroundColor(Color(ActiveScrenn == index ? "Third" : "Scond"))
                    }
                    Spacer()
                }
                .padding(.leading, 10)
                .padding(.top, 11)
                Button {
                    NextScreen()
                    ActiveScrenn += 1
                } label: {
                    ZStack{
                    
                        RoundedRectangle(cornerRadius: 21)
                            .frame(width: 87, height: 37)
                            .foregroundColor(Color("Third"))
                        Text(onboardingData.isFinished ? "Start" : "Next")
                            .foregroundColor(Color("Scond"))
                    }
                    .frame(maxWidth: .infinity, alignment:.leading)
                    .padding(.top, 30)
                }

            }
            .frame(width: 350)
            .padding(.horizontal, 40)
            
            
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Primary"))
        .overlay(alignment: .topLeading ){
            if onboardingData != DataModels.first{
                Button {
                    NextScreen(isFinished: true)
                    ActiveScrenn -= 1
                
                } label: {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .fontWeight(.bold)
                        .frame(width: 10, height: 20)
                        .foregroundColor(.white)
                }
                .padding(.leading, 40)
            }
            
        }
    }
    func NextScreen (isFinished : Bool = false) {
        if let index = DataModels.firstIndex(of: onboardingData),  ( isFinished ? index != 0 : index != DataModels.count - 1){
            onboardingData = isFinished ? DataModels[index-1] : DataModels[index+1]
        }
        else{
            onboardingData = isFinished ? DataModels[0] :  DataModels[DataModels.count-1]
        }
    }
}



struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
//        OnboardingView(onboardingData: $DataModels[0], ActiveScrenn: $1)
        VievModel()
    }
}
