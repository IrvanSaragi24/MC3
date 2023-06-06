//
//  DataModel.swift
//  TrimMate
//
//  Created by Irvan P. Saragi on 04/06/23.
//

import SwiftUI

struct DataModel : Identifiable, Hashable {
    var id: UUID = .init()
    var Picture : String
    var subPicture : String
    var Title : String
    var SubTitle : String
    var isFinished : Bool = false

}
var DataModels : [DataModel] = [

    .init(Picture: "PicOnboard1", subPicture: "RecOnboard1", Title:"Welcome to TrimMate, your partner for choosing haircut styles.", SubTitle:"There will be a face shape matching process, make sure your face is aligned with the available outline."),
    .init(Picture: "PicOnboard2", subPicture: "RecOnboard2", Title: "Choose the best hairstyle based on your face shape", SubTitle: "There will be a list of recommended models that you can choose according to the shape of your face."),
    .init(Picture: "PicOnboard3", subPicture: "RecOnboard3", Title: "Start displaying hairstyles with Augmented Reality", SubTitle: "TVisualize existing hairstyles in the real world with augmented reality technology!.", isFinished: true)
    
]
