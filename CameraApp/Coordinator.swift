//
//  Coordinator.swift
//  CameraApp
//
//  Created by 本間光 on 2021/10/07.
//

import SwiftUI

class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var parent:ImagePicker
    
    init(_ parent:ImagePicker) {
        self.parent = parent
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let uiImage = info[.originalImage] as! UIImage
        UIImageWriteToSavedPhotosAlbum(uiImage, nil, nil, nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    }
}