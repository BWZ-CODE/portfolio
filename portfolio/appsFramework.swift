//
//  appsFramework.swift
//  portfolio
//
//  Created by Miguel Angel Bohorquez on 6/10/25.
//

import Foundation

struct Framework : Identifiable, Hashable {
    let id : UUID = UUID()
    let name : String
    let imageName : String
    let imageDemostrationName : String
    let urlString : String
    let description : String
}

struct MockApps {
    
    static let apps = [
        Framework(name: "Barcode Scanner", imageName: "head", imageDemostrationName: "head", urlString: "https://github.com/BWZ-CODE/BarCodeScanner", description: "Esta app integra acceso a camara, permite leer codigos de barras"),
        Framework(name: "MVVM-Framework", imageName: "head", imageDemostrationName: "head", urlString: "head", description: "Esta app integra la estructura MVVM y una vista a lo que se puede hacer con grid, muy util e ilustrativo a nivel visual, tambien incluye una pequeña animacion en su icono x para mostrar que se ha eliminado"),
        Framework(name: "Conversor", imageName: "head",imageDemostrationName: "head", urlString: "head", description: "Esta app es muy especial, pues incluye una api que muestra en tiempo real el valor de la moneda a convertir, todos los text fields se pueden editar y se muestra en tiempo real el valor de la moneda en el campo de destino"),
        Framework(name: "Adivina la bandera", imageName: "head",imageDemostrationName: "head", urlString: "head", description: "Esta app consiste en adivinar a que país pertenece una bandera, integra .shuffle el cual nos permite usar la aleatoriedad en nuestro caso para desordenar los elementos"),
        Framework(name: "Split us", imageName: "head",imageDemostrationName: "head", urlString: "head", description: "Esta app es muy util, diseñada para cuando salgas con tus amigos y quieras dividir la cuenta entre todos, incluyendo un campo para la propina")
        
        
    ]
}
