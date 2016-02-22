
//: Tarea de Semana 4


import UIKit


enum Velocidades:Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial:Velocidades){
        self = velocidadInicial
    }
}


class Auto {
    var velocidad:Velocidades
    
    init(){
        
        
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad()->(actual:Int, velocidadEnCadena:String)
        
    {
        var resultado = (actual:self.velocidad.rawValue,velocidadEnCadena:"")
        switch self.velocidad.rawValue
            
        {
        case Velocidades.Apagado.rawValue:
            self.velocidad = Velocidades.VelocidadBaja;
            
            resultado.velocidadEnCadena = "Apagado"
        case Velocidades.VelocidadBaja.rawValue:
            
            self.velocidad = Velocidades.VelocidadMedia
            resultado.velocidadEnCadena = "Velocidad Baja"
            
        case Velocidades.VelocidadMedia.rawValue:
            self.velocidad = Velocidades.VelocidadAlta
            
            resultado.velocidadEnCadena = "Velocidad Media"
        case Velocidades.VelocidadAlta.rawValue:
            
            self.velocidad = Velocidades.VelocidadMedia
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
