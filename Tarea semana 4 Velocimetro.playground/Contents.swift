
//: Tarea de Semana 4


import UIKit


enum Velocidad:Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial:Velocidad){
        self = velocidadInicial
    }
}


class Auto {
    var velocidad:Velocidad
    
    init(){
        
        
        velocidad = Velocidad(velocidadInicial: Velocidad.Apagado)
    }
    
    func cambioDeVelocidad()->(actual:Int, velocidadEnCadena:String)
        
    {
        var resultado = (actual:self.velocidad.rawValue,velocidadEnCadena:"")
        switch self.velocidad.rawValue
            
        {
        case Velocidad.Apagado.rawValue:
            self.velocidad = Velocidad.VelocidadBaja;
            
            resultado.velocidadEnCadena = "Apagado"
        case Velocidad.VelocidadBaja.rawValue:
            
            self.velocidad = Velocidad.VelocidadMedia
            resultado.velocidadEnCadena = "Velocidad Baja"
            
        case Velocidad.VelocidadMedia.rawValue:
            self.velocidad = Velocidad.VelocidadAlta
            
            resultado.velocidadEnCadena = "Velocidad Media"
        case Velocidad.VelocidadAlta.rawValue:
            
            self.velocidad = Velocidad.VelocidadMedia
            resultado.velocidadEnCadena = "Velocidad Alta"
            
        default:
            break;
        }
        
        
        return resultado;
    }
}


var auto = Auto()
for i in 1...20
    
{
    var tupla = auto.cambioDeVelocidad()
    print( "\(i). \(tupla.actual) "+tupla.velocidadEnCadena)

}
